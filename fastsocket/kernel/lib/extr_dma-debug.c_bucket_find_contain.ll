; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_bucket_find_contain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_bucket_find_contain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_bucket = type { i32 }
%struct.dma_debug_entry = type { i32, i32 }

@containing_match = common dso_local global i32 0, align 4
@HASH_FN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_debug_entry* (%struct.hash_bucket**, %struct.dma_debug_entry*, i64*)* @bucket_find_contain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_debug_entry* @bucket_find_contain(%struct.hash_bucket** %0, %struct.dma_debug_entry* %1, i64* %2) #0 {
  %4 = alloca %struct.dma_debug_entry*, align 8
  %5 = alloca %struct.hash_bucket**, align 8
  %6 = alloca %struct.dma_debug_entry*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_debug_entry*, align 8
  %10 = alloca %struct.dma_debug_entry, align 4
  %11 = alloca i32, align 4
  store %struct.hash_bucket** %0, %struct.hash_bucket*** %5, align 8
  store %struct.dma_debug_entry* %1, %struct.dma_debug_entry** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %6, align 8
  %13 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dma_get_max_seg_size(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %6, align 8
  %17 = bitcast %struct.dma_debug_entry* %10 to i8*
  %18 = bitcast %struct.dma_debug_entry* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %32, %3
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load %struct.hash_bucket**, %struct.hash_bucket*** %5, align 8
  %25 = load %struct.hash_bucket*, %struct.hash_bucket** %24, align 8
  %26 = load i32, i32* @containing_match, align 4
  %27 = call %struct.dma_debug_entry* @__hash_bucket_find(%struct.hash_bucket* %25, %struct.dma_debug_entry* %10, i32 %26)
  store %struct.dma_debug_entry* %27, %struct.dma_debug_entry** %9, align 8
  %28 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %29 = icmp ne %struct.dma_debug_entry* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  store %struct.dma_debug_entry* %31, %struct.dma_debug_entry** %4, align 8
  br label %50

32:                                               ; preds = %23
  %33 = load %struct.hash_bucket**, %struct.hash_bucket*** %5, align 8
  %34 = load %struct.hash_bucket*, %struct.hash_bucket** %33, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = call i32 @put_hash_bucket(%struct.hash_bucket* %34, i64* %35)
  %37 = load i32, i32* @HASH_FN_SHIFT, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @HASH_FN_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i64*, i64** %7, align 8
  %47 = call %struct.hash_bucket* @get_hash_bucket(%struct.dma_debug_entry* %10, i64* %46)
  %48 = load %struct.hash_bucket**, %struct.hash_bucket*** %5, align 8
  store %struct.hash_bucket* %47, %struct.hash_bucket** %48, align 8
  br label %19

49:                                               ; preds = %19
  store %struct.dma_debug_entry* null, %struct.dma_debug_entry** %4, align 8
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  ret %struct.dma_debug_entry* %51
}

declare dso_local i32 @dma_get_max_seg_size(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.dma_debug_entry* @__hash_bucket_find(%struct.hash_bucket*, %struct.dma_debug_entry*, i32) #1

declare dso_local i32 @put_hash_bucket(%struct.hash_bucket*, i64*) #1

declare dso_local %struct.hash_bucket* @get_hash_bucket(%struct.dma_debug_entry*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
