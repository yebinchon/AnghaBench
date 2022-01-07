; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_orphan_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_orphan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_dir_lookup_result = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"(inode->i_ino = %lu)\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@OCFS2_ORPHANED_FL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Inode %llu orphaned in slot %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.ocfs2_dinode*, i8*, %struct.ocfs2_dir_lookup_result*, %struct.inode*)* @ocfs2_orphan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_orphan_add(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.ocfs2_dinode* %3, i8* %4, %struct.ocfs2_dir_lookup_result* %5, %struct.inode* %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.ocfs2_dinode* %3, %struct.ocfs2_dinode** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.ocfs2_dir_lookup_result* %5, %struct.ocfs2_dir_lookup_result** %13, align 8
  store %struct.inode* %6, %struct.inode** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlog_entry(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.inode*, %struct.inode** %14, align 8
  %23 = call i32 @ocfs2_read_inode_block(%struct.inode* %22, %struct.buffer_head** %15)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* %16, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %104

29:                                               ; preds = %7
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.inode*, %struct.inode** %14, align 8
  %32 = call i32 @INODE_CACHE(%struct.inode* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %34 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %35 = call i32 @ocfs2_journal_access_di(i32* %30, i32 %32, %struct.buffer_head* %33, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %104

41:                                               ; preds = %29
  %42 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %45, %struct.ocfs2_dinode** %17, align 8
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @S_ISDIR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %53 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %52, i32 1)
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %56 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %55)
  %57 = load %struct.inode*, %struct.inode** %14, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %61 = call i32 @ocfs2_journal_dirty(i32* %59, %struct.buffer_head* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %104

67:                                               ; preds = %54
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.inode*, %struct.inode** %14, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %78 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %13, align 8
  %79 = call i32 @__ocfs2_add_entry(i32* %68, %struct.inode* %69, i8* %70, i32 %71, %struct.inode* %72, i64 %76, %struct.buffer_head* %77, %struct.ocfs2_dir_lookup_result* %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %104

85:                                               ; preds = %67
  %86 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %87 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %86, i32 0, i32 1
  %88 = load i32, i32* @OCFS2_ORPHANED_FL, align 4
  %89 = call i32 @le32_add_cpu(i32* %87, i32 %88)
  %90 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %91 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cpu_to_le16(i32 %92)
  %94 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %101 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %99, i32 %102)
  br label %104

104:                                              ; preds = %85, %82, %64, %38, %26
  %105 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @mlog_exit(i32 %107)
  %109 = load i32, i32* %16, align 4
  ret i32 %109
}

declare dso_local i32 @mlog_entry(i8*, i32) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ocfs2_add_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @__ocfs2_add_entry(i32*, %struct.inode*, i8*, i32, %struct.inode*, i64, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
