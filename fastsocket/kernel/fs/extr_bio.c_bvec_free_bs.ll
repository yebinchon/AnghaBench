; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bvec_free_bs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bvec_free_bs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biovec_slab = type { i32 }
%struct.bio_set = type { i32 }
%struct.bio_vec = type { i32 }

@BIOVEC_NR_POOLS = common dso_local global i32 0, align 4
@BIOVEC_MAX_IDX = common dso_local global i32 0, align 4
@bvec_slabs = common dso_local global %struct.biovec_slab* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bvec_free_bs(%struct.bio_set* %0, %struct.bio_vec* %1, i32 %2) #0 {
  %4 = alloca %struct.bio_set*, align 8
  %5 = alloca %struct.bio_vec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.biovec_slab*, align 8
  store %struct.bio_set* %0, %struct.bio_set** %4, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BIOVEC_NR_POOLS, align 4
  %10 = icmp uge i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BIO_BUG_ON(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BIOVEC_MAX_IDX, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %18 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %19 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mempool_free(%struct.bio_vec* %17, i32 %20)
  br label %32

22:                                               ; preds = %3
  %23 = load %struct.biovec_slab*, %struct.biovec_slab** @bvec_slabs, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %23, i64 %25
  store %struct.biovec_slab* %26, %struct.biovec_slab** %7, align 8
  %27 = load %struct.biovec_slab*, %struct.biovec_slab** %7, align 8
  %28 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %31 = call i32 @kmem_cache_free(i32 %29, %struct.bio_vec* %30)
  br label %32

32:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @BIO_BUG_ON(i32) #1

declare dso_local i32 @mempool_free(%struct.bio_vec*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.bio_vec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
