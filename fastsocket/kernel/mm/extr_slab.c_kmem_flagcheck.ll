; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_flagcheck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_flagcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@CONFIG_ZONE_DMA_FLAG = common dso_local global i64 0, align 8
@GFP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, i32)* @kmem_flagcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmem_flagcheck(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @CONFIG_ZONE_DMA_FLAG, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GFP_DMA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %14 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_DMA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  br label %29

22:                                               ; preds = %7
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %24 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_DMA, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @BUG_ON(i32 %27)
  br label %29

29:                                               ; preds = %22, %12
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
