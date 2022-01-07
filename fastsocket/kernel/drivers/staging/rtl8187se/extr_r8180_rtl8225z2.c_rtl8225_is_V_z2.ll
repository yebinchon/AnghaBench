; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225_is_V_z2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225_is_V_z2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @rtl8225_is_V_z2(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i16 1, i16* %3, align 2
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i32 @read_rtl8225(%struct.net_device* %4, i32 8)
  %6 = icmp ne i32 %5, 1416
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i16 0, i16* %3, align 2
  br label %14

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @read_rtl8225(%struct.net_device* %9, i32 9)
  %11 = icmp ne i32 %10, 1792
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i16 0, i16* %3, align 2
  br label %13

13:                                               ; preds = %12, %8
  br label %14

14:                                               ; preds = %13, %7
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @write_rtl8225(%struct.net_device* %15, i32 0, i32 183)
  %17 = load i16, i16* %3, align 2
  ret i16 %17
}

declare dso_local i32 @read_rtl8225(%struct.net_device*, i32) #1

declare dso_local i32 @write_rtl8225(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
