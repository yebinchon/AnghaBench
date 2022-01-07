; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_lookup_anon_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_lookup_anon_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lookup_anon_field(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @TYPE_FIELDS(i64 %8)
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %62, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @TREE_STATIC(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %62

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @FIELD_DECL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @DECL_ARTIFICIAL(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  br label %62

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @DECL_NAME(i64 %29)
  %31 = load i64, i64* @NULL_TREE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @TREE_TYPE(i64 %35)
  %37 = call i64 @TYPE_MAIN_VARIANT(i64 %36)
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  br label %67

41:                                               ; preds = %33, %28
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @DECL_NAME(i64 %42)
  %44 = load i64, i64* @NULL_TREE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @TREE_TYPE(i64 %47)
  %49 = call i64 @ANON_AGGR_TYPE_P(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @lookup_anon_field(i64 %53, i64 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %3, align 8
  br label %67

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %46, %41
  br label %62

62:                                               ; preds = %61, %27, %17
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @TREE_CHAIN(i64 %63)
  store i64 %64, i64* %6, align 8
  br label %10

65:                                               ; preds = %10
  %66 = load i64, i64* @NULL_TREE, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %65, %58, %39
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_STATIC(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
