; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_set_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_group_desc = type { i32, i8* }
%struct.buffer_head = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"block_group_set_bits: off = %u, num = %u\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_UNDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ocfs2_group_desc*, %struct.buffer_head*, i32, i32)* @ocfs2_block_group_set_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_set_bits(i32* %0, %struct.inode* %1, %struct.ocfs2_group_desc* %2, %struct.buffer_head* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_group_desc*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ocfs2_group_desc* %2, %struct.ocfs2_group_desc** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %17 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %14, align 8
  %19 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  store i32 %19, i32* %15, align 4
  %20 = call i32 (...) @mlog_entry_void()
  %21 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %22 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %28 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp ult i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i64 @ocfs2_is_cluster_bitmap(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %6
  %42 = load i32, i32* @OCFS2_JOURNAL_ACCESS_UNDO, align 4
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %41, %6
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call i32 @INODE_CACHE(%struct.inode* %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @ocfs2_journal_access_gd(i32* %44, i32 %46, %struct.buffer_head* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %80

55:                                               ; preds = %43
  %56 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %57 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %12, align 4
  %59 = sub i32 0, %58
  %60 = call i32 @le16_add_cpu(i32* %57, i32 %59)
  br label %61

61:                                               ; preds = %65, %55
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %12, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @ocfs2_set_bit(i32 %66, i8* %68)
  br label %61

70:                                               ; preds = %61
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %73 = call i32 @ocfs2_journal_dirty(i32* %71, %struct.buffer_head* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %76, %52
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @mlog_exit(i32 %81)
  %83 = load i32, i32* %13, align 4
  ret i32 %83
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i64 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_set_bit(i32, i8*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
