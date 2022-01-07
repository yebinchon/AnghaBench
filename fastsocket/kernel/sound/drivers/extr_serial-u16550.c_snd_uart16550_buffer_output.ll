; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_serial-u16550.c_snd_uart16550_buffer_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_serial-u16550.c_snd_uart16550_buffer_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_uart16550 = type { i16, i64, i32, i64, i32* }

@UART_TX = common dso_local global i64 0, align 8
@TX_BUFF_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_uart16550*)* @snd_uart16550_buffer_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_uart16550_buffer_output(%struct.snd_uart16550* %0) #0 {
  %2 = alloca %struct.snd_uart16550*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_uart16550* %0, %struct.snd_uart16550** %2, align 8
  %4 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %5 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 8
  store i16 %6, i16* %3, align 2
  %7 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %8 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %13 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i16, i16* %3, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %20 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UART_TX, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 %18, i64 %23)
  %25 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %26 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load i16, i16* %3, align 2
  %30 = add i16 %29, 1
  store i16 %30, i16* %3, align 2
  %31 = load i16, i16* @TX_BUFF_MASK, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* %3, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, %32
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %3, align 2
  %37 = load i16, i16* %3, align 2
  %38 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %39 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %38, i32 0, i32 0
  store i16 %37, i16* %39, align 8
  %40 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %41 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
