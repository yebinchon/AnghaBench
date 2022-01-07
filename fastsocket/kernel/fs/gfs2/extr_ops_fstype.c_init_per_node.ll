; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_per_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_per_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.inode*, %struct.inode*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.gfs2_inode = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"per_node\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"can't find per_node directory: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"statfs_change%u\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"can't find local \22sc\22 file: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"quota_change%u\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"can't find local \22qc\22 file: %d\0A\00", align 1
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"can't lock local \22sc\22 file: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"can't lock local \22qc\22 file: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_per_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_per_node(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca [30 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.inode* null, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %159

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %133

26:                                               ; preds = %22
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i8* @gfs2_lookup_simple(%struct.inode* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = bitcast i8* %28 to %struct.inode*
  store %struct.inode* %29, %struct.inode** %6, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call i64 @IS_ERR(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.inode* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @fs_err(%struct.gfs2_sbd* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %159

40:                                               ; preds = %26
  %41 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %50 = call i8* @gfs2_lookup_simple(%struct.inode* %48, i8* %49)
  %51 = bitcast i8* %50 to %struct.inode*
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 0
  store %struct.inode* %51, %struct.inode** %53, align 8
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %55 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %54, i32 0, i32 0
  %56 = load %struct.inode*, %struct.inode** %55, align 8
  %57 = call i64 @IS_ERR(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %40
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %61 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %60, i32 0, i32 0
  %62 = load %struct.inode*, %struct.inode** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.inode* %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @fs_err(%struct.gfs2_sbd* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %151

67:                                               ; preds = %40
  %68 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %77 = call i8* @gfs2_lookup_simple(%struct.inode* %75, i8* %76)
  %78 = bitcast i8* %77 to %struct.inode*
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %80 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %79, i32 0, i32 1
  store %struct.inode* %78, %struct.inode** %80, align 8
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %82 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %81, i32 0, i32 1
  %83 = load %struct.inode*, %struct.inode** %82, align 8
  %84 = call i64 @IS_ERR(%struct.inode* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %67
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %88 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %87, i32 0, i32 1
  %89 = load %struct.inode*, %struct.inode** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.inode* %89)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @fs_err(%struct.gfs2_sbd* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %146

94:                                               ; preds = %67
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = call i32 @iput(%struct.inode* %95)
  store %struct.inode* null, %struct.inode** %6, align 8
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %98 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %97, i32 0, i32 0
  %99 = load %struct.inode*, %struct.inode** %98, align 8
  %100 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %99)
  store %struct.gfs2_inode* %100, %struct.gfs2_inode** %9, align 8
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %102 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %105 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %106 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %105, i32 0, i32 2
  %107 = call i32 @gfs2_glock_nq_init(i32 %103, i32 %104, i32 0, i32* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %94
  %111 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @fs_err(%struct.gfs2_sbd* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  br label %141

114:                                              ; preds = %94
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %116 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %115, i32 0, i32 1
  %117 = load %struct.inode*, %struct.inode** %116, align 8
  %118 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %117)
  store %struct.gfs2_inode* %118, %struct.gfs2_inode** %9, align 8
  %119 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %120 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %123 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %124 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %123, i32 0, i32 3
  %125 = call i32 @gfs2_glock_nq_init(i32 %121, i32 %122, i32 0, i32* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %114
  %129 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @fs_err(%struct.gfs2_sbd* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  br label %137

132:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %159

133:                                              ; preds = %25
  %134 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %135 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %134, i32 0, i32 3
  %136 = call i32 @gfs2_glock_dq_uninit(i32* %135)
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %139 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %138, i32 0, i32 2
  %140 = call i32 @gfs2_glock_dq_uninit(i32* %139)
  br label %141

141:                                              ; preds = %137, %110
  %142 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %143 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %142, i32 0, i32 1
  %144 = load %struct.inode*, %struct.inode** %143, align 8
  %145 = call i32 @iput(%struct.inode* %144)
  br label %146

146:                                              ; preds = %141, %86
  %147 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %148 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %147, i32 0, i32 0
  %149 = load %struct.inode*, %struct.inode** %148, align 8
  %150 = call i32 @iput(%struct.inode* %149)
  br label %151

151:                                              ; preds = %146, %59
  %152 = load %struct.inode*, %struct.inode** %6, align 8
  %153 = icmp ne %struct.inode* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.inode*, %struct.inode** %6, align 8
  %156 = call i32 @iput(%struct.inode* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %132, %33, %21
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i8* @gfs2_lookup_simple(%struct.inode*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
