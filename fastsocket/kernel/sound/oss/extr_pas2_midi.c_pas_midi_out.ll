; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_midi.c_pas_midi_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_midi.c_pas_midi_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pas_lock = common dso_local global i32 0, align 4
@qlen = common dso_local global i32 0, align 4
@tmp_queue = common dso_local global i8* null, align 8
@qhead = common dso_local global i64 0, align 8
@qtail = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @pas_midi_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pas_midi_out(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pas_lock, i64 %7)
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, i32* @qlen, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i8*, i8** @tmp_queue, align 8
  %14 = load i64, i64* @qhead, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @dump_to_midi(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %9
  %20 = phi i1 [ false, %9 ], [ %18, %12 ]
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = load i32, i32* @qlen, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @qlen, align 4
  %24 = load i64, i64* @qhead, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* @qhead, align 8
  br label %9

26:                                               ; preds = %19
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @pas_lock, i64 %27)
  %29 = load i32, i32* @qlen, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i8, i8* %5, align 1
  %33 = call i64 @dump_to_midi(i8 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %54

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* @qlen, align 4
  %39 = icmp sge i32 %38, 256
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* @pas_lock, i64 %42)
  %44 = load i8, i8* %5, align 1
  %45 = load i8*, i8** @tmp_queue, align 8
  %46 = load i64, i64* @qtail, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 %44, i8* %47, align 1
  %48 = load i32, i32* @qlen, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @qlen, align 4
  %50 = load i64, i64* @qtail, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* @qtail, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @pas_lock, i64 %52)
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %41, %40, %35
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @dump_to_midi(i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
