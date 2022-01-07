; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpc5200_wdt.c_mpc5200_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpc5200_wdt.c_mpc5200_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc5200_wdt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc5200_wdt*, i32)* @mpc5200_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc5200_wdt_set_timeout(%struct.mpc5200_wdt* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc5200_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.mpc5200_wdt* %0, %struct.mpc5200_wdt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mpc5200_wdt*, %struct.mpc5200_wdt** %3, align 8
  %6 = getelementptr inbounds %struct.mpc5200_wdt, %struct.mpc5200_wdt* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 65535
  %9 = sdiv i32 %8, 65536
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load %struct.mpc5200_wdt*, %struct.mpc5200_wdt** %3, align 8
  %13 = getelementptr inbounds %struct.mpc5200_wdt, %struct.mpc5200_wdt* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mpc5200_wdt*, %struct.mpc5200_wdt** %3, align 8
  %15 = getelementptr inbounds %struct.mpc5200_wdt, %struct.mpc5200_wdt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 65535
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.mpc5200_wdt*, %struct.mpc5200_wdt** %3, align 8
  %20 = getelementptr inbounds %struct.mpc5200_wdt, %struct.mpc5200_wdt* %19, i32 0, i32 0
  store i32 65535, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
