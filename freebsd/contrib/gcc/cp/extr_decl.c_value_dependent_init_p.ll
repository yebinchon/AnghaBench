; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_value_dependent_init_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_value_dependent_init_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TREE_LIST = common dso_local global i64 0, align 8
@CONSTRUCTOR = common dso_local global i64 0, align 8
@constructor_elt = common dso_local global i32 0, align 4
@gc = common dso_local global i32 0, align 4
@elts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @value_dependent_init_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @value_dependent_init_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @TREE_LIST, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @any_value_dependent_elements_p(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %53

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @CONSTRUCTOR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load i32, i32* @constructor_elt, align 4
  %20 = load i32, i32* @gc, align 4
  %21 = call i32 @VEC(i32 %19, i32 %20)
  %22 = load i32, i32* @elts, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @CONSTRUCTOR_ELTS(i32 %24)
  store i32 %25, i32* @elts, align 4
  %26 = load i32, i32* @constructor_elt, align 4
  %27 = load i32, i32* @elts, align 4
  %28 = call i64 @VEC_length(i32 %26, i32 %27)
  store i64 %28, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %44, %18
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32, i32* @constructor_elt, align 4
  %35 = load i32, i32* @elts, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.TYPE_2__* @VEC_index(i32 %34, i32 %35, i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @value_dependent_init_p(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %53

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %29

47:                                               ; preds = %29
  br label %51

48:                                               ; preds = %13
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @value_dependent_expression_p(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %48, %42, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @any_value_dependent_elements_p(i32) #1

declare dso_local i32 @VEC(i32, i32) #1

declare dso_local i32 @CONSTRUCTOR_ELTS(i32) #1

declare dso_local i64 @VEC_length(i32, i32) #1

declare dso_local %struct.TYPE_2__* @VEC_index(i32, i32, i64) #1

declare dso_local i32 @value_dependent_expression_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
