; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_qualified_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_qualified_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @pp_cxx_qualified_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_qualified_id(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  switch i32 %7, label %55 [
    i32 129, label %8
    i32 130, label %17
    i32 132, label %20
    i32 131, label %46
    i32 128, label %46
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @PTRMEM_CST_CLASS(i32 %10)
  %12 = call i32 @pp_cxx_nested_name_specifier(%struct.TYPE_7__* %9, i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @PTRMEM_CST_MEMBER(i32 %14)
  %16 = call i32 @pp_cxx_unqualified_id(%struct.TYPE_7__* %13, i32 %15)
  br label %84

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @OVL_CURRENT(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %2, %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @DECL_FUNCTION_MEMBER_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @DECL_CONTEXT(i32 %26)
  %28 = call i32 @pp_cxx_nested_name_specifier(%struct.TYPE_7__* %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @DECL_CONSTRUCTOR_P(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @DECL_CONTEXT(i32 %35)
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  %41 = call i32 @pp_cxx_unqualified_id(%struct.TYPE_7__* %30, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @TREE_TYPE(i32 %43)
  %45 = call i32 @pp_cxx_parameter_declaration_clause(%struct.TYPE_7__* %42, i32 %44)
  br label %84

46:                                               ; preds = %2, %2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 0)
  %50 = call i32 @pp_cxx_nested_name_specifier(%struct.TYPE_7__* %47, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @TREE_OPERAND(i32 %52, i32 1)
  %54 = call i32 @pp_cxx_unqualified_id(%struct.TYPE_7__* %51, i32 %53)
  br label %84

55:                                               ; preds = %2
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @TYPE_P(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @TYPE_CONTEXT(i32 %60)
  br label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @DECL_CONTEXT(i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %61, %59 ], [ %64, %62 ]
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @pp_cxx_nested_name_specifier(%struct.TYPE_7__* %73, i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @pp_cxx_template_keyword_if_needed(%struct.TYPE_7__* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @pp_cxx_unqualified_id(%struct.TYPE_7__* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %46, %39, %8
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_nested_name_specifier(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PTRMEM_CST_CLASS(i32) #1

declare dso_local i32 @pp_cxx_unqualified_id(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PTRMEM_CST_MEMBER(i32) #1

declare dso_local i32 @OVL_CURRENT(i32) #1

declare dso_local i32 @DECL_FUNCTION_MEMBER_P(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i32 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i32 @pp_cxx_parameter_declaration_clause(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @TYPE_CONTEXT(i32) #1

declare dso_local i32 @pp_cxx_template_keyword_if_needed(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
