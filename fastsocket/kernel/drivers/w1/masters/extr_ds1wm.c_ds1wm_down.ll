; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32)* }

@DS1WM_INT_EN = common dso_local global i32 0, align 4
@DS1WM_INTEN_IAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1wm_data*)* @ds1wm_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1wm_down(%struct.ds1wm_data* %0) #0 {
  %2 = alloca %struct.ds1wm_data*, align 8
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %2, align 8
  %3 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %4 = call i32 @ds1wm_reset(%struct.ds1wm_data* %3)
  %5 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %6 = load i32, i32* @DS1WM_INT_EN, align 4
  %7 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %8 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @DS1WM_INTEN_IAS, align 4
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  %16 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %5, i32 %6, i32 %15)
  %17 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %18 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = icmp ne i32 (i32)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %25 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %30 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31)
  br label %33

33:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @ds1wm_reset(%struct.ds1wm_data*) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
