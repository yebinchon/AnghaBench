; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_input_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32)* }

@seq_mode = common dso_local global i64 0, align 8
@SEQ_2 = common dso_local global i64 0, align 8
@tmr = common dso_local global %struct.TYPE_2__* null, align 8
@tmr_no = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@seq_time = common dso_local global i64 0, align 8
@prev_input_time = common dso_local global i64 0, align 8
@EV_TIMING = common dso_local global i8 0, align 1
@TMR_WAIT_ABS = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_input_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [8 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @seq_mode, align 8
  %8 = load i64, i64* @SEQ_2, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmr, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (i32)*, i64 (i32)** %12, align 8
  %14 = load i32, i32* @tmr_no, align 4
  %15 = call i64 %13(i32 %14)
  store i64 %15, i64* %5, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @seq_time, align 8
  %19 = sub i64 %17, %18
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @prev_input_time, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i8, i8* @EV_TIMING, align 1
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  %27 = load i8, i8* @TMR_WAIT_ABS, align 1
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  store i8 0, i8* %30, align 1
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 4
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 1
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %36 = call i32 @seq_copy_to_input(i8* %35, i32 8)
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* @prev_input_time, align 8
  br label %38

38:                                               ; preds = %24, %20
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @seq_copy_to_input(i8* %39, i32 %40)
  ret void
}

declare dso_local i32 @seq_copy_to_input(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
