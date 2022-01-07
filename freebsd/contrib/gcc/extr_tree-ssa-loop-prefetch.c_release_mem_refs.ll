; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_release_mem_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_release_mem_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref_group = type { %struct.mem_ref_group*, %struct.mem_ref_group* }
%struct.mem_ref = type { %struct.mem_ref*, %struct.mem_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref_group*)* @release_mem_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_mem_refs(%struct.mem_ref_group* %0) #0 {
  %2 = alloca %struct.mem_ref_group*, align 8
  %3 = alloca %struct.mem_ref_group*, align 8
  %4 = alloca %struct.mem_ref*, align 8
  %5 = alloca %struct.mem_ref*, align 8
  store %struct.mem_ref_group* %0, %struct.mem_ref_group** %2, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load %struct.mem_ref_group*, %struct.mem_ref_group** %2, align 8
  %8 = icmp ne %struct.mem_ref_group* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load %struct.mem_ref_group*, %struct.mem_ref_group** %2, align 8
  %11 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %10, i32 0, i32 0
  %12 = load %struct.mem_ref_group*, %struct.mem_ref_group** %11, align 8
  store %struct.mem_ref_group* %12, %struct.mem_ref_group** %3, align 8
  %13 = load %struct.mem_ref_group*, %struct.mem_ref_group** %2, align 8
  %14 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %13, i32 0, i32 1
  %15 = load %struct.mem_ref_group*, %struct.mem_ref_group** %14, align 8
  %16 = bitcast %struct.mem_ref_group* %15 to %struct.mem_ref*
  store %struct.mem_ref* %16, %struct.mem_ref** %4, align 8
  br label %17

17:                                               ; preds = %27, %9
  %18 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %19 = icmp ne %struct.mem_ref* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %22 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %21, i32 0, i32 0
  %23 = load %struct.mem_ref*, %struct.mem_ref** %22, align 8
  store %struct.mem_ref* %23, %struct.mem_ref** %5, align 8
  %24 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %25 = bitcast %struct.mem_ref* %24 to %struct.mem_ref_group*
  %26 = call i32 @free(%struct.mem_ref_group* %25)
  br label %27

27:                                               ; preds = %20
  %28 = load %struct.mem_ref*, %struct.mem_ref** %5, align 8
  store %struct.mem_ref* %28, %struct.mem_ref** %4, align 8
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.mem_ref_group*, %struct.mem_ref_group** %2, align 8
  %31 = call i32 @free(%struct.mem_ref_group* %30)
  br label %32

32:                                               ; preds = %29
  %33 = load %struct.mem_ref_group*, %struct.mem_ref_group** %3, align 8
  store %struct.mem_ref_group* %33, %struct.mem_ref_group** %2, align 8
  br label %6

34:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free(%struct.mem_ref_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
