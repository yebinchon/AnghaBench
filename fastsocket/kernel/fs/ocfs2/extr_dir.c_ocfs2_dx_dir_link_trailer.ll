; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_link_trailer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_link_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.ocfs2_dx_root_block = type { i32 }
%struct.ocfs2_dir_block_trailer = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.buffer_head*, %struct.buffer_head*)* @ocfs2_dx_dir_link_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_link_trailer(%struct.inode* %0, i32* %1, %struct.buffer_head* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_dx_root_block*, align 8
  %11 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32 @INODE_CACHE(%struct.inode* %13)
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %17 = call i32 @ocfs2_journal_access_dr(i32* %12, i32 %14, %struct.buffer_head* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  br label %47

23:                                               ; preds = %4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %24, i32 %27)
  store %struct.ocfs2_dir_block_trailer* %28, %struct.ocfs2_dir_block_trailer** %11, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %32, %struct.ocfs2_dx_root_block** %10, align 8
  %33 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %11, align 8
  %37 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cpu_to_le64(i32 %40)
  %42 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %43 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = call i32 @ocfs2_journal_dirty(i32* %44, %struct.buffer_head* %45)
  br label %47

47:                                               ; preds = %23, %20
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @ocfs2_journal_access_dr(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
