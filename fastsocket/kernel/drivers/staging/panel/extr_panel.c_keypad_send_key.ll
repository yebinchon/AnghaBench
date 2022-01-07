; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_keypad_send_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_keypad_send_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_in_progress = common dso_local global i64 0, align 8
@keypad_open_cnt = common dso_local global i64 0, align 8
@keypad_buflen = common dso_local global i64 0, align 8
@KEYPAD_BUFFER = common dso_local global i64 0, align 8
@keypad_buffer = common dso_local global i32* null, align 8
@keypad_start = common dso_local global i32 0, align 4
@keypad_read_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @keypad_send_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keypad_send_key(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @init_in_progress, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %43

8:                                                ; preds = %2
  %9 = load i64, i64* @keypad_open_cnt, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i64, i64* @keypad_buflen, align 8
  %18 = load i64, i64* @KEYPAD_BUFFER, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %20, %16, %12
  %26 = phi i1 [ false, %16 ], [ false, %12 ], [ %24, %20 ]
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = load i32*, i32** @keypad_buffer, align 8
  %33 = load i32, i32* @keypad_start, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @keypad_buflen, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @keypad_buflen, align 8
  %37 = add i64 %34, %35
  %38 = load i64, i64* @KEYPAD_BUFFER, align 8
  %39 = urem i64 %37, %38
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  store i32 %31, i32* %40, align 4
  br label %12

41:                                               ; preds = %25
  %42 = call i32 @wake_up_interruptible(i32* @keypad_read_wait)
  br label %43

43:                                               ; preds = %7, %41, %8
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
