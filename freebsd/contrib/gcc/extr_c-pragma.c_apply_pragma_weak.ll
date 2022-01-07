; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pragma.c_apply_pragma_weak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pragma.c_apply_pragma_weak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@SUPPORTS_WEAK = common dso_local global i64 0, align 8
@OPT_Wpragmas = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"applying #pragma weak %q+D after first use results in unspecified behavior\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @apply_pragma_weak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_pragma_weak(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @IDENTIFIER_LENGTH(i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @IDENTIFIER_POINTER(i64 %10)
  %12 = call i64 @build_string(i32 %9, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = call i32* @get_identifier(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @build_tree_list(i32* null, i64 %14)
  %16 = call i64 @build_tree_list(i32* %13, i64 %15)
  %17 = call i32 @decl_attributes(i64* %3, i64 %16, i32 0)
  br label %18

18:                                               ; preds = %7, %2
  %19 = load i64, i64* @SUPPORTS_WEAK, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @DECL_EXTERNAL(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @TREE_USED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @DECL_WEAK(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @DECL_ASSEMBLER_NAME(i64 %34)
  %36 = call i64 @TREE_SYMBOL_REFERENCED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @OPT_Wpragmas, align 4
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @warning(i32 %39, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %33, %29, %25, %21, %18
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @declare_weak(i64 %43)
  ret void
}

declare dso_local i64 @build_string(i32, i32) #1

declare dso_local i32 @IDENTIFIER_LENGTH(i64) #1

declare dso_local i32 @IDENTIFIER_POINTER(i64) #1

declare dso_local i32 @decl_attributes(i64*, i64, i32) #1

declare dso_local i64 @build_tree_list(i32*, i64) #1

declare dso_local i32* @get_identifier(i8*) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i64 @TREE_USED(i64) #1

declare dso_local i32 @DECL_WEAK(i64) #1

declare dso_local i64 @TREE_SYMBOL_REFERENCED(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i64) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i32 @declare_weak(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
