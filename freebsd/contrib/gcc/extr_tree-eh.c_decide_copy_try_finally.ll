; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_decide_copy_try_finally.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_decide_copy_try_finally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @decide_copy_try_finally to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decide_copy_try_finally(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @optimize, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @estimate_num_insns(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 10, %19
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* @optimize_size, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %11
  %29 = load i32, i32* @optimize, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 100
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 2
  %38 = icmp slt i32 %35, %37
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ true, %31 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %54

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 40
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 2
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 3
  %50 = icmp slt i32 %47, %49
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ true, %42 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %39, %23, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @estimate_num_insns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
