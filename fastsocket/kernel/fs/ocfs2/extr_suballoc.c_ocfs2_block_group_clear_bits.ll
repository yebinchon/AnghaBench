; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_clear_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_group_desc = type { i32, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"off = %u, num = %u\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_UNDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ocfs2_group_desc*, %struct.buffer_head*, i32, i32)* @ocfs2_block_group_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_clear_bits(i32* %0, %struct.inode* %1, %struct.ocfs2_group_desc* %2, %struct.buffer_head* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_group_desc*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_group_desc*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ocfs2_group_desc* %2, %struct.ocfs2_group_desc** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  store i32 %18, i32* %15, align 4
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %16, align 8
  store i32 0, i32* %17, align 4
  %19 = call i32 (...) @mlog_entry_void()
  %20 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %21 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i64 @ocfs2_is_cluster_bitmap(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @OCFS2_JOURNAL_ACCESS_UNDO, align 4
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %32, %6
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call i32 @INODE_CACHE(%struct.inode* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @ocfs2_journal_access_gd(i32* %35, i32 %37, %struct.buffer_head* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %114

46:                                               ; preds = %34
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i64 @ocfs2_is_cluster_bitmap(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %17, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %56 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %55)
  %57 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %58 = call %struct.TYPE_2__* @bh2jh(%struct.buffer_head* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %61, %struct.ocfs2_group_desc** %16, align 8
  %62 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %16, align 8
  %63 = icmp ne %struct.ocfs2_group_desc* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  br label %67

67:                                               ; preds = %54, %51
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %93, %67
  %70 = load i32, i32* %14, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %14, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add i32 %74, %75
  %77 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %78 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i64*
  %81 = call i32 @ocfs2_clear_bit(i32 %76, i64* %80)
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %85, %86
  %88 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %16, align 8
  %89 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i64*
  %92 = call i32 @ocfs2_set_bit(i32 %87, i64* %91)
  br label %93

93:                                               ; preds = %84, %73
  br label %69

94:                                               ; preds = %69
  %95 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %9, align 8
  %96 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %95, i32 0, i32 0
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @le16_add_cpu(i32* %96, i32 %97)
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %103 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %102)
  br label %104

104:                                              ; preds = %101, %94
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %107 = call i32 @ocfs2_journal_dirty(i32* %105, %struct.buffer_head* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %113

113:                                              ; preds = %110, %104
  br label %114

114:                                              ; preds = %113, %43
  %115 = load i32, i32* %13, align 4
  ret i32 %115
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i64 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_clear_bit(i32, i64*) #1

declare dso_local i32 @ocfs2_set_bit(i32, i64*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
