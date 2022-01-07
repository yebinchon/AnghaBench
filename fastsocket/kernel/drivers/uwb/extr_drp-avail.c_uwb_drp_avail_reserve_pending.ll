; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp-avail.c_uwb_drp_avail_reserve_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp-avail.c_uwb_drp_avail_reserve_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc* %0, %struct.uwb_mas_bm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_mas_bm*, align 8
  %6 = alloca %struct.uwb_mas_bm, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_mas_bm* %1, %struct.uwb_mas_bm** %5, align 8
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %8 = call i32 @uwb_drp_available(%struct.uwb_rc* %7, %struct.uwb_mas_bm* %6)
  %9 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %5, align 8
  %10 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %6, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UWB_NUM_MAS, align 4
  %15 = call i32 @bitmap_subset(i32 %11, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %26 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %5, align 8
  %30 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UWB_NUM_MAS, align 4
  %33 = call i32 @bitmap_andnot(i32 %24, i32 %28, i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @uwb_drp_available(%struct.uwb_rc*, %struct.uwb_mas_bm*) #1

declare dso_local i32 @bitmap_subset(i32, i32, i32) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
