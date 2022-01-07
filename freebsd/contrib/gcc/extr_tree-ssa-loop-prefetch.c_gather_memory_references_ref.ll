; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_gather_memory_references_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_gather_memory_references_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.mem_ref_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, %struct.mem_ref_group**, i32, i32, i32)* @gather_memory_references_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_memory_references_ref(%struct.loop* %0, %struct.mem_ref_group** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.loop*, align 8
  %7 = alloca %struct.mem_ref_group**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mem_ref_group*, align 8
  store %struct.loop* %0, %struct.loop** %6, align 8
  store %struct.mem_ref_group** %1, %struct.mem_ref_group*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.loop*, %struct.loop** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @analyze_ref(%struct.loop* %15, i32* %8, i32* %11, i32* %12, i32* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %31

20:                                               ; preds = %5
  %21 = load %struct.mem_ref_group**, %struct.mem_ref_group*** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.mem_ref_group* @find_or_create_group(%struct.mem_ref_group** %21, i32 %22, i32 %23)
  store %struct.mem_ref_group* %24, %struct.mem_ref_group** %14, align 8
  %25 = load %struct.mem_ref_group*, %struct.mem_ref_group** %14, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @record_ref(%struct.mem_ref_group* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @analyze_ref(%struct.loop*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.mem_ref_group* @find_or_create_group(%struct.mem_ref_group**, i32, i32) #1

declare dso_local i32 @record_ref(%struct.mem_ref_group*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
