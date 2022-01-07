; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_try_rgrp_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_try_rgrp_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_glock = type { i32, %struct.gfs2_inode* }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_rbm = type { i32, i32, %struct.gfs2_rgrpd* }

@GFS2_BLKST_UNLINKED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@NO_BLOCK = common dso_local global i64 0, align 8
@gfs2_inode_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@gfs2_delete_workqueue = common dso_local global i32 0, align 4
@NR_CPUS = common dso_local global i32 0, align 4
@GFS2_RDF_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rgrpd*, i64*, i64)* @try_rgrp_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_rgrp_unlink(%struct.gfs2_rgrpd* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.gfs2_rgrpd*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_glock*, align 8
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gfs2_rbm, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %15 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %14, i32 0, i32 2
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 1
  %19 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 2
  %23 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  store %struct.gfs2_rgrpd* %23, %struct.gfs2_rgrpd** %22, align 8
  br label %24

24:                                               ; preds = %3, %60, %65, %75, %99
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 0
  %27 = call i32 @down_write(i32* %26)
  %28 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %29 = call i32 @gfs2_rbm_find(%struct.gfs2_rbm* %13, i32 %28, i32* null, i32* null, i32 1, i32* null)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 0
  %32 = call i32 @up_write(i32* %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %100

38:                                               ; preds = %24
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @WARN_ON_ONCE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %100

43:                                               ; preds = %38
  %44 = call i64 @gfs2_rbm_to_block(%struct.gfs2_rbm* %13)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i64 @gfs2_rbm_from_block(%struct.gfs2_rbm* %13, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %100

50:                                               ; preds = %43
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NO_BLOCK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i64, i64* %7, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %24

61:                                               ; preds = %55, %50
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %24

66:                                               ; preds = %61
  %67 = load i64, i64* %7, align 8
  %68 = load i64*, i64** %5, align 8
  store i64 %67, i64* %68, align 8
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* @CREATE, align 4
  %72 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %69, i64 %70, i32* @gfs2_inode_glops, i32 %71, %struct.gfs2_glock** %9)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %24

76:                                               ; preds = %66
  %77 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %78 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %77, i32 0, i32 1
  %79 = load %struct.gfs2_inode*, %struct.gfs2_inode** %78, align 8
  store %struct.gfs2_inode* %79, %struct.gfs2_inode** %10, align 8
  %80 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %81 = icmp ne %struct.gfs2_inode* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @gfs2_delete_workqueue, align 4
  %84 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %85 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %84, i32 0, i32 0
  %86 = call i64 @queue_work(i32 %83, i32* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %76
  %89 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %90 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %89)
  br label %94

91:                                               ; preds = %82
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @NR_CPUS, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %107

99:                                               ; preds = %94
  br label %24

100:                                              ; preds = %49, %42, %37
  %101 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %104 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %100, %98
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @gfs2_rbm_find(%struct.gfs2_rbm*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i64 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i64) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i64, i32*, i32, %struct.gfs2_glock**) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
