; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_find_more_ref_vops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_find_more_ref_vops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref = type { i32*, %struct.mem_ref* }

@bitmap_default_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref*, i32*)* @find_more_ref_vops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_more_ref_vops(%struct.mem_ref* %0, i32* %1) #0 {
  %3 = alloca %struct.mem_ref*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_ref*, align 8
  store %struct.mem_ref* %0, %struct.mem_ref** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 @bitmap_initialize(i32* %5, i32* @bitmap_default_obstack)
  %9 = call i32 @bitmap_initialize(i32* %6, i32* @bitmap_default_obstack)
  %10 = load %struct.mem_ref*, %struct.mem_ref** %3, align 8
  store %struct.mem_ref* %10, %struct.mem_ref** %7, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load %struct.mem_ref*, %struct.mem_ref** %7, align 8
  %13 = icmp ne %struct.mem_ref* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.mem_ref*, %struct.mem_ref** %7, align 8
  %16 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @bitmap_and(i32* %5, i32* %6, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @bitmap_ior_into(i32* %19, i32* %5)
  %21 = call i32 @bitmap_clear(i32* %5)
  %22 = load %struct.mem_ref*, %struct.mem_ref** %7, align 8
  %23 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @bitmap_ior_into(i32* %6, i32* %24)
  br label %26

26:                                               ; preds = %14
  %27 = load %struct.mem_ref*, %struct.mem_ref** %7, align 8
  %28 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %27, i32 0, i32 1
  %29 = load %struct.mem_ref*, %struct.mem_ref** %28, align 8
  store %struct.mem_ref* %29, %struct.mem_ref** %7, align 8
  br label %11

30:                                               ; preds = %11
  %31 = call i32 @bitmap_clear(i32* %6)
  ret void
}

declare dso_local i32 @bitmap_initialize(i32*, i32*) #1

declare dso_local i32 @bitmap_and(i32*, i32*, i32*) #1

declare dso_local i32 @bitmap_ior_into(i32*, i32*) #1

declare dso_local i32 @bitmap_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
