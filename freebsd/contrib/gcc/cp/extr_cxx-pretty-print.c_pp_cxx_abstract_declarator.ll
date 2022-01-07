; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_abstract_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_abstract_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_abstract_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_abstract_declarator(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @TYPE_PTRMEM_P(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @TYPE_PTRMEMFUNC_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @pp_cxx_right_paren(i32* %13)
  br label %38

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @POINTER_TYPE_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @ARRAY_TYPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @FUNCTION_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @pp_cxx_right_paren(i32* %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @TREE_TYPE(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %15
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @pp_cxx_direct_abstract_declarator(i32* %39, i32 %40)
  ret void
}

declare dso_local i64 @TYPE_PTRMEM_P(i32) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @pp_cxx_right_paren(i32*) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_cxx_direct_abstract_declarator(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
