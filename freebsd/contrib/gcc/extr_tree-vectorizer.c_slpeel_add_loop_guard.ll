; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_add_loop_guard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_add_loop_guard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@GOTO_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@BSI_NEW_STMT = common dso_local global i32 0, align 4
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, i32, i32)* @slpeel_add_loop_guard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @slpeel_add_loop_guard(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_5__* @EDGE_SUCC(i32 %15, i32 0)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %11, align 8
  %17 = load i32, i32* @EDGE_FALLTHRU, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bsi_last(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @GOTO_EXPR, align 4
  %31 = load i32, i32* @void_type_node, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @tree_block_label(i32 %32)
  %34 = call i32 @build1(i32 %30, i32 %31, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @GOTO_EXPR, align 4
  %36 = load i32, i32* @void_type_node, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tree_block_label(i32 %39)
  %41 = call i32 @build1(i32 %35, i32 %36, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @COND_EXPR, align 4
  %43 = load i32, i32* @void_type_node, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @build3(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @BSI_NEW_STMT, align 4
  %50 = call i32 @bsi_insert_after(i32* %9, i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %54 = call %struct.TYPE_5__* @make_edge(i32 %51, i32 %52, i32 %53)
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %10, align 8
  %55 = load i32, i32* @CDI_DOMINATORS, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @set_immediate_dominator(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  ret %struct.TYPE_5__* %59
}

declare dso_local %struct.TYPE_5__* @EDGE_SUCC(i32, i32) #1

declare dso_local i32 @bsi_last(i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @tree_block_label(i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bsi_insert_after(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @make_edge(i32, i32, i32) #1

declare dso_local i32 @set_immediate_dominator(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
