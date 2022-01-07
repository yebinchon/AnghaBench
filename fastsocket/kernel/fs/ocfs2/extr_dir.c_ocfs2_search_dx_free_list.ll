; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_search_dx_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_search_dx_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, %struct.buffer_head* }
%struct.ocfs2_dir_block_trailer = type { i32, i32 }
%struct.ocfs2_dx_root_block = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dir_lookup_result*)* @ocfs2_search_dx_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_search_dx_free_list(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, %struct.ocfs2_dir_lookup_result* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_dx_root_block*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_dir_lookup_result* %3, %struct.ocfs2_dir_lookup_result** %8, align 8
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @OCFS2_DIR_REC_LEN(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %23, %struct.ocfs2_dx_root_block** %15, align 8
  %24 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %15, align 8
  %25 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le64_to_cpu(i32 %26)
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %62, %4
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %33 = call i32 @brelse(%struct.buffer_head* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %34, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @ocfs2_read_dir_block_direct(%struct.inode* %35, i64 %36, %struct.buffer_head** %10)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %74

43:                                               ; preds = %31
  %44 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %44, i32 %47)
  store %struct.ocfs2_dir_block_trailer* %48, %struct.ocfs2_dir_block_trailer** %12, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %12, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = icmp sle i32 %49, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %43
  %56 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %57 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %8, align 8
  %58 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %57, i32 0, i32 1
  store %struct.buffer_head* %56, %struct.buffer_head** %58, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %60 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %8, align 8
  %61 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %60, i32 0, i32 0
  store %struct.buffer_head* %59, %struct.buffer_head** %61, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  br label %67

62:                                               ; preds = %43
  %63 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %12, align 8
  %64 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le64_to_cpu(i32 %65)
  store i64 %66, i64* %13, align 8
  br label %28

67:                                               ; preds = %55, %28
  %68 = load i64, i64* %13, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %40
  %75 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %76 = call i32 @brelse(%struct.buffer_head* %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i32 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_read_dir_block_direct(%struct.inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
