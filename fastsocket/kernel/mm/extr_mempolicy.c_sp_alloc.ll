; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_sp_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_sp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_node = type { i64, i64, %struct.mempolicy* }
%struct.mempolicy = type { i32 }

@sn_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MPOL_F_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sp_node* (i64, i64, %struct.mempolicy*)* @sp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sp_node* @sp_alloc(i64 %0, i64 %1, %struct.mempolicy* %2) #0 {
  %4 = alloca %struct.sp_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mempolicy*, align 8
  %8 = alloca %struct.sp_node*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mempolicy* %2, %struct.mempolicy** %7, align 8
  %9 = load i32, i32* @sn_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sp_node* @kmem_cache_alloc(i32 %9, i32 %10)
  store %struct.sp_node* %11, %struct.sp_node** %8, align 8
  %12 = load %struct.sp_node*, %struct.sp_node** %8, align 8
  %13 = icmp ne %struct.sp_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.sp_node* null, %struct.sp_node** %4, align 8
  br label %33

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.sp_node*, %struct.sp_node** %8, align 8
  %18 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.sp_node*, %struct.sp_node** %8, align 8
  %21 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %23 = call i32 @mpol_get(%struct.mempolicy* %22)
  %24 = load i32, i32* @MPOL_F_SHARED, align 4
  %25 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %26 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %30 = load %struct.sp_node*, %struct.sp_node** %8, align 8
  %31 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %30, i32 0, i32 2
  store %struct.mempolicy* %29, %struct.mempolicy** %31, align 8
  %32 = load %struct.sp_node*, %struct.sp_node** %8, align 8
  store %struct.sp_node* %32, %struct.sp_node** %4, align 8
  br label %33

33:                                               ; preds = %15, %14
  %34 = load %struct.sp_node*, %struct.sp_node** %4, align 8
  ret %struct.sp_node* %34
}

declare dso_local %struct.sp_node* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @mpol_get(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
