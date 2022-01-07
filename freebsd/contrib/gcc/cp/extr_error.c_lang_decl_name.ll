; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_lang_decl_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_lang_decl_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@TFF_PLAIN_IDENTIFIER = common dso_local global i32 0, align 4
@cxx_pp = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lang_decl_name(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %11 = call i8* @decl_as_string(i32 %9, i32 %10)
  store i8* %11, i8** %3, align 8
  br label %44

12:                                               ; preds = %2
  %13 = call i32 (...) @reinit_cxx_pp()
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @DECL_CLASS_SCOPE_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @CP_DECL_CONTEXT(i32 %21)
  %23 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %24 = call i32 @dump_type(i32 %22, i32 %23)
  %25 = load i32, i32* @cxx_pp, align 4
  %26 = call i32 @pp_cxx_colon_colon(i32 %25)
  br label %27

27:                                               ; preds = %20, %16, %12
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @FUNCTION_DECL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %35 = call i32 @dump_function_name(i32 %33, i32 %34)
  br label %41

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @DECL_NAME(i32 %37)
  %39 = load i32, i32* @TFF_PLAIN_IDENTIFIER, align 4
  %40 = call i32 @dump_decl(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* @cxx_pp, align 4
  %43 = call i8* @pp_formatted_text(i32 %42)
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %41, %8
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i8* @decl_as_string(i32, i32) #1

declare dso_local i32 @reinit_cxx_pp(...) #1

declare dso_local i64 @DECL_CLASS_SCOPE_P(i32) #1

declare dso_local i32 @dump_type(i32, i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i32) #1

declare dso_local i32 @pp_cxx_colon_colon(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @dump_function_name(i32, i32) #1

declare dso_local i32 @dump_decl(i32, i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i8* @pp_formatted_text(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
