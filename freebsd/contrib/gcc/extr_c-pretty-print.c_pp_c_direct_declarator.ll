; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_direct_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_direct_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pp_c_flag_abstract = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_direct_declarator(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %60 [
    i32 128, label %7
    i32 134, label %7
    i32 130, label %7
    i32 139, label %7
    i32 135, label %7
    i32 142, label %15
    i32 133, label %15
    i32 141, label %15
    i32 137, label %20
    i32 138, label %28
    i32 136, label %59
    i32 132, label %59
    i32 140, label %59
    i32 129, label %59
    i32 131, label %59
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @TREE_TYPE(i32 %9)
  %11 = call i32 @pp_c_space_for_pointer_operator(i32* %8, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pp_c_tree_decl_identifier(i32* %12, i32 %13)
  br label %64

15:                                               ; preds = %2, %2, %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TREE_TYPE(i32 %17)
  %19 = call i32 @pp_abstract_declarator(i32* %16, i32 %18)
  br label %64

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pp_parameter_list(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TREE_TYPE(i32 %25)
  %27 = call i32 @pp_abstract_declarator(i32* %24, i32 %26)
  br label %64

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = call i32 @TREE_TYPE(i32 %31)
  %33 = call i32 @pp_c_space_for_pointer_operator(i32* %29, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pp_c_tree_decl_identifier(i32* %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call %struct.TYPE_2__* @pp_c_base(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @pp_c_flag_abstract, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @TREE_TYPE(i32 %46)
  %48 = call i32 @pp_abstract_declarator(i32* %45, i32 %47)
  br label %58

49:                                               ; preds = %28
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @pp_parameter_list(i32* %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @TREE_TYPE(i32 %54)
  %56 = call i32 @TREE_TYPE(i32 %55)
  %57 = call i32 @pp_abstract_declarator(i32* %53, i32 %56)
  br label %58

58:                                               ; preds = %49, %44
  br label %64

59:                                               ; preds = %2, %2, %2, %2, %2
  br label %64

60:                                               ; preds = %2
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @pp_unsupported_tree(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %59, %58, %20, %15, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_space_for_pointer_operator(i32*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_c_tree_decl_identifier(i32*, i32) #1

declare dso_local i32 @pp_abstract_declarator(i32*, i32) #1

declare dso_local i32 @pp_parameter_list(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @pp_c_base(i32*) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
