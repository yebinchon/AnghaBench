; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_global_read_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_global_read_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.super_block*, i32, %struct.TYPE_6__ }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ocfs2_mem_dqinfo = type { i32, %struct.inode* }
%struct.inode = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_7__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_global_read_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.dquot*, %struct.dquot** %2, align 8
  %14 = getelementptr inbounds %struct.dquot, %struct.dquot* %13, i32 0, i32 1
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.dquot*, %struct.dquot** %2, align 8
  %17 = getelementptr inbounds %struct.dquot, %struct.dquot* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_7__* @sb_dqinfo(%struct.super_block* %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %22, align 8
  store %struct.ocfs2_mem_dqinfo* %23, %struct.ocfs2_mem_dqinfo** %8, align 8
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %9, align 8
  %26 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %27 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %10, align 8
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ocfs2_global_qinit_alloc(%struct.super_block* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %32 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %33 = call i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %32, i32 0)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %169

37:                                               ; preds = %1
  %38 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %39 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %38, i32 0, i32 0
  %40 = load %struct.dquot*, %struct.dquot** %2, align 8
  %41 = call i32 @qtree_read_dquot(i32* %39, %struct.dquot* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %151

45:                                               ; preds = %37
  %46 = load %struct.dquot*, %struct.dquot** %2, align 8
  %47 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %46)
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.dquot*, %struct.dquot** %2, align 8
  %52 = getelementptr inbounds %struct.dquot, %struct.dquot* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dquot*, %struct.dquot** %2, align 8
  %56 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %55)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.dquot*, %struct.dquot** %2, align 8
  %59 = getelementptr inbounds %struct.dquot, %struct.dquot* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dquot*, %struct.dquot** %2, align 8
  %63 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %66 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %65, i32 0)
  %67 = load %struct.dquot*, %struct.dquot** %2, align 8
  %68 = getelementptr inbounds %struct.dquot, %struct.dquot* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  %72 = call i32 (...) @journal_current_handle()
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i32 @down_write(i32* %76)
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %81, %87
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ocfs2_extend_no_holes(%struct.inode* %78, i64 %88, i64 %91)
  store i32 %92, i32* %3, align 4
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = call i32 @up_write(i32* %95)
  %97 = load i32, i32* %3, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %71
  br label %169

100:                                              ; preds = %71
  br label %101

101:                                              ; preds = %100, %45
  %102 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %103 = load %struct.super_block*, %struct.super_block** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ocfs2_calc_global_qinit_credits(%struct.super_block* %103, i32 %104)
  %106 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %102, i32 %105)
  store i32* %106, i32** %12, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i64 @IS_ERR(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @PTR_ERR(i32* %111)
  store i32 %112, i32* %3, align 4
  br label %169

113:                                              ; preds = %101
  %114 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %114, i32 %115)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %161

120:                                              ; preds = %113
  %121 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %122 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %121, i32 0, i32 0
  %123 = load %struct.dquot*, %struct.dquot** %2, align 8
  %124 = call i32 @qtree_write_dquot(i32* %122, %struct.dquot* %123)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %120
  %128 = load %struct.dquot*, %struct.dquot** %2, align 8
  %129 = getelementptr inbounds %struct.dquot, %struct.dquot* %128, i32 0, i32 1
  %130 = load %struct.super_block*, %struct.super_block** %129, align 8
  %131 = load %struct.dquot*, %struct.dquot** %2, align 8
  %132 = getelementptr inbounds %struct.dquot, %struct.dquot* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call %struct.TYPE_7__* @sb_dqinfo(%struct.super_block* %130, i32 %133)
  %135 = call i64 @info_dirty(%struct.TYPE_7__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %127
  %138 = load %struct.dquot*, %struct.dquot** %2, align 8
  %139 = getelementptr inbounds %struct.dquot, %struct.dquot* %138, i32 0, i32 1
  %140 = load %struct.super_block*, %struct.super_block** %139, align 8
  %141 = load %struct.dquot*, %struct.dquot** %2, align 8
  %142 = getelementptr inbounds %struct.dquot, %struct.dquot* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @__ocfs2_global_write_info(%struct.super_block* %140, i32 %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %3, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %137
  br label %150

150:                                              ; preds = %149, %127, %120
  br label %151

151:                                              ; preds = %150, %44
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %156 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %155, i32 1)
  br label %160

157:                                              ; preds = %151
  %158 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %159 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %158, i32 0)
  br label %160

160:                                              ; preds = %157, %154
  br label %161

161:                                              ; preds = %160, %119
  %162 = load i32*, i32** %12, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %165, i32* %166)
  br label %168

168:                                              ; preds = %164, %161
  br label %169

169:                                              ; preds = %168, %110, %99, %36
  %170 = load i32, i32* %3, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @mlog_errno(i32 %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_7__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_global_qinit_alloc(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @qtree_read_dquot(i32*, %struct.dquot*) #1

declare dso_local %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @journal_current_handle(...) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_extend_no_holes(%struct.inode*, i64, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_calc_global_qinit_credits(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @qtree_write_dquot(i32*, %struct.dquot*) #1

declare dso_local i64 @info_dirty(%struct.TYPE_7__*) #1

declare dso_local i32 @__ocfs2_global_write_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
