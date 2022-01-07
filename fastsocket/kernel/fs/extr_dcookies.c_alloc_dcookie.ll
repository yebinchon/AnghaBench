; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcookies.c_alloc_dcookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcookies.c_alloc_dcookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcookie_struct = type { %struct.path }
%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32, i32 }

@dcookie_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DCACHE_COOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dcookie_struct* (%struct.path*)* @alloc_dcookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dcookie_struct* @alloc_dcookie(%struct.path* %0) #0 {
  %2 = alloca %struct.dcookie_struct*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.dcookie_struct*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %6 = load i32, i32* @dcookie_cache, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dcookie_struct* @kmem_cache_alloc(i32 %6, i32 %7)
  store %struct.dcookie_struct* %8, %struct.dcookie_struct** %4, align 8
  %9 = load %struct.dcookie_struct*, %struct.dcookie_struct** %4, align 8
  %10 = icmp ne %struct.dcookie_struct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.dcookie_struct* null, %struct.dcookie_struct** %2, align 8
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.path*, %struct.path** %3, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load i32, i32* @DCACHE_COOKIE, align 4
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.dcookie_struct*, %struct.dcookie_struct** %4, align 8
  %28 = getelementptr inbounds %struct.dcookie_struct, %struct.dcookie_struct* %27, i32 0, i32 0
  %29 = load %struct.path*, %struct.path** %3, align 8
  %30 = bitcast %struct.path* %28 to i8*
  %31 = bitcast %struct.path* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load %struct.path*, %struct.path** %3, align 8
  %33 = call i32 @path_get(%struct.path* %32)
  %34 = load %struct.dcookie_struct*, %struct.dcookie_struct** %4, align 8
  %35 = call i32 @hash_dcookie(%struct.dcookie_struct* %34)
  %36 = load %struct.dcookie_struct*, %struct.dcookie_struct** %4, align 8
  store %struct.dcookie_struct* %36, %struct.dcookie_struct** %2, align 8
  br label %37

37:                                               ; preds = %12, %11
  %38 = load %struct.dcookie_struct*, %struct.dcookie_struct** %2, align 8
  ret %struct.dcookie_struct* %38
}

declare dso_local %struct.dcookie_struct* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @hash_dcookie(%struct.dcookie_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
