; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_decl_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_decl_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@TFF_CLASS_KEY_OR_ENUM = common dso_local global i32 0, align 4
@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TFF_RETURN_TYPE = common dso_local global i32 0, align 4
@TFF_TEMPLATE_HEADER = common dso_local global i32 0, align 4
@cxx_pp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @decl_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decl_to_string(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @TYPE_DECL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @RECORD_TYPE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @UNION_TYPE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @ENUMERAL_TYPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %15, %10, %2
  %26 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %46

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @TREE_CODE(i32 %35)
  %37 = load i64, i64* @FUNCTION_DECL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %41 = load i32, i32* @TFF_RETURN_TYPE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* @TFF_TEMPLATE_HEADER, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = call i32 (...) @reinit_cxx_pp()
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dump_decl(i32 %51, i32 %52)
  %54 = load i32, i32* @cxx_pp, align 4
  %55 = call i8* @pp_formatted_text(i32 %54)
  ret i8* %55
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @reinit_cxx_pp(...) #1

declare dso_local i32 @dump_decl(i32, i32) #1

declare dso_local i8* @pp_formatted_text(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
