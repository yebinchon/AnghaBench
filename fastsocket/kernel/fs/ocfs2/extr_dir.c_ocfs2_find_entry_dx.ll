; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_find_entry_dx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_find_entry_dx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_dx_root_block = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.inode*, %struct.ocfs2_dir_lookup_result*)* @ocfs2_find_entry_dx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_entry_dx(i8* %0, i32 %1, %struct.inode* %2, %struct.ocfs2_dir_lookup_result* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_dx_root_block*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.ocfs2_dir_lookup_result* %3, %struct.ocfs2_dir_lookup_result** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i32 @ocfs2_read_inode_block(%struct.inode* %14, %struct.buffer_head** %10)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mlog_errno(i32 %19)
  br label %60

21:                                               ; preds = %4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %11, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %28 = call i32 @ocfs2_read_dx_root(%struct.inode* %26, %struct.ocfs2_dinode* %27, %struct.buffer_head** %12)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %60

34:                                               ; preds = %21
  %35 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %38, %struct.ocfs2_dx_root_block** %13, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %13, align 8
  %43 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %8, align 8
  %44 = call i32 @ocfs2_dx_dir_search(i8* %39, i32 %40, %struct.inode* %41, %struct.ocfs2_dx_root_block* %42, %struct.ocfs2_dir_lookup_result* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %55

55:                                               ; preds = %52, %47
  br label %60

56:                                               ; preds = %34
  %57 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %58 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %58, i32 0, i32 0
  store %struct.buffer_head* %57, %struct.buffer_head** %59, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  br label %60

60:                                               ; preds = %56, %55, %31, %18
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %62 = call i32 @brelse(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %64 = call i32 @brelse(%struct.buffer_head* %63)
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_dx_root(%struct.inode*, %struct.ocfs2_dinode*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_dx_dir_search(i8*, i32, %struct.inode*, %struct.ocfs2_dx_root_block*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
