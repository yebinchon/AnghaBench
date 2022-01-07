; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_ipa_type_escape_star_count_of_interesting_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_ipa_type_escape_star_count_of_interesting_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RECORD_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipa_type_escape_star_count_of_interesting_type(i64 %0) #0 {
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
  br label %39

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TYPE_MAIN_VARIANT(i64 %9)
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %15, %8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @POINTER_TYPE_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @TREE_TYPE(i64 %16)
  %18 = call i64 @TYPE_MAIN_VARIANT(i64 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %11

21:                                               ; preds = %11
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @RECORD_TYPE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @UNION_TYPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %26, %21
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
