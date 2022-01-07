; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_host_integerp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_host_integerp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_integerp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @INTEGER_CST, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %49

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TREE_INT_CST_HIGH(i32 %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @TREE_INT_CST_LOW(i32 %14)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TREE_INT_CST_HIGH(i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @TREE_INT_CST_LOW(i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  %31 = call i32 @TYPE_UNSIGNED(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TREE_TYPE(i32 %34)
  %36 = call i64 @TYPE_IS_SIZETYPE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33, %24, %20, %17
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @TREE_INT_CST_HIGH(i32 %42)
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %33, %28, %13
  %48 = phi i1 [ true, %33 ], [ true, %28 ], [ true, %13 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %2
  %50 = phi i1 [ false, %2 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

declare dso_local i64 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TYPE_IS_SIZETYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
