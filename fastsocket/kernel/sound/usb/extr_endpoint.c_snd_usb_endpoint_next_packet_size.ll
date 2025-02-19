; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_snd_usb_endpoint_next_packet_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_snd_usb_endpoint_next_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_endpoint_next_packet_size(%struct.snd_usb_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  %6 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %7 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %16 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %15, i32 0, i32 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %20 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 65535
  %23 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %24 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %27 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %25, %28
  %30 = add nsw i32 %22, %29
  %31 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %32 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %34 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 16
  %37 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @min(i32 %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %42 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %41, i32 0, i32 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %14, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
