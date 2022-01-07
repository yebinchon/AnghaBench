; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_read_dx_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_read_dx_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i32 }

@ocfs2_validate_dx_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dinode*, %struct.buffer_head**)* @ocfs2_read_dx_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_dx_root(%struct.inode* %0, %struct.ocfs2_dinode* %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_dinode*, align 8
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %5, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %6, align 8
  %10 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le64_to_cpu(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @INODE_CACHE(%struct.inode* %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ocfs2_validate_dx_root, align 4
  %20 = call i32 @ocfs2_read_block(i32 %17, i32 %18, %struct.buffer_head** %9, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %29 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* %28, %struct.buffer_head** %29, align 8
  br label %30

30:                                               ; preds = %27, %23, %3
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_read_block(i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
