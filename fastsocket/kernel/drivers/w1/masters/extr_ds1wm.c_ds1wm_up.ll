; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)*, %struct.ds1wm_driver_data* }
%struct.ds1wm_driver_data = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"no suitable divisor for %dHz clock\0A\00", align 1
@DS1WM_CLKDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1wm_data*)* @ds1wm_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1wm_up(%struct.ds1wm_data* %0) #0 {
  %2 = alloca %struct.ds1wm_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds1wm_driver_data*, align 8
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %2, align 8
  %5 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %6 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %8, align 8
  store %struct.ds1wm_driver_data* %9, %struct.ds1wm_driver_data** %4, align 8
  %10 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %11 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_4__*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %18 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %20, align 8
  %22 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %23 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 %21(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %16, %1
  %27 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %4, align 8
  %28 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ds1wm_find_divisor(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %35 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %4, align 8
  %39 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %50

42:                                               ; preds = %26
  %43 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %44 = load i32, i32* @DS1WM_CLKDIV, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %43, i32 %44, i32 %45)
  %47 = call i32 @msleep(i32 1)
  %48 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %49 = call i32 @ds1wm_reset(%struct.ds1wm_data* %48)
  br label %50

50:                                               ; preds = %42, %33
  ret void
}

declare dso_local i32 @ds1wm_find_divisor(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ds1wm_reset(%struct.ds1wm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
