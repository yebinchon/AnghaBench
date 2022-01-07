; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_anything_to_prefetch_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_anything_to_prefetch_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref_group = type { %struct.mem_ref*, %struct.mem_ref_group* }
%struct.mem_ref = type { %struct.mem_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ref_group*)* @anything_to_prefetch_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anything_to_prefetch_p(%struct.mem_ref_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ref_group*, align 8
  %4 = alloca %struct.mem_ref*, align 8
  store %struct.mem_ref_group* %0, %struct.mem_ref_group** %3, align 8
  br label %5

5:                                                ; preds = %26, %1
  %6 = load %struct.mem_ref_group*, %struct.mem_ref_group** %3, align 8
  %7 = icmp ne %struct.mem_ref_group* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  %9 = load %struct.mem_ref_group*, %struct.mem_ref_group** %3, align 8
  %10 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %9, i32 0, i32 0
  %11 = load %struct.mem_ref*, %struct.mem_ref** %10, align 8
  store %struct.mem_ref* %11, %struct.mem_ref** %4, align 8
  br label %12

12:                                               ; preds = %21, %8
  %13 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %14 = icmp ne %struct.mem_ref* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %17 = call i64 @should_issue_prefetch_p(%struct.mem_ref* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %31

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %23 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %22, i32 0, i32 0
  %24 = load %struct.mem_ref*, %struct.mem_ref** %23, align 8
  store %struct.mem_ref* %24, %struct.mem_ref** %4, align 8
  br label %12

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.mem_ref_group*, %struct.mem_ref_group** %3, align 8
  %28 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %27, i32 0, i32 1
  %29 = load %struct.mem_ref_group*, %struct.mem_ref_group** %28, align 8
  store %struct.mem_ref_group* %29, %struct.mem_ref_group** %3, align 8
  br label %5

30:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @should_issue_prefetch_p(%struct.mem_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
