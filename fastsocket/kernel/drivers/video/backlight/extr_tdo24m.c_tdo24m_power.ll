; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tdo24m.c_tdo24m_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tdo24m.c_tdo24m_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdo24m = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tdo24m*, i32)* @tdo24m_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdo24m_power(%struct.tdo24m* %0, i32 %1) #0 {
  %3 = alloca %struct.tdo24m*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tdo24m* %0, %struct.tdo24m** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @POWER_IS_ON(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %11 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @POWER_IS_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %17 = call i32 @tdo24m_power_on(%struct.tdo24m* %16)
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %9, %2
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @POWER_IS_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %24 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @POWER_IS_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %30 = call i32 @tdo24m_power_off(%struct.tdo24m* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %22, %18
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %38 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @POWER_IS_ON(i32) #1

declare dso_local i32 @tdo24m_power_on(%struct.tdo24m*) #1

declare dso_local i32 @tdo24m_power_off(%struct.tdo24m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
