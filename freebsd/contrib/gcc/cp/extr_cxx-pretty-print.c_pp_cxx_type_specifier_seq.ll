; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_type_specifier_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_type_specifier_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_type_specifier_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_type_specifier_seq(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %26 [
    i32 131, label %7
    i32 129, label %7
    i32 130, label %7
    i32 128, label %7
    i32 133, label %7
    i32 132, label %14
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pp_cxx_cv_qualifier_seq(i32* %8, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pp_cxx_simple_type_specifier(i32* %11, i32 %12)
  br label %41

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  call void @pp_cxx_type_specifier_seq(i32* %15, i32 %17)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  %21 = call i32 @pp_cxx_space_for_pointer_operator(i32* %18, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TYPE_METHOD_BASETYPE(i32 %23)
  %25 = call i32 @pp_cxx_nested_name_specifier(i32* %22, i32 %24)
  br label %41

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @TREE_CODE(i32 %27)
  %29 = load i32, i32* @FUNCTION_DECL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DECL_CONSTRUCTOR_P(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %26
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @pp_c_base(i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @pp_c_specifier_qualifier_list(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %40, %14, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_cv_qualifier_seq(i32*, i32) #1

declare dso_local i32 @pp_cxx_simple_type_specifier(i32*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_cxx_space_for_pointer_operator(i32*, i32) #1

declare dso_local i32 @pp_cxx_nested_name_specifier(i32*, i32) #1

declare dso_local i32 @TYPE_METHOD_BASETYPE(i32) #1

declare dso_local i32 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i32 @pp_c_specifier_qualifier_list(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
