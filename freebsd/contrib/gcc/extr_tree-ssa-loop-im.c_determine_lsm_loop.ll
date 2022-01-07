; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_determine_lsm_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_determine_lsm_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.mem_ref = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*)* @determine_lsm_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_lsm_loop(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_ref*, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  %7 = load %struct.loop*, %struct.loop** %2, align 8
  %8 = call i32* @get_loop_exit_edges(%struct.loop* %7, i32* %3)
  store i32* %8, i32** %4, align 8
  %9 = load %struct.loop*, %struct.loop** %2, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @loop_suitable_for_sm(%struct.loop* %9, i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @free(i32* %15)
  br label %37

17:                                               ; preds = %1
  %18 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.loop*, %struct.loop** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.mem_ref* @gather_mem_refs(%struct.loop* %19, i32 %20)
  store %struct.mem_ref* %21, %struct.mem_ref** %6, align 8
  %22 = load %struct.mem_ref*, %struct.mem_ref** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @find_more_ref_vops(%struct.mem_ref* %22, i32 %23)
  %25 = load %struct.loop*, %struct.loop** %2, align 8
  %26 = load %struct.mem_ref*, %struct.mem_ref** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @hoist_memory_references(%struct.loop* %25, %struct.mem_ref* %26, i32 %27, i32* %28, i32 %29)
  %31 = load %struct.mem_ref*, %struct.mem_ref** %6, align 8
  %32 = call i32 @free_mem_refs(%struct.mem_ref* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @free(i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BITMAP_FREE(i32 %35)
  br label %37

37:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32* @get_loop_exit_edges(%struct.loop*, i32*) #1

declare dso_local i32 @loop_suitable_for_sm(%struct.loop*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local %struct.mem_ref* @gather_mem_refs(%struct.loop*, i32) #1

declare dso_local i32 @find_more_ref_vops(%struct.mem_ref*, i32) #1

declare dso_local i32 @hoist_memory_references(%struct.loop*, %struct.mem_ref*, i32, i32*, i32) #1

declare dso_local i32 @free_mem_refs(%struct.mem_ref*) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
