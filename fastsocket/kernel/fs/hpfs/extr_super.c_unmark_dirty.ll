; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_unmark_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_unmark_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.hpfs_spare_block = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @unmark_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmark_dirty(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.hpfs_spare_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MS_RDONLY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = call %struct.hpfs_spare_block* @hpfs_map_sector(%struct.super_block* %13, i32 17, %struct.buffer_head** %3, i32 0)
  store %struct.hpfs_spare_block* %14, %struct.hpfs_spare_block** %4, align 8
  %15 = icmp ne %struct.hpfs_spare_block* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 1, %24
  %26 = icmp sgt i32 %20, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %29 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.super_block*, %struct.super_block** %2, align 8
  %31 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %16
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %35, %16
  %43 = phi i1 [ false, %16 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %46 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %48 = call i32 @mark_buffer_dirty(%struct.buffer_head* %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %50 = call i32 @brelse(%struct.buffer_head* %49)
  br label %51

51:                                               ; preds = %11, %42, %12
  ret void
}

declare dso_local %struct.hpfs_spare_block* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
