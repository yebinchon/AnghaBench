; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_mbw_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_mbw_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MBW_32 = common dso_local global i16 0, align 2
@MBW_16 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.r8a66597*)* @mbw_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @mbw_value(%struct.r8a66597* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.r8a66597*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  %4 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %5 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i16, i16* @MBW_32, align 2
  store i16 %11, i16* %2, align 2
  br label %14

12:                                               ; preds = %1
  %13 = load i16, i16* @MBW_16, align 2
  store i16 %13, i16* %2, align 2
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i16, i16* %2, align 2
  ret i16 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
