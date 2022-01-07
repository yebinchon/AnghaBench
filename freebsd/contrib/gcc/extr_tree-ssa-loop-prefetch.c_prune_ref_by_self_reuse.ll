; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_prune_ref_by_self_reuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_prune_ref_by_self_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PREFETCH_BLOCK = common dso_local global i32 0, align 4
@HAVE_BACKWARD_PREFETCH = common dso_local global i64 0, align 8
@HAVE_FORWARD_PREFETCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref*)* @prune_ref_by_self_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_ref_by_self_reuse(%struct.mem_ref* %0) #0 {
  %2 = alloca %struct.mem_ref*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mem_ref* %0, %struct.mem_ref** %2, align 8
  %5 = load %struct.mem_ref*, %struct.mem_ref** %2, align 8
  %6 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.mem_ref*, %struct.mem_ref** %2, align 8
  %17 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PREFETCH_BLOCK, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %50

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @HAVE_BACKWARD_PREFETCH, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @HAVE_FORWARD_PREFETCH, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %32
  %42 = load %struct.mem_ref*, %struct.mem_ref** %2, align 8
  %43 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %50

44:                                               ; preds = %38, %35
  %45 = load i32, i32* @PREFETCH_BLOCK, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sdiv i32 %45, %46
  %48 = load %struct.mem_ref*, %struct.mem_ref** %2, align 8
  %49 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %41, %28, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
