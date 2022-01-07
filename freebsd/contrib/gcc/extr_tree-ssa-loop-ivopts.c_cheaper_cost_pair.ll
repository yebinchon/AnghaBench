; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_cheaper_cost_pair.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_cheaper_cost_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cost_pair = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cost_pair*, %struct.cost_pair*)* @cheaper_cost_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cheaper_cost_pair(%struct.cost_pair* %0, %struct.cost_pair* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cost_pair*, align 8
  %5 = alloca %struct.cost_pair*, align 8
  store %struct.cost_pair* %0, %struct.cost_pair** %4, align 8
  store %struct.cost_pair* %1, %struct.cost_pair** %5, align 8
  %6 = load %struct.cost_pair*, %struct.cost_pair** %4, align 8
  %7 = icmp ne %struct.cost_pair* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

9:                                                ; preds = %2
  %10 = load %struct.cost_pair*, %struct.cost_pair** %5, align 8
  %11 = icmp ne %struct.cost_pair* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %45

13:                                               ; preds = %9
  %14 = load %struct.cost_pair*, %struct.cost_pair** %4, align 8
  %15 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cost_pair*, %struct.cost_pair** %5, align 8
  %18 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %45

22:                                               ; preds = %13
  %23 = load %struct.cost_pair*, %struct.cost_pair** %4, align 8
  %24 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.cost_pair*, %struct.cost_pair** %5, align 8
  %27 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.cost_pair*, %struct.cost_pair** %4, align 8
  %33 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cost_pair*, %struct.cost_pair** %5, align 8
  %38 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %30, %21, %12, %8
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
