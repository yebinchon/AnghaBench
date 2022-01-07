; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c__smem_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c__smem_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smem_shared = type { %struct.smem_heap_entry* }
%struct.smem_heap_entry = type { i32, i64, i64 }

@MSM_SHARED_RAM_BASE = common dso_local global i64 0, align 8
@SMEM_NUM_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @_smem_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_smem_find(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.smem_shared*, align 8
  %7 = alloca %struct.smem_heap_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @MSM_SHARED_RAM_BASE, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.smem_shared*
  store %struct.smem_shared* %10, %struct.smem_shared** %6, align 8
  %11 = load %struct.smem_shared*, %struct.smem_shared** %6, align 8
  %12 = getelementptr inbounds %struct.smem_shared, %struct.smem_shared* %11, i32 0, i32 0
  %13 = load %struct.smem_heap_entry*, %struct.smem_heap_entry** %12, align 8
  store %struct.smem_heap_entry* %13, %struct.smem_heap_entry** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SMEM_NUM_ITEMS, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.smem_heap_entry*, %struct.smem_heap_entry** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.smem_heap_entry, %struct.smem_heap_entry* %19, i64 %21
  %23 = getelementptr inbounds %struct.smem_heap_entry, %struct.smem_heap_entry* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load %struct.smem_heap_entry*, %struct.smem_heap_entry** %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.smem_heap_entry, %struct.smem_heap_entry* %27, i64 %29
  %31 = getelementptr inbounds %struct.smem_heap_entry, %struct.smem_heap_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* @MSM_SHARED_RAM_BASE, align 8
  %35 = load %struct.smem_heap_entry*, %struct.smem_heap_entry** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.smem_heap_entry, %struct.smem_heap_entry* %35, i64 %37
  %39 = getelementptr inbounds %struct.smem_heap_entry, %struct.smem_heap_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %34, %40
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %3, align 8
  br label %44

43:                                               ; preds = %18
  store i8* null, i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %26, %17
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
