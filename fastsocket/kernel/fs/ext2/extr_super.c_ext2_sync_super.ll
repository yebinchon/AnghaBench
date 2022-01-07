; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_sync_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_sync_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.ext2_super_block = type { i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ext2_super_block*)* @ext2_sync_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_sync_super(%struct.super_block* %0, %struct.ext2_super_block* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext2_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext2_super_block* %1, %struct.ext2_super_block** %4, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = call i32 @ext2_clear_super_error(%struct.super_block* %5)
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call i32 @ext2_count_free_blocks(%struct.super_block* %7)
  %9 = call i8* @cpu_to_le32(i32 %8)
  %10 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %11 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @ext2_count_free_inodes(%struct.super_block* %12)
  %14 = call i8* @cpu_to_le32(i32 %13)
  %15 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %16 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = call i32 (...) @get_seconds()
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %20 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mark_buffer_dirty(i32 %24)
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sync_dirty_buffer(i32 %29)
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  ret void
}

declare dso_local i32 @ext2_clear_super_error(%struct.super_block*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext2_count_free_blocks(%struct.super_block*) #1

declare dso_local i32 @ext2_count_free_inodes(%struct.super_block*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @sync_dirty_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
