; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_free_mem_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_free_mem_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref*)* @free_mem_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mem_ref(%struct.mem_ref* %0) #0 {
  %2 = alloca %struct.mem_ref*, align 8
  store %struct.mem_ref* %0, %struct.mem_ref** %2, align 8
  %3 = load %struct.mem_ref*, %struct.mem_ref** %2, align 8
  %4 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @free_mem_ref_locs(i32 %5)
  %7 = load %struct.mem_ref*, %struct.mem_ref** %2, align 8
  %8 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BITMAP_FREE(i32 %9)
  %11 = load %struct.mem_ref*, %struct.mem_ref** %2, align 8
  %12 = call i32 @free(%struct.mem_ref* %11)
  ret void
}

declare dso_local i32 @free_mem_ref_locs(i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @free(%struct.mem_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
