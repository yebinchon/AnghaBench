; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_slab_should_failslab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_slab_should_failslab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@cache_cache = common dso_local global %struct.kmem_cache zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32)* @slab_should_failslab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slab_should_failslab(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %7 = icmp eq %struct.kmem_cache* %6, @cache_cache
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

9:                                                ; preds = %2
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %11 = call i32 @obj_size(%struct.kmem_cache* %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @should_failslab(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %9, %8
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @should_failslab(i32, i32) #1

declare dso_local i32 @obj_size(%struct.kmem_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
