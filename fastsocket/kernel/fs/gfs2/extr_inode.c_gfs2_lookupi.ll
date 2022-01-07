; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_lookupi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_lookupi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.qstr = type { i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@GFS2_FNAMESIZE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@LM_ST_SHARED = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @gfs2_lookupi(%struct.inode* %0, %struct.qstr* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %9, align 8
  store i32 0, i32* %11, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.qstr*, %struct.qstr** %6, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.qstr*, %struct.qstr** %6, align 8
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFS2_FNAMESIZE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %3
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.inode* @ERR_PTR(i32 %31)
  store %struct.inode* %32, %struct.inode** %4, align 8
  br label %128

33:                                               ; preds = %23
  %34 = load %struct.qstr*, %struct.qstr** %6, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.qstr*, %struct.qstr** %6, align 8
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @memcmp(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.qstr*, %struct.qstr** %6, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.qstr*, %struct.qstr** %6, align 8
  %51 = getelementptr inbounds %struct.qstr, %struct.qstr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @memcmp(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.super_block*, %struct.super_block** %8, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.inode*, %struct.inode** %60, align 8
  %62 = icmp eq %struct.inode* %56, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55, %38
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call i32 @igrab(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %66, %struct.inode** %4, align 8
  br label %128

67:                                               ; preds = %55, %49, %44
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %69 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @gfs2_glock_is_locked_by_me(i32 %70)
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %75 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @LM_ST_SHARED, align 4
  %78 = call i32 @gfs2_glock_nq_init(i32 %76, i32 %77, i32 0, %struct.gfs2_holder* %10)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* %11, align 4
  %83 = call %struct.inode* @ERR_PTR(i32 %82)
  store %struct.inode* %83, %struct.inode** %4, align 8
  br label %128

84:                                               ; preds = %73
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = load i32, i32* @MAY_EXEC, align 4
  %91 = call i32 @gfs2_permission(%struct.inode* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %107

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %85
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = load %struct.qstr*, %struct.qstr** %6, align 8
  %99 = call %struct.inode* @gfs2_dir_search(%struct.inode* %97, %struct.qstr* %98)
  store %struct.inode* %99, %struct.inode** %12, align 8
  %100 = load %struct.inode*, %struct.inode** %12, align 8
  %101 = call i64 @IS_ERR(%struct.inode* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.inode*, %struct.inode** %12, align 8
  %105 = call i32 @PTR_ERR(%struct.inode* %104)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %96
  br label %107

107:                                              ; preds = %106, %94
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %128

118:                                              ; preds = %112
  %119 = load %struct.inode*, %struct.inode** %12, align 8
  %120 = icmp ne %struct.inode* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load %struct.inode*, %struct.inode** %12, align 8
  br label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  %125 = call %struct.inode* @ERR_PTR(i32 %124)
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi %struct.inode* [ %122, %121 ], [ %125, %123 ]
  store %struct.inode* %127, %struct.inode** %4, align 8
  br label %128

128:                                              ; preds = %126, %117, %81, %63, %29
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %129
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32* @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_permission(%struct.inode*, i32) #1

declare dso_local %struct.inode* @gfs2_dir_search(%struct.inode*, %struct.qstr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
