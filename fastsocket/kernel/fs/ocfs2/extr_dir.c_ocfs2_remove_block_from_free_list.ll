; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_remove_block_from_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_remove_block_from_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_block_trailer = type { i32, i32 }
%struct.ocfs2_dx_root_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32*, %struct.ocfs2_dir_lookup_result*)* @ocfs2_remove_block_from_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_remove_block_from_free_list(%struct.inode* %0, i32* %1, %struct.ocfs2_dir_lookup_result* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %7 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  %8 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  %9 = alloca %struct.ocfs2_dx_root_block*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_dir_lookup_result* %2, %struct.ocfs2_dir_lookup_result** %6, align 8
  %11 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %12 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %11, i32 0, i32 0
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %13, i32 %16)
  store %struct.ocfs2_dir_block_trailer* %17, %struct.ocfs2_dir_block_trailer** %7, align 8
  %18 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %19 = call i64 @ocfs2_free_list_at_root(%struct.ocfs2_dir_lookup_result* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %22, i32 0, i32 2
  %24 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %10, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %28, %struct.ocfs2_dx_root_block** %9, align 8
  %29 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %30 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %9, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %48

34:                                               ; preds = %3
  %35 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %36 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %35, i32 0, i32 1
  %37 = load %struct.buffer_head*, %struct.buffer_head** %36, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %10, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %38, i32 %41)
  store %struct.ocfs2_dir_block_trailer* %42, %struct.ocfs2_dir_block_trailer** %8, align 8
  %43 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %8, align 8
  %47 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %34, %21
  %49 = call i32 @cpu_to_le16(i32 0)
  %50 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = call i32 @cpu_to_le64(i32 0)
  %53 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %54 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %57 = call i32 @ocfs2_journal_dirty(i32* %55, %struct.buffer_head* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %59, i32 0, i32 0
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  %62 = call i32 @ocfs2_journal_dirty(i32* %58, %struct.buffer_head* %61)
  ret void
}

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, i32) #1

declare dso_local i64 @ocfs2_free_list_at_root(%struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
