; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-operands.c_start_ssa_stmt_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-operands.c_start_ssa_stmt_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree = common dso_local global i32 0, align 4
@build_defs = common dso_local global i32 0, align 4
@build_uses = common dso_local global i32 0, align 4
@build_vuses = common dso_local global i32 0, align 4
@build_v_may_defs = common dso_local global i32 0, align 4
@build_v_must_defs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_ssa_stmt_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_ssa_stmt_operands() #0 {
  %1 = load i32, i32* @tree, align 4
  %2 = load i32, i32* @build_defs, align 4
  %3 = call i64 @VEC_length(i32 %1, i32 %2)
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @gcc_assert(i32 %5)
  %7 = load i32, i32* @tree, align 4
  %8 = load i32, i32* @build_uses, align 4
  %9 = call i64 @VEC_length(i32 %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* @tree, align 4
  %14 = load i32, i32* @build_vuses, align 4
  %15 = call i64 @VEC_length(i32 %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i32, i32* @tree, align 4
  %20 = load i32, i32* @build_v_may_defs, align 4
  %21 = call i64 @VEC_length(i32 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i32, i32* @tree, align 4
  %26 = load i32, i32* @build_v_must_defs, align 4
  %27 = call i64 @VEC_length(i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @VEC_length(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
