; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_unshare_aff_combination.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_unshare_aff_combination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.affine_tree_combination = type { i32, i8*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.affine_tree_combination*)* @unshare_aff_combination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unshare_aff_combination(%struct.affine_tree_combination* %0) #0 {
  %2 = alloca %struct.affine_tree_combination*, align 8
  %3 = alloca i32, align 4
  store %struct.affine_tree_combination* %0, %struct.affine_tree_combination** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %2, align 8
  %7 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %2, align 8
  %12 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %11, i32 0, i32 2
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @unshare_expr(i8* %17)
  %19 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %2, align 8
  %20 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %18, i8** %24, align 8
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %4
  %29 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %2, align 8
  %30 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %2, align 8
  %35 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @unshare_expr(i8* %36)
  %38 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %2, align 8
  %39 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %33, %28
  ret void
}

declare dso_local i8* @unshare_expr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
