; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_nv_driver.c_riva_get_maxdclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_nv_driver.c_riva_get_maxdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @riva_get_maxdclk(%struct.riva_par* %0) #0 {
  %2 = alloca %struct.riva_par*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i64, align 8
  store %struct.riva_par* %0, %struct.riva_par** %2, align 8
  %5 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %6 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %5, i32 0, i32 0
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %46 [
    i32 132, label %10
    i32 131, label %36
    i32 130, label %36
    i32 129, label %36
    i32 128, label %36
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @NV_RD32(i32 %13, i32 0)
  %15 = and i32 %14, 32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @NV_RD32(i32 %20, i32 0)
  %22 = and i32 %21, 240
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NV_RD32(i32 %27, i32 0)
  %29 = and i32 %28, 15
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i64 800000, i64* %4, align 8
  br label %33

32:                                               ; preds = %24, %17
  store i64 1000000, i64* %4, align 8
  br label %33

33:                                               ; preds = %32, %31
  br label %35

34:                                               ; preds = %10
  store i64 1000000, i64* %4, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %46

36:                                               ; preds = %1, %1, %1, %1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @NV_RD32(i32 %39, i32 0)
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 3
  switch i32 %42, label %44 [
    i32 3, label %43
  ]

43:                                               ; preds = %36
  store i64 800000, i64* %4, align 8
  br label %45

44:                                               ; preds = %36
  store i64 1000000, i64* %4, align 8
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %1, %45, %35
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
