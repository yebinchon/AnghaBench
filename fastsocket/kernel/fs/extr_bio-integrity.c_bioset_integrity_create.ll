; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bioset_integrity_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bioset_integrity_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bio_set = type { i32 }

@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@bip_slab = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bioset_integrity_create(%struct.bio_set* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bio_set* %0, %struct.bio_set** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @BIO_MAX_PAGES, align 4
  %8 = call i32 @vecs_to_idx(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %10 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bip_slab, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mempool_create_slab_pool(i32 %15, i32 %21)
  %23 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %24 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %26 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %31

30:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @vecs_to_idx(i32) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
