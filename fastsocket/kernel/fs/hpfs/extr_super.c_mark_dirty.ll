; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_mark_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_mark_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.hpfs_spare_block = type { i32, i64 }
%struct.TYPE_2__ = type { i64 }

@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @mark_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_dirty(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.hpfs_spare_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MS_RDONLY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call %struct.hpfs_spare_block* @hpfs_map_sector(%struct.super_block* %18, i32 17, %struct.buffer_head** %3, i32 0)
  store %struct.hpfs_spare_block* %19, %struct.hpfs_spare_block** %4, align 8
  %20 = icmp ne %struct.hpfs_spare_block* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %23 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %25 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %27 = call i32 @mark_buffer_dirty(%struct.buffer_head* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %29 = call i32 @brelse(%struct.buffer_head* %28)
  br label %30

30:                                               ; preds = %21, %17
  br label %31

31:                                               ; preds = %30, %10, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local %struct.hpfs_spare_block* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
