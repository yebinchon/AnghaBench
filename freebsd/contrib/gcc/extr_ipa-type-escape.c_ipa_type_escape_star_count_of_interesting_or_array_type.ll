; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_ipa_type_escape_star_count_of_interesting_or_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_ipa_type_escape_star_count_of_interesting_or_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_TYPE = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipa_type_escape_star_count_of_interesting_or_array_type(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %46

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TYPE_MAIN_VARIANT(i64 %9)
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %22, %8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @POINTER_TYPE_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @ARRAY_TYPE, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ true, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TREE_TYPE(i64 %23)
  %25 = call i64 @TYPE_MAIN_VARIANT(i64 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %11

28:                                               ; preds = %20
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @RECORD_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @UNION_TYPE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %33, %28
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %43, %7
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
