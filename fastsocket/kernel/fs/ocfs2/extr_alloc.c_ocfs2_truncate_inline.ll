; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_inline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.inode = type { %struct.TYPE_6__, %struct.TYPE_6__, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_inline_data }
%struct.ocfs2_inline_data = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Inline data flags for inode %llu don't agree! Disk: 0x%x, Memory: 0x%x, Superblock: 0x%x\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_truncate_inline(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_inline_data*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %14, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %15, align 8
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.ocfs2_inline_data* %27, %struct.ocfs2_inline_data** %16, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @i_size_read(%struct.inode* %29)
  %31 = icmp ugt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @i_size_read(%struct.inode* %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %5
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp uge i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %35
  %49 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %58 = call i32 @ocfs2_supports_inline_data(%struct.ocfs2_super* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %56, %48, %35
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %69 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %77 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ocfs2_error(i32 %63, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %67, i32 %71, i32 %75, i32 %78)
  %80 = load i32, i32* @EROFS, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %165

82:                                               ; preds = %56
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %84 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %85 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %83, i32 %84)
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = call i64 @IS_ERR(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @PTR_ERR(i32* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @mlog_errno(i32 %92)
  br label %165

94:                                               ; preds = %82
  %95 = load i32*, i32** %13, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = call i32 @INODE_CACHE(%struct.inode* %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %99 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %100 = call i32 @ocfs2_journal_access_di(i32* %95, i32 %97, %struct.buffer_head* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %161

106:                                              ; preds = %94
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = sub i32 %107, %108
  store i32 %109, i32* %12, align 4
  %110 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %16, align 8
  %111 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @memset(i64 %115, i32 0, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %106
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @i_size_write(%struct.inode* %121, i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = call i8* @cpu_to_le64(i32 %124)
  %126 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %127 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %120, %106
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = call i32 @ocfs2_inode_sector_count(%struct.inode* %129)
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.inode*, %struct.inode** %6, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 1
  %137 = bitcast %struct.TYPE_6__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 bitcast (%struct.TYPE_6__* @CURRENT_TIME to i8*), i64 8, i1 false)
  %138 = bitcast %struct.TYPE_6__* %134 to i8*
  %139 = bitcast %struct.TYPE_6__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 %139, i64 8, i1 false)
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @cpu_to_le64(i32 %143)
  %145 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %146 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %148 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %147, i32 0, i32 3
  store i8* %144, i8** %148, align 8
  %149 = load %struct.inode*, %struct.inode** %6, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cpu_to_le32(i32 %152)
  %154 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %155 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %157 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %160 = call i32 @ocfs2_journal_dirty(i32* %158, %struct.buffer_head* %159)
  br label %161

161:                                              ; preds = %128, %103
  %162 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %162, i32* %163)
  br label %165

165:                                              ; preds = %161, %89, %60
  %166 = load i32, i32* %11, align 4
  ret i32 %166
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_5__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
