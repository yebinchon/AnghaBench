; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_clone_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_clone_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { i32, i32, i64, i32 }
%struct.cgraph_node = type { i32 }

@REG_BR_PROB_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgraph_edge* @cgraph_clone_edge(%struct.cgraph_edge* %0, %struct.cgraph_node* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cgraph_edge*, align 8
  %8 = alloca %struct.cgraph_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_edge* %0, %struct.cgraph_edge** %7, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %15 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %16 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %20 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %25 = sdiv i32 %23, %24
  %26 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %27 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %14, i32 %17, i32 %18, i32 %25, i64 %31)
  store %struct.cgraph_edge* %32, %struct.cgraph_edge** %13, align 8
  %33 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %34 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %37 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %6
  %41 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  %42 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %45 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %49 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %54 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %40
  br label %56

56:                                               ; preds = %55, %6
  %57 = load %struct.cgraph_edge*, %struct.cgraph_edge** %13, align 8
  ret %struct.cgraph_edge* %57
}

declare dso_local %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
