; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_mark_all_v_defs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_mark_all_v_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATEMENT_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mark_all_v_defs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_all_v_defs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @STATEMENT_LIST, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @mark_all_v_defs_1(i32 %9)
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @tsi_start(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %23, %11
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @tsi_end_p(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @tsi_stmt(i32 %20)
  %22 = call i32 @mark_all_v_defs_1(i32 %21)
  br label %23

23:                                               ; preds = %19
  %24 = call i32 @tsi_next(i32* %3)
  br label %14

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %8
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @mark_all_v_defs_1(i32) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
