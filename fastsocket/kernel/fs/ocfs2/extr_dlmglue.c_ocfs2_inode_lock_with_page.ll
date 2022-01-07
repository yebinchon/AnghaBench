; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_with_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_with_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.page = type { i32 }

@OCFS2_LOCK_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AOP_TRUNCATED_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_inode_lock_with_page(%struct.inode* %0, %struct.buffer_head** %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page* %3, %struct.page** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @OCFS2_LOCK_NONBLOCK, align 4
  %14 = call i32 @ocfs2_inode_lock_full(%struct.inode* %10, %struct.buffer_head** %11, i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = call i32 @unlock_page(%struct.page* %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ocfs2_inode_lock(%struct.inode* %22, %struct.buffer_head** %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ocfs2_inode_unlock(%struct.inode* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %4
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @ocfs2_inode_lock_full(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
