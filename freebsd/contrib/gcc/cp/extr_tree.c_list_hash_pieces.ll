; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_list_hash_pieces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_list_hash_pieces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @list_hash_pieces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_hash_pieces(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @TREE_HASH(i64 %11)
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %10, %3
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @TREE_HASH(i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1007
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TREE_HASH(i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1009
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i64 @TREE_HASH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
