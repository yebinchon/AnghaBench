; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_vmap_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_vmap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, %struct.page**)* @vmap_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmap_page_range(i64 %0, i64 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page** %3, %struct.page*** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.page**, %struct.page*** %8, align 8
  %14 = call i32 @vmap_page_range_noflush(i64 %10, i64 %11, i32 %12, %struct.page** %13)
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @flush_cache_vmap(i64 %15, i64 %16)
  %18 = load i32, i32* %9, align 4
  ret i32 %18
}

declare dso_local i32 @vmap_page_range_noflush(i64, i64, i32, %struct.page**) #1

declare dso_local i32 @flush_cache_vmap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
