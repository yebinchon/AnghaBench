; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_record_or_union_type_has_array_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_record_or_union_type_has_array_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @record_or_union_type_has_array_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_or_union_type_has_array_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @TYPE_FIELDS(i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @FIELD_DECL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @TREE_TYPE(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @RECORD_TYPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @TREE_CODE(i64 %26)
  %28 = load i64, i64* @UNION_TYPE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %25, %18
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @record_or_union_type_has_array_p(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %52

40:                                               ; preds = %35, %30
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @ARRAY_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %52

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %13
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @TREE_CHAIN(i64 %49)
  store i64 %50, i64* %5, align 8
  br label %10

51:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %45, %39
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
