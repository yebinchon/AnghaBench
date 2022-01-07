; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_group_extend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_group_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocfs2_group_desc = type { i32, i32 }
%struct.ocfs2_super = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"The disk is too old and small. Force to do offline resize.\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"extend the last group at %llu, new clusters = %d\0A\00", align 1
@OCFS2_GROUP_EXTEND_CREDITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_group_extend(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.ocfs2_group_desc*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %11, align 8
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %13, align 8
  %21 = call i32 (...) @mlog_entry_void()
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %23 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %27 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %197

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %197

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %197

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %45 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %46 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %47 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %44, i32 %45, i32 %46)
  store %struct.inode* %47, %struct.inode** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = icmp ne %struct.inode* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %194

55:                                               ; preds = %43
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = call i32 @ocfs2_inode_lock(%struct.inode* %59, %struct.buffer_head** %8, i32 1)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %188

66:                                               ; preds = %55
  %67 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %70, %struct.ocfs2_dinode** %11, align 8
  %71 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %72 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %78 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %84 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ocfs2_group_bitmap_size(i32 %85)
  %87 = mul nsw i32 %86, 8
  %88 = icmp ne i32 %82, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %66
  %90 = load i32, i32* @ML_ERROR, align 4
  %91 = call i32 (i32, i8*, ...) @mlog(i32 %90, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %181

94:                                               ; preds = %66
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le32_to_cpu(i32 %97)
  store i64 %98, i64* %15, align 8
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = load i64, i64* %15, align 8
  %101 = sub nsw i64 %100, 1
  %102 = call i32 @ocfs2_which_cluster_group(%struct.inode* %99, i64 %101)
  store i32 %102, i32* %16, align 4
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @ocfs2_read_group_descriptor(%struct.inode* %103, %struct.ocfs2_dinode* %104, i32 %105, %struct.buffer_head** %9)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %181

112:                                              ; preds = %94
  %113 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %114 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %116, %struct.ocfs2_group_desc** %12, align 8
  %117 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %118 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @le16_to_cpu(i32 %121)
  store i32 %122, i32* %14, align 4
  %123 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %12, align 8
  %124 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le16_to_cpu(i32 %125)
  %127 = load i32, i32* %14, align 4
  %128 = sdiv i32 %126, %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %128, %129
  %131 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %132 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = icmp sgt i32 %130, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %112
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %181

141:                                              ; preds = %112
  %142 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %12, align 8
  %143 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @le64_to_cpu(i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %145, i32 %146)
  %148 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %149 = load i32, i32* @OCFS2_GROUP_EXTEND_CREDITS, align 4
  %150 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %148, i32 %149)
  store i32* %150, i32** %7, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = call i64 @IS_ERR(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %141
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @PTR_ERR(i32* %155)
  %157 = call i32 @mlog_errno(i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %181

160:                                              ; preds = %141
  %161 = load i32*, i32** %7, align 8
  %162 = load %struct.inode*, %struct.inode** %10, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @ocfs2_update_last_group_and_inode(i32* %161, %struct.inode* %162, %struct.buffer_head* %163, %struct.buffer_head* %164, i64 %165, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @mlog_errno(i32 %171)
  br label %177

173:                                              ; preds = %160
  %174 = load %struct.inode*, %struct.inode** %10, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @ocfs2_update_super_and_backups(%struct.inode* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %170
  %178 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %178, i32* %179)
  br label %181

181:                                              ; preds = %177, %154, %138, %109, %89
  %182 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %183 = call i32 @brelse(%struct.buffer_head* %182)
  %184 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %185 = call i32 @brelse(%struct.buffer_head* %184)
  %186 = load %struct.inode*, %struct.inode** %10, align 8
  %187 = call i32 @ocfs2_inode_unlock(%struct.inode* %186, i32 1)
  br label %188

188:                                              ; preds = %181, %63
  %189 = load %struct.inode*, %struct.inode** %10, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 0
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load %struct.inode*, %struct.inode** %10, align 8
  %193 = call i32 @iput(%struct.inode* %192)
  br label %194

194:                                              ; preds = %188, %50
  %195 = call i32 (...) @mlog_exit_void()
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %194, %41, %35, %29
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_group_bitmap_size(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_which_cluster_group(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode*, %struct.ocfs2_dinode*, i32, %struct.buffer_head**) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_update_last_group_and_inode(i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, i64, i32) #1

declare dso_local i32 @ocfs2_update_super_and_backups(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
