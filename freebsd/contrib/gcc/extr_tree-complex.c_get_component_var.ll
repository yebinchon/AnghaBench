; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_get_component_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_get_component_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"$imag\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"$real\00", align 1
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@REALPART_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @get_component_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_component_var(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @DECL_UID(i32* %7)
  %9 = mul nsw i32 %8, 2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32* @cvc_lookup(i64 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @TREE_TYPE(i32* %18)
  %20 = call i32* @TREE_TYPE(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @IMAGPART_EXPR, align 4
  br label %36

34:                                               ; preds = %17
  %35 = load i32, i32* @REALPART_EXPR, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32* @create_one_component_var(i32* %20, i32* %21, i8* %25, i8* %29, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @cvc_insert(i64 %39, i32* %40)
  br label %42

42:                                               ; preds = %36, %2
  %43 = load i32*, i32** %6, align 8
  ret i32* %43
}

declare dso_local i32 @DECL_UID(i32*) #1

declare dso_local i32* @cvc_lookup(i64) #1

declare dso_local i32* @create_one_component_var(i32*, i32*, i8*, i8*, i32) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i32 @cvc_insert(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
