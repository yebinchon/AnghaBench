; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_check_blk_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_check_blk_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_holder = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_check_blk_type(%struct.gfs2_sbd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_rgrpd*, align 8
  %8 = alloca %struct.gfs2_holder, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %12, i32 %13, i32 1)
  store %struct.gfs2_rgrpd* %14, %struct.gfs2_rgrpd** %7, align 8
  %15 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %16 = icmp ne %struct.gfs2_rgrpd* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %20 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LM_ST_SHARED, align 4
  %23 = call i32 @gfs2_glock_nq_init(i32 %21, i32 %22, i32 0, %struct.gfs2_holder* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %38

27:                                               ; preds = %18
  %28 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @gfs2_get_block_type(%struct.gfs2_rgrpd* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ESTALE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %8)
  br label %38

38:                                               ; preds = %36, %26, %17
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_get_block_type(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
