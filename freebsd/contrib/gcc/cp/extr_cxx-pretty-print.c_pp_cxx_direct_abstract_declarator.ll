; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_direct_abstract_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_direct_abstract_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pp_before = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_direct_abstract_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_direct_abstract_declarator(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %46 [
    i32 132, label %7
    i32 133, label %11
    i32 134, label %20
    i32 135, label %20
    i32 129, label %45
    i32 130, label %45
    i32 131, label %45
    i32 136, label %45
    i32 128, label %45
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pp_cxx_abstract_declarator(i32* %8, i32 %9)
  br label %51

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TYPE_PTRMEMFUNC_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %17)
  call void @pp_cxx_direct_abstract_declarator(i32* %16, i32 %18)
  br label %19

19:                                               ; preds = %15, %11
  br label %51

20:                                               ; preds = %2, %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pp_cxx_parameter_declaration_clause(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TREE_TYPE(i32 %25)
  call void @pp_cxx_direct_abstract_declarator(i32* %24, i32 %26)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @TREE_CODE(i32 %27)
  %29 = icmp eq i32 %28, 134
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load i32, i32* @pp_before, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_2__* @pp_base(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @TYPE_ARG_TYPES(i32 %36)
  %38 = call i32 @TREE_VALUE(i32 %37)
  %39 = call i32 @TREE_TYPE(i32 %38)
  %40 = call i32 @pp_cxx_cv_qualifier_seq(i32* %35, i32 %39)
  br label %41

41:                                               ; preds = %30, %20
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @pp_cxx_exception_specification(i32* %42, i32 %43)
  br label %51

45:                                               ; preds = %2, %2, %2, %2, %2
  br label %51

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @pp_c_base(i32* %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pp_c_direct_abstract_declarator(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %45, %41, %19, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_abstract_declarator(i32*, i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

declare dso_local i32 @pp_cxx_parameter_declaration_clause(i32*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local %struct.TYPE_2__* @pp_base(i32*) #1

declare dso_local i32 @pp_cxx_cv_qualifier_seq(i32*, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @pp_cxx_exception_specification(i32*, i32) #1

declare dso_local i32 @pp_c_direct_abstract_declarator(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
