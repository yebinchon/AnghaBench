; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32* }
%struct.nilfs_sb_info = type { i32*, %struct.the_nilfs* }
%struct.the_nilfs = type { i32, %struct.nilfs_sb_info*, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @nilfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.nilfs_sb_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %5)
  store %struct.nilfs_sb_info* %6, %struct.nilfs_sb_info** %3, align 8
  %7 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %7, i32 0, i32 1
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  store %struct.the_nilfs* %9, %struct.the_nilfs** %4, align 8
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %12 = call i32 @nilfs_detach_segment_constructor(%struct.nilfs_sb_info* %11)
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MS_RDONLY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %1
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %21 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %20, i32 0, i32 2
  %22 = call i32 @down_write(i32* %21)
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %24 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %28 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %26, i32* %32, align 4
  %33 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %34 = call i32 @nilfs_commit_super(%struct.nilfs_sb_info* %33, i32 1)
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %36 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %35, i32 0, i32 2
  %37 = call i32 @up_write(i32* %36)
  br label %38

38:                                               ; preds = %19, %1
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %40 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %39, i32 0, i32 0
  %41 = call i32 @down_write(i32* %40)
  %42 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %43 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %42, i32 0, i32 1
  %44 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %43, align 8
  %45 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %46 = icmp eq %struct.nilfs_sb_info* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %49 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %48, i32 0, i32 1
  store %struct.nilfs_sb_info* null, %struct.nilfs_sb_info** %49, align 8
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %52 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %51, i32 0, i32 0
  %53 = call i32 @up_write(i32* %52)
  %54 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %55 = call i32 @nilfs_detach_checkpoint(%struct.nilfs_sb_info* %54)
  %56 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %57 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %56, i32 0, i32 1
  %58 = load %struct.the_nilfs*, %struct.the_nilfs** %57, align 8
  %59 = call i32 @put_nilfs(%struct.the_nilfs* %58)
  %60 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %61 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.super_block*, %struct.super_block** %2, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %65 = call i32 @nilfs_put_sbinfo(%struct.nilfs_sb_info* %64)
  %66 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @nilfs_detach_segment_constructor(%struct.nilfs_sb_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @nilfs_commit_super(%struct.nilfs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nilfs_detach_checkpoint(%struct.nilfs_sb_info*) #1

declare dso_local i32 @put_nilfs(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_put_sbinfo(%struct.nilfs_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
