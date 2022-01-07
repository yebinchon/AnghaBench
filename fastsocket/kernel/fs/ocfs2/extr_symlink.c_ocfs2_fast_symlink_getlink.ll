; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_symlink.c_ocfs2_fast_symlink_getlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_symlink.c_ocfs2_fast_symlink_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.inode*, %struct.buffer_head**)* @ocfs2_fast_symlink_getlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocfs2_fast_symlink_getlink(%struct.inode* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %4, align 8
  store i8* null, i8** %6, align 8
  %8 = call i32 (...) @mlog_entry_void()
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %11 = call i32 @ocfs2_read_inode_block(%struct.inode* %9, %struct.buffer_head** %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mlog_errno(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @ERR_PTR(i32 %17)
  store i8* %18, i8** %6, align 8
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %7, align 8
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %19, %14
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mlog_exit(i32 %31)
  %33 = load i8*, i8** %6, align 8
  ret i8* %33
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
