; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_ili9320.c_ili9320_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_ili9320.c_ili9320_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili9320 = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"power %d => %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to set power mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili9320*, i32)* @ili9320_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9320_power(%struct.ili9320* %0, i32 %1) #0 {
  %3 = alloca %struct.ili9320*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ili9320* %0, %struct.ili9320** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %7 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %10 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @POWER_IS_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %19 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @POWER_IS_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %25 = call i32 @ili9320_power_on(%struct.ili9320* %24)
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %17, %2
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @POWER_IS_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %32 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @POWER_IS_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %38 = call i32 @ili9320_power_off(%struct.ili9320* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %30, %26
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %46 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %53

47:                                               ; preds = %40
  %48 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %49 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_warn(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @POWER_IS_ON(i32) #1

declare dso_local i32 @ili9320_power_on(%struct.ili9320*) #1

declare dso_local i32 @ili9320_power_off(%struct.ili9320*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
