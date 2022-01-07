; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_get_cases_for_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_get_cases_for_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.edge_to_cases_elt = type { i32*, %struct.TYPE_3__* }

@edge_to_cases = common dso_local global i32 0, align 4
@NO_INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @get_cases_for_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_cases_for_edge(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.edge_to_cases_elt, align 8
  %7 = alloca %struct.edge_to_cases_elt*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = call i32 (...) @recording_case_labels_p()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %63

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %62, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.edge_to_cases_elt, %struct.edge_to_cases_elt* %6, i32 0, i32 1
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %20, align 8
  %21 = getelementptr inbounds %struct.edge_to_cases_elt, %struct.edge_to_cases_elt* %6, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @edge_to_cases, align 4
  %23 = load i32, i32* @NO_INSERT, align 4
  %24 = call i8** @htab_find_slot(i32 %22, %struct.edge_to_cases_elt* %6, i32 %23)
  store i8** %24, i8*** %8, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.edge_to_cases_elt*
  store %struct.edge_to_cases_elt* %30, %struct.edge_to_cases_elt** %7, align 8
  %31 = load %struct.edge_to_cases_elt*, %struct.edge_to_cases_elt** %7, align 8
  %32 = getelementptr inbounds %struct.edge_to_cases_elt, %struct.edge_to_cases_elt* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %3, align 8
  br label %63

34:                                               ; preds = %18
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @SWITCH_LABELS(i32* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i64 @TREE_VEC_LENGTH(i32* %37)
  store i64 %38, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %59, %34
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @TREE_VEC_ELT(i32* %44, i64 %45)
  %47 = call i32* @CASE_LABEL(i32 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @label_to_block(i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @find_edge(i32 %52, i32 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @TREE_VEC_ELT(i32* %55, i64 %56)
  %58 = call i32 @record_switch_edge(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %43
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %39

62:                                               ; preds = %39
  br label %18

63:                                               ; preds = %27, %16
  %64 = load i32*, i32** %3, align 8
  ret i32* %64
}

declare dso_local i32 @recording_case_labels_p(...) #1

declare dso_local i8** @htab_find_slot(i32, %struct.edge_to_cases_elt*, i32) #1

declare dso_local i32* @SWITCH_LABELS(i32*) #1

declare dso_local i64 @TREE_VEC_LENGTH(i32*) #1

declare dso_local i32* @CASE_LABEL(i32) #1

declare dso_local i32 @TREE_VEC_ELT(i32*, i64) #1

declare dso_local i32 @label_to_block(i32*) #1

declare dso_local i32 @record_switch_edge(i32, i32) #1

declare dso_local i32 @find_edge(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
