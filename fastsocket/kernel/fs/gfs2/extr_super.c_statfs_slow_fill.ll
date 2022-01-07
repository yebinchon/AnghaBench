; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_statfs_slow_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_statfs_slow_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i64, i64, i64 }
%struct.gfs2_statfs_change_host = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rgrpd*, %struct.gfs2_statfs_change_host*)* @statfs_slow_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statfs_slow_fill(%struct.gfs2_rgrpd* %0, %struct.gfs2_statfs_change_host* %1) #0 {
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca %struct.gfs2_statfs_change_host*, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  store %struct.gfs2_statfs_change_host* %1, %struct.gfs2_statfs_change_host** %4, align 8
  %5 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %6 = call i32 @gfs2_rgrp_verify(%struct.gfs2_rgrpd* %5)
  %7 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %29 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  ret i32 0
}

declare dso_local i32 @gfs2_rgrp_verify(%struct.gfs2_rgrpd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
