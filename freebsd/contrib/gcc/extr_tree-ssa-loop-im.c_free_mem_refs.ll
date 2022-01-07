; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_free_mem_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_free_mem_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref = type { %struct.mem_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref*)* @free_mem_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mem_refs(%struct.mem_ref* %0) #0 {
  %2 = alloca %struct.mem_ref*, align 8
  %3 = alloca %struct.mem_ref*, align 8
  %4 = alloca %struct.mem_ref*, align 8
  store %struct.mem_ref* %0, %struct.mem_ref** %2, align 8
  %5 = load %struct.mem_ref*, %struct.mem_ref** %2, align 8
  store %struct.mem_ref* %5, %struct.mem_ref** %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %8 = icmp ne %struct.mem_ref* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %11 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %10, i32 0, i32 0
  %12 = load %struct.mem_ref*, %struct.mem_ref** %11, align 8
  store %struct.mem_ref* %12, %struct.mem_ref** %4, align 8
  %13 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  %14 = call i32 @free_mem_ref(%struct.mem_ref* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  store %struct.mem_ref* %16, %struct.mem_ref** %3, align 8
  br label %6

17:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free_mem_ref(%struct.mem_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
