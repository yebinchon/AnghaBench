; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_biovec_create_pools.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_biovec_create_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biovec_slab = type { i32 }
%struct.bio_set = type { i32 }

@bvec_slabs = common dso_local global %struct.biovec_slab* null, align 8
@BIOVEC_MAX_IDX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio_set*, i32)* @biovec_create_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biovec_create_pools(%struct.bio_set* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.biovec_slab*, align 8
  store %struct.bio_set* %0, %struct.bio_set** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.biovec_slab*, %struct.biovec_slab** @bvec_slabs, align 8
  %8 = load i32, i32* @BIOVEC_MAX_IDX, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %7, i64 %9
  store %struct.biovec_slab* %10, %struct.biovec_slab** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.biovec_slab*, %struct.biovec_slab** %6, align 8
  %13 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mempool_create_slab_pool(i32 %11, i32 %14)
  %16 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %17 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %19 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
