; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_note_to_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_note_to_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@note_to_freq.notes = internal global [12 x i32] [i32 261632, i32 277189, i32 293671, i32 311132, i32 329632, i32 349232, i32 369998, i32 391998, i32 415306, i32 440000, i32 466162, i32 493880], align 16
@BASE_OCTAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @note_to_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sdiv i32 %6, 12
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = srem i32 %8, 12
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i32], [12 x i32]* @note_to_freq.notes, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 5, %17
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 5
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 5
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
