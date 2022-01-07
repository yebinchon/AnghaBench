; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bio = type { %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { i64, i32* }
%struct.bio_set = type { i32 }

@BIO_CLONED = common dso_local global i32 0, align 4
@BIO_FS_INTEGRITY = common dso_local global i32 0, align 4
@bip_slab = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_integrity_free(%struct.bio* %0, %struct.bio_set* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio_set*, align 8
  %5 = alloca %struct.bio_integrity_payload*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.bio_set* %1, %struct.bio_set** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %7, align 8
  store %struct.bio_integrity_payload* %8, %struct.bio_integrity_payload** %5, align 8
  %9 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %10 = icmp eq %struct.bio_integrity_payload* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = load i32, i32* @BIO_CLONED, align 4
  %15 = call i32 @bio_flagged(%struct.bio* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = load i32, i32* @BIO_FS_INTEGRITY, align 4
  %20 = call i32 @bio_flagged(%struct.bio* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %24 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %29 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  br label %32

32:                                               ; preds = %27, %22, %17, %2
  %33 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %34 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @use_bip_pool(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %40 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %41 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mempool_free(%struct.bio_integrity_payload* %39, i32 %42)
  br label %54

44:                                               ; preds = %32
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bip_slab, align 8
  %46 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %47 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %53 = call i32 @kmem_cache_free(i32 %51, %struct.bio_integrity_payload* %52)
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.bio*, %struct.bio** %3, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 0
  store %struct.bio_integrity_payload* null, %struct.bio_integrity_payload** %56, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @use_bip_pool(i64) #1

declare dso_local i32 @mempool_free(%struct.bio_integrity_payload*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.bio_integrity_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
