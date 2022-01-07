; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_copy_to_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_copy_to_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seq_mode = common dso_local global i64 0, align 8
@SEQ_1 = common dso_local global i64 0, align 8
@iqlen = common dso_local global i32 0, align 4
@SEQ_MAX_QUEUE = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@iqueue = common dso_local global i32* null, align 8
@iqtail = common dso_local global i64 0, align 8
@IEV_SZ = common dso_local global i64 0, align 8
@midi_sleeper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_copy_to_input(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %49

12:                                               ; preds = %8, %2
  %13 = load i64, i64* @seq_mode, align 8
  %14 = load i64, i64* @SEQ_1, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 4
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %49

22:                                               ; preds = %12
  %23 = load i32, i32* @iqlen, align 4
  %24 = load i32, i32* @SEQ_MAX_QUEUE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %49

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @lock, i64 %29)
  %31 = load i32*, i32** @iqueue, align 8
  %32 = load i64, i64* @iqtail, align 8
  %33 = load i64, i64* @IEV_SZ, align 8
  %34 = mul i64 %32, %33
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @memcpy(i32* %35, i8* %36, i32 %37)
  %39 = load i32, i32* @iqlen, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @iqlen, align 4
  %41 = load i64, i64* @iqtail, align 8
  %42 = add i64 %41, 1
  %43 = load i32, i32* @SEQ_MAX_QUEUE, align 4
  %44 = sext i32 %43 to i64
  %45 = urem i64 %42, %44
  store i64 %45, i64* @iqtail, align 8
  %46 = call i32 @wake_up(i32* @midi_sleeper)
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %47)
  br label %49

49:                                               ; preds = %28, %27, %21, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
