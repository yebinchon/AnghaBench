; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimple-low.c_try_catch_may_fallthru.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimple-low.c_try_catch_may_fallthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @try_catch_may_fallthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_catch_may_fallthru(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_OPERAND(i32 %5, i32 0)
  %7 = call i32 @block_may_fallthru(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TREE_OPERAND(i32 %11, i32 1)
  %13 = call i32 @tsi_start(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @tsi_stmt(i32 %14)
  %16 = call i32 @TREE_CODE(i32 %15)
  switch i32 %16, label %39 [
    i32 129, label %17
    i32 128, label %34
  ]

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @tsi_end_p(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @tsi_stmt(i32 %24)
  %26 = call i32 @CATCH_BODY(i32 %25)
  %27 = call i32 @block_may_fallthru(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %40

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = call i32 @tsi_next(i32* %4)
  br label %18

33:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %40

34:                                               ; preds = %10
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @tsi_stmt(i32 %35)
  %37 = call i32 @EH_FILTER_FAILURE(i32 %36)
  %38 = call i32 @block_may_fallthru(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %34, %33, %29, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @block_may_fallthru(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @CATCH_BODY(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

declare dso_local i32 @EH_FILTER_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
