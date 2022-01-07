; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_truncate_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_truncate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_truncate_context = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"(inode = %llu, new_i_size = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Inode %llu, inode i_size = %lld != di i_size = %llu, i_flags = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"asked to truncate file with size (%llu) to size (%llu)!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"inode %llu, i_size = %llu, new_i_size = %llu\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64)* @ocfs2_truncate_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_truncate_file(%struct.inode* %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca %struct.ocfs2_truncate_context*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ocfs2_super* @OCFS2_SB(i32 %13)
  store %struct.ocfs2_super* %14, %struct.ocfs2_super** %9, align 8
  store %struct.ocfs2_truncate_context* null, %struct.ocfs2_truncate_context** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @mlog_entry(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %8, align 8
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le64_to_cpu(i32 %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i64 @i_size_read(%struct.inode* %29)
  %31 = icmp ne i64 %28, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i64 @i_size_read(%struct.inode* %37)
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le64_to_cpu(i32 %41)
  %43 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = call i32 @mlog_bug_on_msg(i32 %32, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %38, i64 %42, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le64_to_cpu(i32 %51)
  %53 = icmp sgt i64 %48, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %3
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %56 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le64_to_cpu(i32 %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i32 (i32, i8*, i64, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %159

65:                                               ; preds = %3
  %66 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le64_to_cpu(i32 %68)
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le64_to_cpu(i32 %72)
  %74 = load i64, i64* %6, align 8
  %75 = call i32 (i32, i8*, i64, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %69, i64 %73, i64 %74)
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %78 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @le64_to_cpu(i32 %79)
  %81 = icmp eq i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  br label %159

83:                                               ; preds = %65
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = call i32 @down_write(i32* %86)
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = add nsw i64 %91, %92
  %94 = sub nsw i64 %93, 1
  %95 = call i32 @unmap_mapping_range(i32 %90, i64 %94, i32 0, i32 1)
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @truncate_inode_pages(i32 %98, i64 %99)
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %83
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = call i64 @i_size_read(%struct.inode* %112)
  %114 = call i32 @ocfs2_truncate_inline(%struct.inode* %109, %struct.buffer_head* %110, i64 %111, i64 %113, i32 1)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @mlog_errno(i32 %118)
  br label %120

120:                                              ; preds = %117, %108
  br label %154

121:                                              ; preds = %83
  %122 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @ocfs2_orphan_for_truncate(%struct.ocfs2_super* %122, %struct.inode* %123, %struct.buffer_head* %124, i64 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @mlog_errno(i32 %130)
  br label %154

132:                                              ; preds = %121
  %133 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %136 = call i32 @ocfs2_prepare_truncate(%struct.ocfs2_super* %133, %struct.inode* %134, %struct.buffer_head* %135, %struct.ocfs2_truncate_context** %10)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %154

142:                                              ; preds = %132
  %143 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %146 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %10, align 8
  %147 = call i32 @ocfs2_commit_truncate(%struct.ocfs2_super* %143, %struct.inode* %144, %struct.buffer_head* %145, %struct.ocfs2_truncate_context* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @mlog_errno(i32 %151)
  br label %154

153:                                              ; preds = %142
  br label %154

154:                                              ; preds = %153, %150, %139, %129, %120
  %155 = load %struct.inode*, %struct.inode** %4, align 8
  %156 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %155)
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = call i32 @up_write(i32* %157)
  br label %159

159:                                              ; preds = %154, %82, %54
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %159
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load %struct.inode*, %struct.inode** %4, align 8
  %170 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %171 = call i32 @ocfs2_try_remove_refcount_tree(%struct.inode* %169, %struct.buffer_head* %170)
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %168, %162, %159
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @mlog_exit(i32 %173)
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry(i8*, i64, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @unmap_mapping_range(i32, i64, i32, i32) #1

declare dso_local i32 @truncate_inode_pages(i32, i64) #1

declare dso_local i32 @ocfs2_truncate_inline(%struct.inode*, %struct.buffer_head*, i64, i64, i32) #1

declare dso_local i32 @ocfs2_orphan_for_truncate(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ocfs2_prepare_truncate(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_truncate_context**) #1

declare dso_local i32 @ocfs2_commit_truncate(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_truncate_context*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_try_remove_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
