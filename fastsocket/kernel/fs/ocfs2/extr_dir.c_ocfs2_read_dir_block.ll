; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_read_dir_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_read_dir_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@ocfs2_validate_dir_block = common dso_local global i32 0, align 4
@OCFS2_BH_READAHEAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head**, i32)* @ocfs2_read_dir_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_dir_block(%struct.inode* %0, i32 %1, %struct.buffer_head** %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ocfs2_validate_dir_block, align 4
  %17 = call i32 @ocfs2_read_virt_blocks(%struct.inode* %13, i32 %14, i32 1, %struct.buffer_head** %10, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  br label %57

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i64 @ocfs2_supports_dir_trailer(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %35 = call i32 @ocfs2_check_dir_trailer(%struct.inode* %33, %struct.buffer_head* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %41 = icmp ne %struct.buffer_head* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %44 = call i32 @brelse(%struct.buffer_head* %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %57

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48, %28, %23
  %50 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 8
  %52 = icmp ne %struct.buffer_head* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %55 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %54, %struct.buffer_head** %55, align 8
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %45, %20
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  ret i32 %65
}

declare dso_local i32 @ocfs2_read_virt_blocks(%struct.inode*, i32, i32, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_supports_dir_trailer(%struct.inode*) #1

declare dso_local i32 @ocfs2_check_dir_trailer(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
