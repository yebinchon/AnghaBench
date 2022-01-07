; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_main.c_mon_dissolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_main.c_mon_dissolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_bus = type { i32* }
%struct.usb_bus = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_bus*, %struct.usb_bus*)* @mon_dissolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_dissolve(%struct.mon_bus* %0, %struct.usb_bus* %1) #0 {
  %3 = alloca %struct.mon_bus*, align 8
  %4 = alloca %struct.usb_bus*, align 8
  store %struct.mon_bus* %0, %struct.mon_bus** %3, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %4, align 8
  %5 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %6 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %11 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = call i32 (...) @mb()
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %15 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %17 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
