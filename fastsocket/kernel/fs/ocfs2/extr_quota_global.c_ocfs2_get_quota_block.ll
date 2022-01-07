; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_get_quota_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_get_quota_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head**)* @ocfs2_get_quota_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_quota_block(%struct.inode* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %15, i32 %16, i32* %8, i32* %9, i32* null)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @up_read(i32* %20)
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.buffer_head* @sb_getblk(i32 %31, i32 %32)
  %34 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %33, %struct.buffer_head** %34, align 8
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %37 = icmp ne %struct.buffer_head* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %43

43:                                               ; preds = %38, %28
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
