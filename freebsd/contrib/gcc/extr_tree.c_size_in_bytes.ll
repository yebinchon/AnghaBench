; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_size_in_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_size_in_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i64)* }

@error_mark_node = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@size_zero_node = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @size_in_bytes(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @error_mark_node, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @integer_zero_node, align 8
  store i64 %9, i64* %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TYPE_MAIN_VARIANT(i64 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @TYPE_SIZE_UNIT(i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %19 = load i32, i32* @NULL_TREE, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 %18(i32 %19, i64 %20)
  %22 = load i64, i64* @size_zero_node, align 8
  store i64 %22, i64* %2, align 8
  br label %33

23:                                               ; preds = %10
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @INTEGER_CST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @force_fit_type(i64 %29, i32 0, i32 0, i32 0)
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %31, %17, %8
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_SIZE_UNIT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @force_fit_type(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
