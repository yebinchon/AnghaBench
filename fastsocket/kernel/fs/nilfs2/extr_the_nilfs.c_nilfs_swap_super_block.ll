; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_swap_super_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_swap_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { %struct.nilfs_super_block**, %struct.buffer_head** }
%struct.nilfs_super_block = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_swap_super_block(%struct.the_nilfs* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.nilfs_super_block*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %2, align 8
  %5 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %6 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %5, i32 0, i32 1
  %7 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %8 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %7, i64 0
  %9 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %9, %struct.buffer_head** %3, align 8
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %11 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %10, i32 0, i32 0
  %12 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  %13 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %12, i64 0
  %14 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %13, align 8
  store %struct.nilfs_super_block* %14, %struct.nilfs_super_block** %4, align 8
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 1
  %17 = load %struct.buffer_head**, %struct.buffer_head*** %16, align 8
  %18 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %17, i64 1
  %19 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %21 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %20, i32 0, i32 1
  %22 = load %struct.buffer_head**, %struct.buffer_head*** %21, align 8
  %23 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %22, i64 0
  store %struct.buffer_head* %19, %struct.buffer_head** %23, align 8
  %24 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %25 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %24, i32 0, i32 0
  %26 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %25, align 8
  %27 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %26, i64 1
  %28 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %27, align 8
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 0
  %31 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %30, align 8
  %32 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %31, i64 0
  store %struct.nilfs_super_block* %28, %struct.nilfs_super_block** %32, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %35 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %34, i32 0, i32 1
  %36 = load %struct.buffer_head**, %struct.buffer_head*** %35, align 8
  %37 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %36, i64 1
  store %struct.buffer_head* %33, %struct.buffer_head** %37, align 8
  %38 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %4, align 8
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %40 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %39, i32 0, i32 0
  %41 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %40, align 8
  %42 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %41, i64 1
  store %struct.nilfs_super_block* %38, %struct.nilfs_super_block** %42, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
