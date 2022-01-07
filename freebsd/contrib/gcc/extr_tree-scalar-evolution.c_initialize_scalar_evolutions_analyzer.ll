; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_initialize_scalar_evolutions_analyzer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_initialize_scalar_evolutions_analyzer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chrec_dont_know = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@chrec_not_analyzed_yet = common dso_local global i64 0, align 8
@SCEV_NOT_KNOWN = common dso_local global i32 0, align 4
@SCEV_KNOWN = common dso_local global i32 0, align 4
@chrec_known = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_scalar_evolutions_analyzer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_scalar_evolutions_analyzer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @chrec_dont_know, align 8
  %4 = load i64, i64* @NULL_TREE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load i64, i64* @NULL_TREE, align 8
  store i64 %7, i64* @chrec_not_analyzed_yet, align 8
  %8 = load i32, i32* @SCEV_NOT_KNOWN, align 4
  %9 = call i8* @make_node(i32 %8)
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* @chrec_dont_know, align 8
  %11 = load i32, i32* @SCEV_KNOWN, align 4
  %12 = call i8* @make_node(i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* @chrec_known, align 4
  %14 = load i32, i32* @void_type_node, align 4
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @void_type_node, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %6, %0
  ret void
}

declare dso_local i8* @make_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
