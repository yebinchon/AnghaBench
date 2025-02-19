; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_set_next_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_set_next_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32, i64, i32, i32 }
%struct.nilfs_segment_buffer = type { %struct.TYPE_2__, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.the_nilfs*, %struct.nilfs_segment_buffer*)* @nilfs_set_next_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_set_next_segment(%struct.the_nilfs* %0, %struct.nilfs_segment_buffer* %1) #0 {
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.nilfs_segment_buffer*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %3, align 8
  store %struct.nilfs_segment_buffer* %1, %struct.nilfs_segment_buffer** %4, align 8
  %5 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %9 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %14 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %21, %25
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %28 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %34 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %40 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
