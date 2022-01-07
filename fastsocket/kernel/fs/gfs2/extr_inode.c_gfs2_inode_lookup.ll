; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_inode_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_inode_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.super_block = type { i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock*, %struct.TYPE_5__, i32, i32 }
%struct.gfs2_glock = type { %struct.gfs2_inode* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.gfs2_inode* }
%struct.gfs2_sbd = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@gfs2_inode_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@gfs2_iopen_glops = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @gfs2_inode_lookup(%struct.super_block* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.gfs2_inode*, align 8
  %14 = alloca %struct.gfs2_glock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gfs2_sbd*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.gfs2_glock* null, %struct.gfs2_glock** %14, align 8
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.inode* @gfs2_iget(%struct.super_block* %17, i32 %18, i32 %19)
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %21)
  store %struct.gfs2_inode* %22, %struct.gfs2_inode** %13, align 8
  %23 = load %struct.inode*, %struct.inode** %12, align 8
  %24 = icmp ne %struct.inode* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOBUFS, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.inode* @ERR_PTR(i32 %27)
  store %struct.inode* %28, %struct.inode** %6, align 8
  br label %149

29:                                               ; preds = %5
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I_NEW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %111

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %12, align 8
  %38 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %37)
  store %struct.gfs2_sbd* %38, %struct.gfs2_sbd** %16, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %41 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @CREATE, align 4
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %46 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %45, i32 0, i32 0
  %47 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %42, i32 %43, i32* @gfs2_inode_glops, i32 %44, %struct.gfs2_glock** %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %144

52:                                               ; preds = %36
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 0
  %56 = load %struct.gfs2_glock*, %struct.gfs2_glock** %55, align 8
  %57 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %56, i32 0, i32 0
  store %struct.gfs2_inode* %53, %struct.gfs2_inode** %57, align 8
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CREATE, align 4
  %61 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %58, i32 %59, i32* @gfs2_iopen_glops, i32 %60, %struct.gfs2_glock** %14)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %135

66:                                               ; preds = %52
  %67 = load i32, i32* @GIF_INVALID, align 4
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %69 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %68, i32 0, i32 2
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  %71 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %72 = load i32, i32* @LM_ST_SHARED, align 4
  %73 = load i32, i32* @GL_EXACT, align 4
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %75 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %74, i32 0, i32 1
  %76 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %71, i32 %72, i32 %73, %struct.TYPE_5__* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %128

81:                                               ; preds = %66
  %82 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %84 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store %struct.gfs2_inode* %82, %struct.gfs2_inode** %87, align 8
  %88 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %89 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %88)
  store %struct.gfs2_glock* null, %struct.gfs2_glock** %14, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @DT_UNKNOWN, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load %struct.inode*, %struct.inode** %12, align 8
  %95 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %94)
  %96 = call i32 @gfs2_inode_refresh(%struct.gfs2_inode* %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %113

100:                                              ; preds = %93
  br label %106

101:                                              ; preds = %81
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @DT2IF(i32 %102)
  %104 = load %struct.inode*, %struct.inode** %12, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %100
  %107 = load %struct.inode*, %struct.inode** %12, align 8
  %108 = call i32 @gfs2_set_iop(%struct.inode* %107)
  %109 = load %struct.inode*, %struct.inode** %12, align 8
  %110 = call i32 @unlock_new_inode(%struct.inode* %109)
  br label %111

111:                                              ; preds = %106, %29
  %112 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %112, %struct.inode** %6, align 8
  br label %149

113:                                              ; preds = %99
  %114 = load i32, i32* @GL_NOCACHE, align 4
  %115 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %116 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 8
  %120 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %121 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store %struct.gfs2_inode* null, %struct.gfs2_inode** %124, align 8
  %125 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %126 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %125, i32 0, i32 1
  %127 = call i32 @gfs2_glock_dq_uninit(%struct.TYPE_5__* %126)
  br label %128

128:                                              ; preds = %113, %80
  %129 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %130 = icmp ne %struct.gfs2_glock* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %133 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %65
  %136 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %137 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %136, i32 0, i32 0
  %138 = load %struct.gfs2_glock*, %struct.gfs2_glock** %137, align 8
  %139 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %138, i32 0, i32 0
  store %struct.gfs2_inode* null, %struct.gfs2_inode** %139, align 8
  %140 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %141 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %140, i32 0, i32 0
  %142 = load %struct.gfs2_glock*, %struct.gfs2_glock** %141, align 8
  %143 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %142)
  br label %144

144:                                              ; preds = %135, %51
  %145 = load %struct.inode*, %struct.inode** %12, align 8
  %146 = call i32 @iget_failed(%struct.inode* %145)
  %147 = load i32, i32* %15, align 4
  %148 = call %struct.inode* @ERR_PTR(i32 %147)
  store %struct.inode* %148, %struct.inode** %6, align 8
  br label %149

149:                                              ; preds = %144, %111, %25
  %150 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %150
}

declare dso_local %struct.inode* @gfs2_iget(%struct.super_block*, i32, i32) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i32, i32*, i32, %struct.gfs2_glock**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.gfs2_glock*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_inode_refresh(%struct.gfs2_inode*) #1

declare dso_local i32 @DT2IF(i32) #1

declare dso_local i32 @gfs2_set_iop(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.TYPE_5__*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
