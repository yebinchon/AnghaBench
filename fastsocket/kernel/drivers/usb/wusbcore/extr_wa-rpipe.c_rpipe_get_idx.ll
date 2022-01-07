; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_rpipe_get_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_rpipe_get_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wahc*, i32)* @rpipe_get_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpipe_get_idx(%struct.wahc* %0, i32 %1) #0 {
  %3 = alloca %struct.wahc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wahc*, %struct.wahc** %3, align 8
  %7 = getelementptr inbounds %struct.wahc, %struct.wahc* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.wahc*, %struct.wahc** %3, align 8
  %11 = getelementptr inbounds %struct.wahc, %struct.wahc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wahc*, %struct.wahc** %3, align 8
  %14 = getelementptr inbounds %struct.wahc, %struct.wahc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @find_next_zero_bit(i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.wahc*, %struct.wahc** %3, align 8
  %20 = getelementptr inbounds %struct.wahc, %struct.wahc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.wahc*, %struct.wahc** %3, align 8
  %26 = getelementptr inbounds %struct.wahc, %struct.wahc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_bit(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.wahc*, %struct.wahc** %3, align 8
  %31 = getelementptr inbounds %struct.wahc, %struct.wahc* %30, i32 0, i32 1
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
