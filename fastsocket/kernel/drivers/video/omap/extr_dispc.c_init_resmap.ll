; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_init_resmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_init_resmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resmap = type { i64, i32, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resmap* (i64, i64)* @init_resmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resmap* @init_resmap(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.resmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resmap*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @PAGE_ALIGN(i64 %8)
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = udiv i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @RESMAP_SIZE(i32 %12)
  %14 = add i64 24, %13
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.resmap* @kzalloc(i64 %14, i32 %15)
  store %struct.resmap* %16, %struct.resmap** %7, align 8
  %17 = load %struct.resmap*, %struct.resmap** %7, align 8
  %18 = icmp eq %struct.resmap* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.resmap* null, %struct.resmap** %3, align 8
  br label %33

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.resmap*, %struct.resmap** %7, align 8
  %23 = getelementptr inbounds %struct.resmap, %struct.resmap* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.resmap*, %struct.resmap** %7, align 8
  %26 = getelementptr inbounds %struct.resmap, %struct.resmap* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.resmap*, %struct.resmap** %7, align 8
  %28 = getelementptr inbounds %struct.resmap, %struct.resmap* %27, i64 1
  %29 = bitcast %struct.resmap* %28 to i64*
  %30 = load %struct.resmap*, %struct.resmap** %7, align 8
  %31 = getelementptr inbounds %struct.resmap, %struct.resmap* %30, i32 0, i32 2
  store i64* %29, i64** %31, align 8
  %32 = load %struct.resmap*, %struct.resmap** %7, align 8
  store %struct.resmap* %32, %struct.resmap** %3, align 8
  br label %33

33:                                               ; preds = %20, %19
  %34 = load %struct.resmap*, %struct.resmap** %3, align 8
  ret %struct.resmap* %34
}

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local %struct.resmap* @kzalloc(i64, i32) #1

declare dso_local i64 @RESMAP_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
