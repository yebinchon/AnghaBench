; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_bsi_for_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_bsi_for_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsi_for_stmt(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @bb_for_stmt(i64 %5)
  %7 = call i32 @bsi_start(i32 %6)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @bsi_end_p(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @bsi_stmt(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = call i32 @bsi_next(i32* %4)
  br label %8

23:                                               ; preds = %8
  %24 = call i32 (...) @gcc_unreachable()
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bb_for_stmt(i64) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
