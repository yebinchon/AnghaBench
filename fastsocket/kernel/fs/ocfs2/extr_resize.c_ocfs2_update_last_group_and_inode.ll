; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_update_last_group_and_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_update_last_group_and_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_dinode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { %struct.ocfs2_chain_rec*, i32, i32 }
%struct.ocfs2_chain_rec = type { i32, i32 }
%struct.ocfs2_group_desc = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"(new_clusters=%d, first_new_cluster = %u)\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_FEATURE_COMPAT_BACKUP_SB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, i32, i32)* @ocfs2_update_last_group_and_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_update_last_group_and_inode(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_chain_list*, align 8
  %17 = alloca %struct.ocfs2_chain_rec*, align 8
  %18 = alloca %struct.ocfs2_group_desc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ocfs2_super* @OCFS2_SB(i32 %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %14, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %31, %struct.ocfs2_dinode** %15, align 8
  %32 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.ocfs2_chain_list* %34, %struct.ocfs2_chain_list** %16, align 8
  store i32 0, i32* %21, align 4
  %35 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %36 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %22, align 4
  %39 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %40 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @mlog_entry(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @INODE_CACHE(%struct.inode* %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %50 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %51 = call i32 @ocfs2_journal_access_gd(i32* %46, i32 %48, %struct.buffer_head* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %6
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %213

57:                                               ; preds = %6
  %58 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %61, %struct.ocfs2_group_desc** %18, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %22, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %20, align 4
  %65 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %66 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %65, i32 0, i32 1
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @le16_add_cpu(i32* %66, i32 %67)
  %69 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %70 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %20, align 4
  %72 = call i32 @le16_add_cpu(i32* %70, i32 %71)
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %74 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @OCFS2_FEATURE_COMPAT_BACKUP_SB, align 4
  %77 = call i64 @OCFS2_HAS_COMPAT_FEATURE(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %57
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %23, align 4
  %85 = call i32 @ocfs2_calc_new_backup_super(%struct.inode* %80, %struct.ocfs2_group_desc* %81, i32 %82, i32 %83, i32 %84, i32 1)
  store i32 %85, i32* %21, align 4
  %86 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %87 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %86, i32 0, i32 0
  %88 = load i32, i32* %21, align 4
  %89 = mul nsw i32 -1, %88
  %90 = call i32 @le16_add_cpu(i32* %87, i32 %89)
  br label %91

91:                                               ; preds = %79, %57
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %94 = call i32 @ocfs2_journal_dirty(i32* %92, %struct.buffer_head* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %188

100:                                              ; preds = %91
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = call i32 @INODE_CACHE(%struct.inode* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %105 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %106 = call i32 @ocfs2_journal_access_di(i32* %101, i32 %103, %struct.buffer_head* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %188

112:                                              ; preds = %100
  %113 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %114 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  store i32 %116, i32* %19, align 4
  %117 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %118 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %117, i32 0, i32 0
  %119 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %118, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %119, i64 %121
  store %struct.ocfs2_chain_rec* %122, %struct.ocfs2_chain_rec** %17, align 8
  %123 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %17, align 8
  %124 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %123, i32 0, i32 1
  %125 = load i32, i32* %20, align 4
  %126 = call i32 @le32_add_cpu(i32* %124, i32 %125)
  %127 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %17, align 8
  %128 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %127, i32 0, i32 0
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @le32_add_cpu(i32* %128, i32 %129)
  %131 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %132 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @le32_add_cpu(i32* %134, i32 %135)
  %137 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %138 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %137, i32 0, i32 1
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @le32_add_cpu(i32* %138, i32 %139)
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %112
  %144 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %17, align 8
  %145 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %144, i32 0, i32 0
  %146 = load i32, i32* %21, align 4
  %147 = mul nsw i32 -1, %146
  %148 = call i32 @le32_add_cpu(i32* %145, i32 %147)
  %149 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %150 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %21, align 4
  %154 = call i32 @le32_add_cpu(i32* %152, i32 %153)
  br label %155

155:                                              ; preds = %143, %112
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = call i32 @spin_lock(i32* %158)
  %160 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %161 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le32_to_cpu(i32 %162)
  %164 = load %struct.inode*, %struct.inode** %8, align 8
  %165 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %164)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %168 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %167, i32 0, i32 0
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %171 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %169, %172
  %174 = call i32 @le64_add_cpu(i32* %168, i32 %173)
  %175 = load %struct.inode*, %struct.inode** %8, align 8
  %176 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %175)
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = call i32 @spin_unlock(i32* %177)
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  %180 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %181 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @le64_to_cpu(i32 %182)
  %184 = call i32 @i_size_write(%struct.inode* %179, i32 %183)
  %185 = load i32*, i32** %7, align 8
  %186 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %187 = call i32 @ocfs2_journal_dirty(i32* %185, %struct.buffer_head* %186)
  br label %188

188:                                              ; preds = %155, %109, %97
  %189 = load i32, i32* %13, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %212

191:                                              ; preds = %188
  %192 = load %struct.inode*, %struct.inode** %8, align 8
  %193 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %23, align 4
  %197 = call i32 @ocfs2_calc_new_backup_super(%struct.inode* %192, %struct.ocfs2_group_desc* %193, i32 %194, i32 %195, i32 %196, i32 0)
  %198 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %199 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %198, i32 0, i32 0
  %200 = load i32, i32* %21, align 4
  %201 = call i32 @le16_add_cpu(i32* %199, i32 %200)
  %202 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %203 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %202, i32 0, i32 1
  %204 = load i32, i32* %20, align 4
  %205 = mul nsw i32 -1, %204
  %206 = call i32 @le16_add_cpu(i32* %203, i32 %205)
  %207 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %208 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %207, i32 0, i32 0
  %209 = load i32, i32* %20, align 4
  %210 = mul nsw i32 -1, %209
  %211 = call i32 @le16_add_cpu(i32* %208, i32 %210)
  br label %212

212:                                              ; preds = %191, %188
  br label %213

213:                                              ; preds = %212, %54
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @mlog_exit(i32 %214)
  %216 = load i32, i32* %13, align 4
  ret i32 %216
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_entry(i8*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i64 @OCFS2_HAS_COMPAT_FEATURE(i32, i32) #1

declare dso_local i32 @ocfs2_calc_new_backup_super(%struct.inode*, %struct.ocfs2_group_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
