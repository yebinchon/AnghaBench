; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_start_probes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_start_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kmemtrace_kmalloc = common dso_local global i32 0, align 4
@kmemtrace_kmem_cache_alloc = common dso_local global i32 0, align 4
@kmemtrace_kmalloc_node = common dso_local global i32 0, align 4
@kmemtrace_kmem_cache_alloc_node = common dso_local global i32 0, align 4
@kmemtrace_kfree = common dso_local global i32 0, align 4
@kmemtrace_kmem_cache_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kmemtrace_start_probes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmemtrace_start_probes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @kmemtrace_kmalloc, align 4
  %4 = call i32 @register_trace_kmalloc(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %41

9:                                                ; preds = %0
  %10 = load i32, i32* @kmemtrace_kmem_cache_alloc, align 4
  %11 = call i32 @register_trace_kmem_cache_alloc(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %41

16:                                               ; preds = %9
  %17 = load i32, i32* @kmemtrace_kmalloc_node, align 4
  %18 = call i32 @register_trace_kmalloc_node(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %41

23:                                               ; preds = %16
  %24 = load i32, i32* @kmemtrace_kmem_cache_alloc_node, align 4
  %25 = call i32 @register_trace_kmem_cache_alloc_node(i32 %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %1, align 4
  br label %41

30:                                               ; preds = %23
  %31 = load i32, i32* @kmemtrace_kfree, align 4
  %32 = call i32 @register_trace_kfree(i32 %31)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @kmemtrace_kmem_cache_free, align 4
  %39 = call i32 @register_trace_kmem_cache_free(i32 %38)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %37, %35, %28, %21, %14, %7
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @register_trace_kmalloc(i32) #1

declare dso_local i32 @register_trace_kmem_cache_alloc(i32) #1

declare dso_local i32 @register_trace_kmalloc_node(i32) #1

declare dso_local i32 @register_trace_kmem_cache_alloc_node(i32) #1

declare dso_local i32 @register_trace_kfree(i32) #1

declare dso_local i32 @register_trace_kmem_cache_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
