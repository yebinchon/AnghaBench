; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_namespace_alias_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_namespace_alias_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_namespace_alias_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_namespace_alias_definition(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @pp_cxx_identifier(i32* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @DECL_CONTEXT(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @DECL_CONTEXT(i32 %12)
  %14 = call i32 @pp_cxx_nested_name_specifier(i32* %11, i64 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pp_cxx_unqualified_id(i32* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @pp_cxx_whitespace(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @pp_equal(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pp_cxx_whitespace(i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DECL_NAMESPACE_ALIAS(i32 %25)
  %27 = call i64 @DECL_CONTEXT(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %15
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @DECL_NAMESPACE_ALIAS(i32 %31)
  %33 = call i64 @DECL_CONTEXT(i32 %32)
  %34 = call i32 @pp_cxx_nested_name_specifier(i32* %30, i64 %33)
  br label %35

35:                                               ; preds = %29, %15
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @DECL_NAMESPACE_ALIAS(i32 %37)
  %39 = call i32 @pp_cxx_qualified_id(i32* %36, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @pp_cxx_semicolon(i32* %40)
  ret void
}

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i64 @DECL_CONTEXT(i32) #1

declare dso_local i32 @pp_cxx_nested_name_specifier(i32*, i64) #1

declare dso_local i32 @pp_cxx_unqualified_id(i32*, i32) #1

declare dso_local i32 @pp_cxx_whitespace(i32*) #1

declare dso_local i32 @pp_equal(i32*) #1

declare dso_local i32 @DECL_NAMESPACE_ALIAS(i32) #1

declare dso_local i32 @pp_cxx_qualified_id(i32*, i32) #1

declare dso_local i32 @pp_cxx_semicolon(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
