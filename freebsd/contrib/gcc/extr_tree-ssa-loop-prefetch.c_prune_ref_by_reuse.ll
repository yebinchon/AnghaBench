; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_prune_ref_by_reuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_prune_ref_by_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref = type { i64, %struct.mem_ref* }

@WRITE_CAN_USE_READ_PREFETCH = common dso_local global i32 0, align 4
@READ_CAN_USE_WRITE_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref*, %struct.mem_ref*)* @prune_ref_by_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_ref_by_reuse(%struct.mem_ref* %0, %struct.mem_ref* %1) #0 {
  %3 = alloca %struct.mem_ref*, align 8
  %4 = alloca %struct.mem_ref*, align 8
  %5 = alloca %struct.mem_ref*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ref* %0, %struct.mem_ref** %3, align 8
  store %struct.mem_ref* %1, %struct.mem_ref** %4, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %8 = call i32 @prune_ref_by_self_reuse(%struct.mem_ref* %7)
  %9 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  store %struct.mem_ref* %9, %struct.mem_ref** %5, align 8
  br label %10

10:                                               ; preds = %51, %2
  %11 = load %struct.mem_ref*, %struct.mem_ref** %5, align 8
  %12 = icmp ne %struct.mem_ref* %11, null
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  %14 = load %struct.mem_ref*, %struct.mem_ref** %5, align 8
  %15 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %16 = icmp eq %struct.mem_ref* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %51

18:                                               ; preds = %13
  %19 = load i32, i32* @WRITE_CAN_USE_READ_PREFETCH, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %23 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.mem_ref*, %struct.mem_ref** %5, align 8
  %28 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %51

32:                                               ; preds = %26, %21, %18
  %33 = load i32, i32* @READ_CAN_USE_WRITE_PREFETCH, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %37 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.mem_ref*, %struct.mem_ref** %5, align 8
  %42 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40, %35, %32
  %47 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %48 = load %struct.mem_ref*, %struct.mem_ref** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @prune_ref_by_group_reuse(%struct.mem_ref* %47, %struct.mem_ref* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %45, %31, %17
  %52 = load %struct.mem_ref*, %struct.mem_ref** %5, align 8
  %53 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %52, i32 0, i32 1
  %54 = load %struct.mem_ref*, %struct.mem_ref** %53, align 8
  store %struct.mem_ref* %54, %struct.mem_ref** %5, align 8
  br label %10

55:                                               ; preds = %10
  ret void
}

declare dso_local i32 @prune_ref_by_self_reuse(%struct.mem_ref*) #1

declare dso_local i32 @prune_ref_by_group_reuse(%struct.mem_ref*, %struct.mem_ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
