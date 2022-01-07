; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_look_for_address_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_look_for_address_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @look_for_address_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @look_for_address_of(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @TREE_CODE(i64 %6)
  %8 = load i64, i64* @ADDR_EXPR, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @get_base_var(i64 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @TREE_OPERAND(i64 %13, i32 0)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %43, %10
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @COMPONENT_REF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @TREE_OPERAND(i64 %26, i32 1)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @TREE_TYPE(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @DECL_FIELD_CONTEXT(i64 %30)
  %32 = call i32 @mark_interesting_addressof(i32 %29, i32 %31)
  br label %43

33:                                               ; preds = %20
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @ARRAY_REF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @TREE_TYPE(i64 %39)
  %41 = call i32 @get_canon_type(i32 %40, i32 0, i32 0)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @TREE_OPERAND(i64 %44, i32 0)
  store i64 %45, i64* %4, align 8
  br label %16

46:                                               ; preds = %16
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @VAR_DECL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @has_proper_scope_for_analysis(i64 %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %1
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @get_base_var(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @mark_interesting_addressof(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @DECL_FIELD_CONTEXT(i64) #1

declare dso_local i32 @get_canon_type(i32, i32, i32) #1

declare dso_local i32 @has_proper_scope_for_analysis(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
