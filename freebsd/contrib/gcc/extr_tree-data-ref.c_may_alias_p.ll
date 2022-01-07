; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_may_alias_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_may_alias_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@ADDR_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.data_reference*, %struct.data_reference*, i32*)* @may_alias_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_alias_p(i32 %0, i32 %1, %struct.data_reference* %2, %struct.data_reference* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.data_reference*, align 8
  %10 = alloca %struct.data_reference*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.data_reference* %2, %struct.data_reference** %9, align 8
  store %struct.data_reference* %3, %struct.data_reference** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @ADDR_EXPR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @TREE_CODE(i32 %17)
  %19 = load i64, i64* @ADDR_EXPR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %16, %5
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @TREE_CODE(i32 %22)
  %24 = load i64, i64* @ADDR_EXPR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @ADDR_EXPR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @TREE_OPERAND(i32 %32, i32 0)
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @TREE_OPERAND(i32 %34, i32 0)
  %36 = icmp eq i64 %33, %35
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %6, align 4
  br label %65

39:                                               ; preds = %26, %21
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @TREE_CODE(i32 %40)
  %42 = load i64, i64* @ADDR_EXPR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @TREE_OPERAND(i32 %46, i32 0)
  %48 = load %struct.data_reference*, %struct.data_reference** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @ptr_decl_may_alias_p(i32 %45, i64 %47, %struct.data_reference* %48, i32* %49)
  store i32 %50, i32* %6, align 4
  br label %65

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @TREE_OPERAND(i32 %53, i32 0)
  %55 = load %struct.data_reference*, %struct.data_reference** %9, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @ptr_decl_may_alias_p(i32 %52, i64 %54, %struct.data_reference* %55, i32* %56)
  store i32 %57, i32* %6, align 4
  br label %65

58:                                               ; preds = %16
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.data_reference*, %struct.data_reference** %9, align 8
  %62 = load %struct.data_reference*, %struct.data_reference** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @ptr_ptr_may_alias_p(i32 %59, i32 %60, %struct.data_reference* %61, %struct.data_reference* %62, i32* %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %51, %44, %31
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @ptr_decl_may_alias_p(i32, i64, %struct.data_reference*, i32*) #1

declare dso_local i32 @ptr_ptr_may_alias_p(i32, i32, %struct.data_reference*, %struct.data_reference*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
