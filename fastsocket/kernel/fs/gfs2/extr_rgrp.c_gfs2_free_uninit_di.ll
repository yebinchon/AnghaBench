; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_free_uninit_di.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_free_uninit_di.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { %struct.TYPE_3__*, i32, i32, i32, %struct.gfs2_sbd* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_sbd = type { i32 }

@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rgrpd*, i32)* @gfs2_free_uninit_di to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_free_uninit_di(%struct.gfs2_rgrpd* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %7, i32 0, i32 4
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  store %struct.gfs2_sbd* %9, %struct.gfs2_sbd** %5, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %13 = call %struct.gfs2_rgrpd* @rgblk_free(%struct.gfs2_sbd* %10, i32 %11, i32 1, i32 %12)
  store %struct.gfs2_rgrpd* %13, %struct.gfs2_rgrpd** %6, align 8
  %14 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %15 = icmp ne %struct.gfs2_rgrpd* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %19 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %21 = icmp eq %struct.gfs2_rgrpd* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gfs2_assert_withdraw(%struct.gfs2_sbd* %18, i32 %22)
  %24 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %25 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %30 = call i32 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %29)
  br label %31

31:                                               ; preds = %28, %17
  %32 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %33 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %37 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %41 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @gfs2_trans_add_meta(i32 %42, %struct.TYPE_4__* %48)
  %50 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %51 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %52 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd* %50, i32 %58)
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %61 = call i32 @gfs2_statfs_change(%struct.gfs2_sbd* %60, i32 0, i32 1, i32 -1)
  br label %62

62:                                               ; preds = %31, %16
  ret void
}

declare dso_local %struct.gfs2_rgrpd* @rgblk_free(%struct.gfs2_sbd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @gfs2_statfs_change(%struct.gfs2_sbd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
