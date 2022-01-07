; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midibuf.c_midibuf_skip_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midibuf.c_midibuf_skip_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MidiBuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midibuf_skip_message(%struct.MidiBuffer* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MidiBuffer*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.MidiBuffer* %0, %struct.MidiBuffer** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.MidiBuffer*, %struct.MidiBuffer** %4, align 8
  %8 = getelementptr inbounds %struct.MidiBuffer, %struct.MidiBuffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 128
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 240
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 15
  %20 = shl i32 1, %19
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %26

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %12, %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
