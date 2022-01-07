; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_make_cond_expr_edges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_make_cond_expr_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@COND_EXPR = common dso_local global i64 0, align 8
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @make_cond_expr_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_cond_expr_edges(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @last_stmt(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @COND_EXPR, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @COND_EXPR_THEN(i32 %19)
  %21 = call i32 @GOTO_DESTINATION(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @COND_EXPR_ELSE(i32 %22)
  %24 = call i32 @GOTO_DESTINATION(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @label_to_block(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @label_to_block(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %32 = call %struct.TYPE_3__* @make_edge(i32 %29, i32 %30, i32 %31)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %8, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @COND_EXPR_THEN(i32 %33)
  %35 = call i8* @EXPR_LOCUS(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %41 = call %struct.TYPE_3__* @make_edge(i32 %38, i32 %39, i32 %40)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @COND_EXPR_ELSE(i32 %45)
  %47 = call i8* @EXPR_LOCUS(i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @GOTO_DESTINATION(i32) #1

declare dso_local i32 @COND_EXPR_THEN(i32) #1

declare dso_local i32 @COND_EXPR_ELSE(i32) #1

declare dso_local i32 @label_to_block(i32) #1

declare dso_local %struct.TYPE_3__* @make_edge(i32, i32, i32) #1

declare dso_local i8* @EXPR_LOCUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
