; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_serial-u16550.c_snd_uart16550_write_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_serial-u16550.c_snd_uart16550_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_uart16550 = type { i16, i64, i8*, i64 }

@TX_BUFF_SIZE = common dso_local global i64 0, align 8
@TX_BUFF_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_uart16550*, i8)* @snd_uart16550_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_uart16550_write_buffer(%struct.snd_uart16550* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_uart16550*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.snd_uart16550* %0, %struct.snd_uart16550** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %8 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 8
  store i16 %9, i16* %6, align 2
  %10 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %11 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TX_BUFF_SIZE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = load i8, i8* %5, align 1
  %17 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %18 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 %16, i8* %22, align 1
  %23 = load i16, i16* %6, align 2
  %24 = add i16 %23, 1
  store i16 %24, i16* %6, align 2
  %25 = load i16, i16* @TX_BUFF_MASK, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %6, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, %26
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %6, align 2
  %31 = load i16, i16* %6, align 2
  %32 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %33 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %32, i32 0, i32 0
  store i16 %31, i16* %33, align 8
  %34 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %35 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %39 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %15
  %43 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %44 = call i32 @snd_uart16550_add_timer(%struct.snd_uart16550* %43)
  br label %45

45:                                               ; preds = %42, %15
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @snd_uart16550_add_timer(%struct.snd_uart16550*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
