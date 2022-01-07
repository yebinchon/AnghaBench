; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_determine_key_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_determine_key_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @determine_key_method(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @TYPE_FOR_JAVA(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @processing_template_decl, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @CLASSTYPE_TEMPLATE_INSTANTIATION(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = call i64 @CLASSTYPE_INTERFACE_KNOWN(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %8, %1
  br label %47

20:                                               ; preds = %15
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @TYPE_METHODS(i64 %21)
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %43, %20
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @NULL_TREE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @DECL_VINDEX(i64 %28)
  %30 = load i64, i64* @NULL_TREE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @DECL_DECLARED_INLINE_P(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @DECL_PURE_VIRTUAL_P(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  store i64 %41, i64* %4, align 8
  br label %46

42:                                               ; preds = %36, %32, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @TREE_CHAIN(i64 %44)
  store i64 %45, i64* %3, align 8
  br label %23

46:                                               ; preds = %40, %23
  br label %47

47:                                               ; preds = %46, %19
  ret void
}

declare dso_local i64 @TYPE_FOR_JAVA(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INSTANTIATION(i64) #1

declare dso_local i64 @CLASSTYPE_INTERFACE_KNOWN(i64) #1

declare dso_local i64 @TYPE_METHODS(i64) #1

declare dso_local i64 @DECL_VINDEX(i64) #1

declare dso_local i32 @DECL_DECLARED_INLINE_P(i64) #1

declare dso_local i32 @DECL_PURE_VIRTUAL_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
