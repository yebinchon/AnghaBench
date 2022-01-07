; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_delete_insn_chain_and_edges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_delete_insn_chain_and_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_insn_chain_and_edges(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @INSN_P(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @BLOCK_FOR_INSN(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @BLOCK_FOR_INSN(i64 %14)
  %16 = call i64 @BB_END(i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %13, %9, %2
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @delete_insn_chain(i64 %21, i64 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @BLOCK_FOR_INSN(i64 %27)
  %29 = call i32 @purge_dead_edges(i64 %28)
  br label %30

30:                                               ; preds = %26, %20
  ret void
}

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @BLOCK_FOR_INSN(i64) #1

declare dso_local i64 @BB_END(i64) #1

declare dso_local i32 @delete_insn_chain(i64, i64) #1

declare dso_local i32 @purge_dead_edges(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
