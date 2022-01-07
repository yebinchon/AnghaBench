; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_rtl_block_ends_with_call_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_rtl_block_ends_with_call_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtl_block_ends_with_call_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_block_ends_with_call_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @BB_END(i32 %4)
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @CALL_P(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @BB_HEAD(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @keep_with_call_p(i64 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %10, %6
  %20 = phi i1 [ false, %10 ], [ false, %6 ], [ %18, %15 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @PREV_INSN(i64 %22)
  store i64 %23, i64* %3, align 8
  br label %6

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @CALL_P(i64 %25)
  ret i32 %26
}

declare dso_local i64 @BB_END(i32) #1

declare dso_local i32 @CALL_P(i64) #1

declare dso_local i64 @BB_HEAD(i32) #1

declare dso_local i64 @keep_with_call_p(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
