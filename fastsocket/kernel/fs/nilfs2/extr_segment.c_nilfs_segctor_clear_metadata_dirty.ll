; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_clear_metadata_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_clear_metadata_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { %struct.nilfs_sb_info* }
%struct.nilfs_sb_info = type { i32, %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*)* @nilfs_segctor_clear_metadata_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_clear_metadata_dirty(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  %3 = alloca %struct.nilfs_sb_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  %5 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %6 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %5, i32 0, i32 0
  %7 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  store %struct.nilfs_sb_info* %7, %struct.nilfs_sb_info** %3, align 8
  %8 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %8, i32 0, i32 1
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  store %struct.the_nilfs* %10, %struct.the_nilfs** %4, align 8
  %11 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @nilfs_mdt_clear_dirty(i32 %13)
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nilfs_mdt_clear_dirty(i32 %17)
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nilfs_mdt_clear_dirty(i32 %21)
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %24 = call i32 @nilfs_dat_inode(%struct.the_nilfs* %23)
  %25 = call i32 @nilfs_mdt_clear_dirty(i32 %24)
  ret void
}

declare dso_local i32 @nilfs_mdt_clear_dirty(i32) #1

declare dso_local i32 @nilfs_dat_inode(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
