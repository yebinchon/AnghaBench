; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_find_replacement_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_find_replacement_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_NULL = common dso_local global i64 0, align 8
@TREE_LEFT_OFF = common dso_local global i64 0, align 8
@TREE_RIGHT_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64*)* @find_replacement_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_replacement_node(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @get_left(i32* %12, i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @ADDR_NULL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @TREE_LEFT_OFF, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %33, %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @get_right(i32* %23, i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @ADDR_NULL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %4, align 8
  br label %69

33:                                               ; preds = %22
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @TREE_RIGHT_OFF, align 8
  %36 = add nsw i64 %34, %35
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %8, align 8
  br label %22

38:                                               ; preds = %3
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @get_right(i32* %39, i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @ADDR_NULL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @TREE_RIGHT_OFF, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %60, %45
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @get_left(i32* %50, i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @ADDR_NULL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, i64* %9, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %4, align 8
  br label %69

60:                                               ; preds = %49
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @TREE_LEFT_OFF, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %8, align 8
  br label %49

65:                                               ; preds = %38
  %66 = load i64, i64* @ADDR_NULL, align 8
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @ADDR_NULL, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %65, %56, %29
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i64 @get_left(i32*, i64) #1

declare dso_local i64 @get_right(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
