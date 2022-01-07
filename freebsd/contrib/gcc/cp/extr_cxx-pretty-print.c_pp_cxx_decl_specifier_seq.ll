; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_decl_specifier_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_decl_specifier_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_decl_specifier_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_decl_specifier_seq(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  switch i32 %7, label %60 [
    i32 128, label %8
    i32 131, label %8
    i32 134, label %8
    i32 133, label %8
    i32 129, label %15
    i32 130, label %21
    i32 132, label %38
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pp_cxx_storage_class_specifier(i32* %9, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  call void @pp_cxx_decl_specifier_seq(i32* %12, i32 %14)
  br label %67

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @pp_cxx_identifier(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  call void @pp_cxx_decl_specifier_seq(i32* %18, i32 %20)
  br label %67

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @TYPE_PTRMEMFUNC_P(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  %31 = call i32 @TREE_TYPE(i32 %30)
  call void @pp_cxx_decl_specifier_seq(i32* %28, i32 %31)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @pp_cxx_whitespace(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pp_cxx_ptr_operator(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %25, %21
  br label %67

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @DECL_CONSTRUCTOR_P(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @DECL_CONV_FN_P(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %38
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pp_cxx_function_specifier(i32* %47, i32 %48)
  br label %66

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @TREE_TYPE(i32 %56)
  %58 = call i32 @TREE_TYPE(i32 %57)
  call void @pp_cxx_decl_specifier_seq(i32* %55, i32 %58)
  br label %65

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %2, %59
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @pp_c_base(i32* %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @pp_c_declaration_specifiers(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %54
  br label %66

66:                                               ; preds = %65, %46
  br label %67

67:                                               ; preds = %66, %37, %15, %8
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_storage_class_specifier(i32*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

declare dso_local i32 @pp_cxx_whitespace(i32*) #1

declare dso_local i32 @pp_cxx_ptr_operator(i32*, i32) #1

declare dso_local i32 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i32 @DECL_CONV_FN_P(i32) #1

declare dso_local i32 @pp_cxx_function_specifier(i32*, i32) #1

declare dso_local i32 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32) #1

declare dso_local i32 @pp_c_declaration_specifiers(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
