; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_issue_prefetches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_issue_prefetches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref_group = type { %struct.mem_ref*, %struct.mem_ref_group* }
%struct.mem_ref = type { i64, %struct.mem_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref_group*, i32, i32)* @issue_prefetches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @issue_prefetches(%struct.mem_ref_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ref_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_ref*, align 8
  store %struct.mem_ref_group* %0, %struct.mem_ref_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %3
  %9 = load %struct.mem_ref_group*, %struct.mem_ref_group** %4, align 8
  %10 = icmp ne %struct.mem_ref_group* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  %12 = load %struct.mem_ref_group*, %struct.mem_ref_group** %4, align 8
  %13 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %12, i32 0, i32 0
  %14 = load %struct.mem_ref*, %struct.mem_ref** %13, align 8
  store %struct.mem_ref* %14, %struct.mem_ref** %7, align 8
  br label %15

15:                                               ; preds = %29, %11
  %16 = load %struct.mem_ref*, %struct.mem_ref** %7, align 8
  %17 = icmp ne %struct.mem_ref* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.mem_ref*, %struct.mem_ref** %7, align 8
  %20 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.mem_ref*, %struct.mem_ref** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @issue_prefetch_ref(%struct.mem_ref* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.mem_ref*, %struct.mem_ref** %7, align 8
  %31 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %30, i32 0, i32 1
  %32 = load %struct.mem_ref*, %struct.mem_ref** %31, align 8
  store %struct.mem_ref* %32, %struct.mem_ref** %7, align 8
  br label %15

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.mem_ref_group*, %struct.mem_ref_group** %4, align 8
  %36 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %35, i32 0, i32 1
  %37 = load %struct.mem_ref_group*, %struct.mem_ref_group** %36, align 8
  store %struct.mem_ref_group* %37, %struct.mem_ref_group** %4, align 8
  br label %8

38:                                               ; preds = %8
  ret void
}

declare dso_local i32 @issue_prefetch_ref(%struct.mem_ref*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
