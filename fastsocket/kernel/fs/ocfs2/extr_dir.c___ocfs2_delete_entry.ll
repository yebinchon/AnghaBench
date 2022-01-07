; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c___ocfs2_delete_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c___ocfs2_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_entry = type { i32, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(0x%p, 0x%p, 0x%p, 0x%p)\0A\00", align 1
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i8*, i32)* @__ocfs2_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_delete_entry(i32* %0, %struct.inode* %1, %struct.ocfs2_dir_entry* %2, %struct.buffer_head* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_dir_entry*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_dir_entry*, align 8
  %14 = alloca %struct.ocfs2_dir_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32 (i32*, i32, %struct.buffer_head*, i32)*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ocfs2_dir_entry* %2, %struct.ocfs2_dir_entry** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %16, align 4
  store i32 (i32*, i32, %struct.buffer_head*, i32)* @ocfs2_journal_access_db, i32 (i32*, i32, %struct.buffer_head*, i32)** %17, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %24 = call i32 @mlog_entry(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %20, %struct.inode* %21, %struct.ocfs2_dir_entry* %22, %struct.buffer_head* %23)
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 (i32*, i32, %struct.buffer_head*, i32)* @ocfs2_journal_access_di, i32 (i32*, i32, %struct.buffer_head*, i32)** %17, align 8
  br label %33

33:                                               ; preds = %32, %6
  store i32 0, i32* %15, align 4
  store %struct.ocfs2_dir_entry* null, %struct.ocfs2_dir_entry** %14, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = bitcast i8* %34 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %35, %struct.ocfs2_dir_entry** %13, align 8
  br label %36

36:                                               ; preds = %93, %33
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %110

40:                                               ; preds = %36
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @ocfs2_check_dir_entry(%struct.inode* %41, %struct.ocfs2_dir_entry* %42, %struct.buffer_head* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %111

52:                                               ; preds = %40
  %53 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %54 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %55 = icmp eq %struct.ocfs2_dir_entry* %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %52
  %57 = load i32 (i32*, i32, %struct.buffer_head*, i32)*, i32 (i32*, i32, %struct.buffer_head*, i32)** %17, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @INODE_CACHE(%struct.inode* %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %62 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %63 = call i32 %57(i32* %58, i32 %60, %struct.buffer_head* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %111

71:                                               ; preds = %56
  %72 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %14, align 8
  %73 = icmp ne %struct.ocfs2_dir_entry* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %14, align 8
  %76 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %75, i32 0, i32 0
  %77 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %78 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = call i32 @le16_add_cpu(i32* %76, i32 %80)
  br label %85

82:                                               ; preds = %71
  %83 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %84 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %74
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %92 = call i32 @ocfs2_journal_dirty(i32* %90, %struct.buffer_head* %91)
  store i32 %92, i32* %16, align 4
  br label %111

93:                                               ; preds = %52
  %94 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %15, align 4
  %100 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  store %struct.ocfs2_dir_entry* %100, %struct.ocfs2_dir_entry** %14, align 8
  %101 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %102 = bitcast %struct.ocfs2_dir_entry* %101 to i8*
  %103 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %104 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  %109 = bitcast i8* %108 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %109, %struct.ocfs2_dir_entry** %13, align 8
  br label %36

110:                                              ; preds = %36
  br label %111

111:                                              ; preds = %110, %85, %66, %47
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @mlog_exit(i32 %112)
  %114 = load i32, i32* %16, align 4
  ret i32 %114
}

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_entry(i8*, i32*, %struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
