; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_wr_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_wr_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bufend = common dso_local global i32 0, align 4
@bufpt = common dso_local global i32 0, align 4
@blksz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wr_skip(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %3, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load i32, i32* @bufend, align 4
  %10 = load i32, i32* @bufpt, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* @blksz, align 4
  %16 = call i32 @buf_flush(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %34

19:                                               ; preds = %14, %8
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @MIN(i32 %20, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @bufpt, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @memset(i32 %23, i32 0, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @bufpt, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* @bufpt, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %3, align 8
  %32 = sub nsw i64 %31, %30
  store i64 %32, i64* %3, align 8
  br label %5

33:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @buf_flush(i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
