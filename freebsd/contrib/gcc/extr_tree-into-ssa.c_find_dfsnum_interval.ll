; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_find_dfsnum_interval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_find_dfsnum_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_dfsnum = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dom_dfsnum*, i32, i32)* @find_dfsnum_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dfsnum_interval(%struct.dom_dfsnum* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dom_dfsnum*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dom_dfsnum* %0, %struct.dom_dfsnum** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %33, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add i32 %13, 1
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %17, %18
  %20 = udiv i32 %19, 2
  store i32 %20, i32* %9, align 4
  %21 = load %struct.dom_dfsnum*, %struct.dom_dfsnum** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dom_dfsnum, %struct.dom_dfsnum* %21, i64 %23
  %25 = getelementptr inbounds %struct.dom_dfsnum, %struct.dom_dfsnum* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %7, align 4
  br label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %11

34:                                               ; preds = %11
  %35 = load %struct.dom_dfsnum*, %struct.dom_dfsnum** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dom_dfsnum, %struct.dom_dfsnum* %35, i64 %37
  %39 = getelementptr inbounds %struct.dom_dfsnum, %struct.dom_dfsnum* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
