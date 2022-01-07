; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_aggregate_contains_union_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_aggregate_contains_union_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNION_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @aggregate_contains_union_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aggregate_contains_union_type(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @TREE_CODE(i64 %5)
  %7 = load i64, i64* @UNION_TYPE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %53

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @ARRAY_TYPE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @TREE_TYPE(i64 %21)
  %23 = call i32 @aggregate_contains_union_type(i64 %22)
  store i32 %23, i32* %2, align 4
  br label %53

24:                                               ; preds = %15
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @RECORD_TYPE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %53

30:                                               ; preds = %24
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @TYPE_FIELDS(i64 %31)
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %49, %30
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @TREE_CODE(i64 %37)
  %39 = load i64, i64* @FIELD_DECL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @TREE_TYPE(i64 %42)
  %44 = call i32 @aggregate_contains_union_type(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %53

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TREE_CHAIN(i64 %50)
  store i64 %51, i64* %4, align 8
  br label %33

52:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %46, %29, %20, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
