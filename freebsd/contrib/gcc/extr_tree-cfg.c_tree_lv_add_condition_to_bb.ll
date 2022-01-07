; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_lv_add_condition_to_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_lv_add_condition_to_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@GOTO_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@BSI_NEW_STMT = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @tree_lv_add_condition_to_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_lv_add_condition_to_bb(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load i32, i32* @NULL_TREE, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @NULL_TREE, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @NULL_TREE, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @GOTO_EXPR, align 4
  %21 = load i32, i32* @void_type_node, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @tree_block_label(i32 %22)
  %24 = call i32 @build1(i32 %20, i32 %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @GOTO_EXPR, align 4
  %26 = load i32, i32* @void_type_node, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @tree_block_label(i32 %27)
  %29 = call i32 @build1(i32 %25, i32 %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @COND_EXPR, align 4
  %31 = load i32, i32* @void_type_node, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @build3(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bsi_start(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @BSI_NEW_STMT, align 4
  %40 = call i32 @bsi_insert_after(i32* %9, i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.TYPE_3__* @single_succ_edge(i32 %41)
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %14, align 8
  %43 = load i32, i32* @EDGE_FALLTHRU, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  ret void
}

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @tree_block_label(i32) #1

declare dso_local i32 @build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_insert_after(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @single_succ_edge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
