; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-phinodes.c_allocate_phi_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-phinodes.c_allocate_phi_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_BUCKETS = common dso_local global i32 0, align 4
@free_phinode_count = common dso_local global i64 0, align 8
@free_phinodes = common dso_local global i64* null, align 8
@phi_kind = common dso_local global i64 0, align 8
@phi_nodes_created = common dso_local global i32 0, align 4
@phi_nodes_reused = common dso_local global i32 0, align 4
@tree_node_counts = common dso_local global i32* null, align 8
@tree_node_sizes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @allocate_phi_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @allocate_phi_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @NUM_BUCKETS, align 4
  %7 = sub nsw i32 %6, 2
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 4, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* @free_phinode_count, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %33, %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NUM_BUCKETS, align 4
  %22 = sub nsw i32 %21, 2
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i64*, i64** @free_phinodes, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %36

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %19

36:                                               ; preds = %31, %19
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NUM_BUCKETS, align 4
  %40 = sub nsw i32 %39, 2
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load i64*, i64** @free_phinodes, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @PHI_ARG_CAPACITY(i64 %47)
  %49 = load i32, i32* %2, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %42
  %52 = load i64, i64* @free_phinode_count, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* @free_phinode_count, align 8
  %54 = load i64*, i64** @free_phinodes, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %3, align 8
  %59 = load i64*, i64** @free_phinodes, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @PHI_CHAIN(i64 %63)
  %65 = load i64*, i64** @free_phinodes, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %64, i64* %68, align 8
  br label %72

69:                                               ; preds = %42, %37
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @ggc_alloc(i32 %70)
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %69, %51
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i32 @PHI_ARG_CAPACITY(i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

declare dso_local i64 @ggc_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
