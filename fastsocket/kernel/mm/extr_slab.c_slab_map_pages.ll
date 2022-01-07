; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_slab_map_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_slab_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.slab = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.slab*, i8*)* @slab_map_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slab_map_pages(%struct.kmem_cache* %0, %struct.slab* %1, i8* %2) #0 {
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca %struct.slab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store %struct.slab* %1, %struct.slab** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.page* @virt_to_page(i8* %9)
  store %struct.page* %10, %struct.page** %8, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.page*, %struct.page** %8, align 8
  %12 = call i32 @PageCompound(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %20 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %18, %3
  br label %25

25:                                               ; preds = %34, %24
  %26 = load %struct.page*, %struct.page** %8, align 8
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %28 = call i32 @page_set_cache(%struct.page* %26, %struct.kmem_cache* %27)
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = load %struct.slab*, %struct.slab** %5, align 8
  %31 = call i32 @page_set_slab(%struct.page* %29, %struct.slab* %30)
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 1
  store %struct.page* %33, %struct.page** %8, align 8
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %25, label %38

38:                                               ; preds = %34
  ret void
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @page_set_cache(%struct.page*, %struct.kmem_cache*) #1

declare dso_local i32 @page_set_slab(%struct.page*, %struct.slab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
