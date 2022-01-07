; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_hash_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_hash_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @type_hash_list(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @TREE_VALUE(i64 %11)
  %13 = load i64, i64* @error_mark_node, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @TREE_VALUE(i64 %16)
  %18 = call i32 @TYPE_HASH(i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @iterative_hash_object(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %15, %10
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TREE_CHAIN(i64 %23)
  store i64 %24, i64* %5, align 8
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @iterative_hash_object(i32, i32) #1

declare dso_local i32 @TYPE_HASH(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
