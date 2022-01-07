; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_assign_dfs_numbers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_assign_dfs_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_node = type { i32, %struct.et_node*, %struct.et_node*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_node*, i32*)* @assign_dfs_numbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_dfs_numbers(%struct.et_node* %0, i32* %1) #0 {
  %3 = alloca %struct.et_node*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.et_node*, align 8
  store %struct.et_node* %0, %struct.et_node** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.et_node*, %struct.et_node** %3, align 8
  %10 = getelementptr inbounds %struct.et_node, %struct.et_node* %9, i32 0, i32 3
  store i32 %7, i32* %10, align 8
  %11 = load %struct.et_node*, %struct.et_node** %3, align 8
  %12 = getelementptr inbounds %struct.et_node, %struct.et_node* %11, i32 0, i32 2
  %13 = load %struct.et_node*, %struct.et_node** %12, align 8
  %14 = icmp ne %struct.et_node* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.et_node*, %struct.et_node** %3, align 8
  %17 = getelementptr inbounds %struct.et_node, %struct.et_node* %16, i32 0, i32 2
  %18 = load %struct.et_node*, %struct.et_node** %17, align 8
  %19 = load i32*, i32** %4, align 8
  call void @assign_dfs_numbers(%struct.et_node* %18, i32* %19)
  %20 = load %struct.et_node*, %struct.et_node** %3, align 8
  %21 = getelementptr inbounds %struct.et_node, %struct.et_node* %20, i32 0, i32 2
  %22 = load %struct.et_node*, %struct.et_node** %21, align 8
  %23 = getelementptr inbounds %struct.et_node, %struct.et_node* %22, i32 0, i32 1
  %24 = load %struct.et_node*, %struct.et_node** %23, align 8
  store %struct.et_node* %24, %struct.et_node** %5, align 8
  br label %25

25:                                               ; preds = %34, %15
  %26 = load %struct.et_node*, %struct.et_node** %5, align 8
  %27 = load %struct.et_node*, %struct.et_node** %3, align 8
  %28 = getelementptr inbounds %struct.et_node, %struct.et_node* %27, i32 0, i32 2
  %29 = load %struct.et_node*, %struct.et_node** %28, align 8
  %30 = icmp ne %struct.et_node* %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.et_node*, %struct.et_node** %5, align 8
  %33 = load i32*, i32** %4, align 8
  call void @assign_dfs_numbers(%struct.et_node* %32, i32* %33)
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.et_node*, %struct.et_node** %5, align 8
  %36 = getelementptr inbounds %struct.et_node, %struct.et_node* %35, i32 0, i32 1
  %37 = load %struct.et_node*, %struct.et_node** %36, align 8
  store %struct.et_node* %37, %struct.et_node** %5, align 8
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.et_node*, %struct.et_node** %3, align 8
  %44 = getelementptr inbounds %struct.et_node, %struct.et_node* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
