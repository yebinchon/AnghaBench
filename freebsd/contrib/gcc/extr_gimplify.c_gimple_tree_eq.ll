; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimple_tree_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimple_tree_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @gimple_tree_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimple_tree_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @TREE_CODE(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @TREE_CODE(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @TREE_TYPE(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @TREE_TYPE(i32 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %44

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @operand_equal_p(i32 %31, i32 %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %44

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @gimple_tree_hash(i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @gimple_tree_hash(i8* %39)
  %41 = icmp eq i64 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %35, %29
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i32 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @gimple_tree_hash(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
