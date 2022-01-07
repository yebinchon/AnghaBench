; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_delete_entry_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_delete_entry_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_entry = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_inline_data }
%struct.ocfs2_inline_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*)* @ocfs2_delete_entry_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_delete_entry_id(i32* %0, %struct.inode* %1, %struct.ocfs2_dir_entry* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_dir_entry*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.ocfs2_inline_data*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ocfs2_dir_entry* %2, %struct.ocfs2_dir_entry** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call i32 @ocfs2_read_inode_block(%struct.inode* %13, %struct.buffer_head** %10)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @mlog_errno(i32 %18)
  br label %40

20:                                               ; preds = %4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %11, align 8
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.ocfs2_inline_data* %27, %struct.ocfs2_inline_data** %12, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %7, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %32 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %12, align 8
  %33 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @i_size_read(%struct.inode* %35)
  %37 = call i32 @__ocfs2_delete_entry(i32* %28, %struct.inode* %29, %struct.ocfs2_dir_entry* %30, %struct.buffer_head* %31, i32 %34, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %39 = call i32 @brelse(%struct.buffer_head* %38)
  br label %40

40:                                               ; preds = %20, %17
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @__ocfs2_delete_entry(i32*, %struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
