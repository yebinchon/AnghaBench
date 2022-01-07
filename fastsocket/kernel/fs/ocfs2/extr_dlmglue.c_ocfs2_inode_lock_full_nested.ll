; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_full_nested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_full_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_lock_res, i64 }

@.str = private unnamed_addr constant [31 x i8] c"inode %llu, take %s META lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EXMODE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PRMODE\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_RECOVERY = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIOCBRETRY = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_inode_lock_full_nested(%struct.inode* %0, %struct.buffer_head** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_lock_res*, align 8
  %16 = alloca %struct.ocfs2_super*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.ocfs2_lock_res* null, %struct.ocfs2_lock_res** %15, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = icmp ne %struct.inode* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = call i32 (...) @mlog_entry_void()
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %31, i8* %35)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %38 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %5
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EROFS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %157

47:                                               ; preds = %5
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %49 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %114

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @OCFS2_META_LOCK_RECOVERY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %59 = call i32 @ocfs2_wait_for_recovery(%struct.ocfs2_super* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store %struct.ocfs2_lock_res* %63, %struct.ocfs2_lock_res** %15, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @OCFS2_META_LOCK_NOQUEUE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %82 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %15, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @_RET_IP_, align 4
  %88 = call i32 @__ocfs2_cluster_lock(%struct.ocfs2_super* %81, %struct.ocfs2_lock_res* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @EIOCBRETRY, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %104

104:                                              ; preds = %101, %96, %91
  br label %157

105:                                              ; preds = %80
  store i32 1, i32* %13, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @OCFS2_META_LOCK_RECOVERY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %112 = call i32 @ocfs2_wait_for_recovery(%struct.ocfs2_super* %111)
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113, %51
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @I_NEW, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  %122 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %15, align 8
  %123 = icmp ne %struct.ocfs2_lock_res* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %15, align 8
  %126 = call i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res* %125, i32 0)
  br label %127

127:                                              ; preds = %124, %121
  br label %157

128:                                              ; preds = %114
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = call i32 @ocfs2_inode_lock_update(%struct.inode* %129, %struct.buffer_head** %17)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @ENOENT, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @mlog_errno(i32 %139)
  br label %141

141:                                              ; preds = %138, %133
  br label %157

142:                                              ; preds = %128
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %144 = icmp ne %struct.buffer_head** %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %148 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %149 = call i32 @ocfs2_assign_bh(%struct.inode* %146, %struct.buffer_head** %147, %struct.buffer_head* %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @mlog_errno(i32 %153)
  br label %157

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %142
  br label %157

157:                                              ; preds = %156, %152, %141, %127, %104, %46
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %157
  %161 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %162 = icmp ne %struct.buffer_head** %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %165 = load %struct.buffer_head*, %struct.buffer_head** %164, align 8
  %166 = icmp ne %struct.buffer_head* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %169 = load %struct.buffer_head*, %struct.buffer_head** %168, align 8
  %170 = call i32 @brelse(%struct.buffer_head* %169)
  %171 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %171, align 8
  br label %172

172:                                              ; preds = %167, %163, %160
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load %struct.inode*, %struct.inode** %6, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @ocfs2_inode_unlock(%struct.inode* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %172
  br label %180

180:                                              ; preds = %179, %157
  %181 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %182 = icmp ne %struct.buffer_head* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %185 = call i32 @brelse(%struct.buffer_head* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @mlog_exit(i32 %187)
  %189 = load i32, i32* %11, align 4
  ret i32 %189
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i64, i8*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_wait_for_recovery(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_inode_lock_update(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_assign_bh(%struct.inode*, %struct.buffer_head**, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
