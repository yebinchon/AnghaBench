; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_fill_in_super_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_fill_in_super_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.the_nilfs = type { i32, i32, i32, i32 }
%struct.nilfs_super_root = type { i64, i32, i32 }

@NILFS_SR_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, %struct.the_nilfs*)* @nilfs_segctor_fill_in_super_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_fill_in_super_root(%struct.nilfs_sc_info* %0, %struct.the_nilfs* %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_super_root*, align 8
  %7 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %4, align 8
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %8, i32 0, i32 1
  %10 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %10, %struct.buffer_head** %5, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.nilfs_super_root*
  store %struct.nilfs_super_root* %14, %struct.nilfs_super_root** %6, align 8
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @NILFS_SR_BYTES, align 4
  %19 = call i32 @cpu_to_le16(i32 %18)
  %20 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %21 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = call i64 (...) @nilfs_doing_gc()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %26 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %30 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %27, %24 ], [ %31, %28 ]
  %34 = call i32 @cpu_to_le64(i32 %33)
  %35 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %36 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %38 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %40 = call i32 @nilfs_dat_inode(%struct.the_nilfs* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @NILFS_SR_DAT_OFFSET(i32 %42)
  %44 = call i32 @nilfs_mdt_write_inode_direct(i32 %40, %struct.buffer_head* %41, i32 %43)
  %45 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %46 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @NILFS_SR_CPFILE_OFFSET(i32 %49)
  %51 = call i32 @nilfs_mdt_write_inode_direct(i32 %47, %struct.buffer_head* %48, i32 %50)
  %52 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %53 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @NILFS_SR_SUFILE_OFFSET(i32 %56)
  %58 = call i32 @nilfs_mdt_write_inode_direct(i32 %54, %struct.buffer_head* %55, i32 %57)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @nilfs_doing_gc(...) #1

declare dso_local i32 @nilfs_mdt_write_inode_direct(i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @nilfs_dat_inode(%struct.the_nilfs*) #1

declare dso_local i32 @NILFS_SR_DAT_OFFSET(i32) #1

declare dso_local i32 @NILFS_SR_CPFILE_OFFSET(i32) #1

declare dso_local i32 @NILFS_SR_SUFILE_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
