; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_free_suballoc_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_free_suballoc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_group_desc = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"%llu: freeing %u bits from group %llu, starting at %u\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_free_suballoc_bits(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_chain_list*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_group_desc*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %22, %struct.ocfs2_dinode** %15, align 8
  %23 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %24 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store %struct.ocfs2_chain_list* %25, %struct.ocfs2_chain_list** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %26 = call i32 (...) @mlog_entry_void()
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %28 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %33, %34
  %36 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %37 = call i32 @ocfs2_bits_per_group(%struct.ocfs2_chain_list* %36)
  %38 = icmp ugt i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %45, i64 %46, i32 %47)
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @ocfs2_read_group_descriptor(%struct.inode* %49, %struct.ocfs2_dinode* %50, i64 %51, %struct.buffer_head** %17)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %6
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %134

58:                                               ; preds = %6
  %59 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %62, %struct.ocfs2_group_desc** %18, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %68 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le16_to_cpu(i32 %69)
  %71 = icmp ugt i64 %66, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @ocfs2_block_group_clear_bits(i32* %74, %struct.inode* %75, %struct.ocfs2_group_desc* %76, %struct.buffer_head* %77, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %58
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %134

86:                                               ; preds = %58
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = call i32 @INODE_CACHE(%struct.inode* %88)
  %90 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %91 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %92 = call i32 @ocfs2_journal_access_di(i32* %87, i32 %89, %struct.buffer_head* %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @mlog_errno(i32 %96)
  br label %134

98:                                               ; preds = %86
  %99 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %100 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %103 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @le16_to_cpu(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @le32_add_cpu(i32* %107, i32 %108)
  %110 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %111 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @le32_to_cpu(i32 %114)
  store i64 %115, i64* %14, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i32, i32* %12, align 4
  %118 = zext i32 %117 to i64
  %119 = sub nsw i64 %116, %118
  %120 = call i32 @cpu_to_le32(i64 %119)
  %121 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %122 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %127 = call i32 @ocfs2_journal_dirty(i32* %125, %struct.buffer_head* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %98
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @mlog_errno(i32 %131)
  br label %134

133:                                              ; preds = %98
  br label %134

134:                                              ; preds = %133, %130, %95, %83, %55
  %135 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @mlog_exit(i32 %137)
  %139 = load i32, i32* %13, align 4
  ret i32 %139
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_bits_per_group(%struct.ocfs2_chain_list*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i64, i32) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode*, %struct.ocfs2_dinode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_block_group_clear_bits(i32*, %struct.inode*, %struct.ocfs2_group_desc*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
