; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_force_read_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_force_read_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

@CONCURRENT_JOURNAL_FILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ocfs2_force_read_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_force_read_journal(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x %struct.buffer_head*], align 16
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = call i32 (...) @mlog_entry_void()
  %11 = getelementptr inbounds [32 x %struct.buffer_head*], [32 x %struct.buffer_head*]* %9, i64 0, i64 0
  %12 = call i32 @memset(%struct.buffer_head** %11, i32 0, i32 256)
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ocfs2_blocks_for_bytes(i32 %15, i32 %18)
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %69, %1
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %25, i64 %26, i64* %6, i64* %7, i32* null)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %74

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = icmp ugt i64 %34, 32
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i64 32, i64* %7, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @OCFS2_SB(i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds [32 x %struct.buffer_head*], [32 x %struct.buffer_head*]* %9, i64 0, i64 0
  %45 = call i32 @ocfs2_read_blocks_sync(i32 %41, i64 %42, i64 %43, %struct.buffer_head** %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %74

51:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32 x %struct.buffer_head*], [32 x %struct.buffer_head*]* %9, i64 0, i64 %59
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  %62 = call i32 @brelse(%struct.buffer_head* %61)
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32 x %struct.buffer_head*], [32 x %struct.buffer_head*]* %9, i64 0, i64 %64
  store %struct.buffer_head* null, %struct.buffer_head** %65, align 8
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %52

69:                                               ; preds = %52
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %5, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %5, align 8
  br label %20

73:                                               ; preds = %20
  br label %74

74:                                               ; preds = %73, %48, %30
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %85, %74
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 32
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [32 x %struct.buffer_head*], [32 x %struct.buffer_head*]* %9, i64 0, i64 %81
  %83 = load %struct.buffer_head*, %struct.buffer_head** %82, align 8
  %84 = call i32 @brelse(%struct.buffer_head* %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @mlog_exit(i32 %89)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @memset(%struct.buffer_head**, i32, i32) #1

declare dso_local i64 @ocfs2_blocks_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_blocks_sync(i32, i64, i64, %struct.buffer_head**) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
