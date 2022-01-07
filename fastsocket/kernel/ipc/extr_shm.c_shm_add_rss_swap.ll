; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_shm.c_shm_add_rss_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_shm.c_shm_add_rss_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i64 }
%struct.hstate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmid_kernel*, i64*, i64*)* @shm_add_rss_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shm_add_rss_swap(%struct.shmid_kernel* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.shmid_kernel*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.hstate*, align 8
  store %struct.shmid_kernel* %0, %struct.shmid_kernel** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %11 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %19 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i64 @is_file_hugepages(%struct.TYPE_7__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.address_space*, %struct.address_space** %25, align 8
  store %struct.address_space* %26, %struct.address_space** %8, align 8
  %27 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %28 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call %struct.hstate* @hstate_file(%struct.TYPE_7__* %29)
  store %struct.hstate* %30, %struct.hstate** %9, align 8
  %31 = load %struct.hstate*, %struct.hstate** %9, align 8
  %32 = call i64 @pages_per_huge_page(%struct.hstate* %31)
  %33 = load %struct.address_space*, %struct.address_space** %8, align 8
  %34 = getelementptr inbounds %struct.address_space, %struct.address_space* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = mul i64 %32, %35
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %36
  store i64 %39, i64* %37, align 8
  br label %49

40:                                               ; preds = %3
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load %struct.address_space*, %struct.address_space** %42, align 8
  %44 = getelementptr inbounds %struct.address_space, %struct.address_space* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %45
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %40, %23
  ret void
}

declare dso_local i64 @is_file_hugepages(%struct.TYPE_7__*) #1

declare dso_local %struct.hstate* @hstate_file(%struct.TYPE_7__*) #1

declare dso_local i64 @pages_per_huge_page(%struct.hstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
