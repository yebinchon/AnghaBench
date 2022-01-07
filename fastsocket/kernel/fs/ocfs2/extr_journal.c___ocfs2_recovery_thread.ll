; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c___ocfs2_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c___ocfs2_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_2__*, %struct.ocfs2_recovery_map* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_recovery_map = type { i32*, i64 }
%struct.ocfs2_quota_recovery = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"checking node %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"no slot for this node, so no recoveryrequired.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"node %d was using slot %d\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Error %d recovering node %d on device (%u,%u)!\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Volume requires unmount.\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"All nodes recovered\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__ocfs2_recovery_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_recovery_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_recovery_map*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_quota_recovery*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.ocfs2_super*
  store %struct.ocfs2_super* %13, %struct.ocfs2_super** %6, align 8
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %15 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %14, i32 0, i32 8
  %16 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %15, align 8
  store %struct.ocfs2_recovery_map* %16, %struct.ocfs2_recovery_map** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = call i32 (...) @mlog_entry_void()
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %19 = call i32 @ocfs2_wait_on_mount(%struct.ocfs2_super* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %219

23:                                               ; preds = %1
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = call i32* @kzalloc(i32 %29, i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %219

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %229, %37
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %40 = call i32 @ocfs2_super_lock(%struct.ocfs2_super* %39, i32 1)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %219

46:                                               ; preds = %38
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %48 = call i32 @ocfs2_compute_replay_slots(%struct.ocfs2_super* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ocfs2_queue_recovery_completion(i32 %57, i32 %60, i32* null, i32* null, %struct.ocfs2_quota_recovery* null)
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %63 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %62, i32 0, i32 6
  %64 = call i32 @spin_lock(i32* %63)
  br label %65

65:                                               ; preds = %154, %54
  %66 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %7, align 8
  %67 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %158

70:                                               ; preds = %65
  %71 = load %struct.ocfs2_recovery_map*, %struct.ocfs2_recovery_map** %7, align 8
  %72 = getelementptr inbounds %struct.ocfs2_recovery_map, %struct.ocfs2_recovery_map* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %4, align 4
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %77 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %76, i32 0, i32 6
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @ocfs2_node_num_to_slot(%struct.ocfs2_super* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  %89 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %128

90:                                               ; preds = %70
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %109, %90
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %103, %104
  br label %106

106:                                              ; preds = %98, %94
  %107 = phi i1 [ false, %94 ], [ %105, %98 ]
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %94

112:                                              ; preds = %106
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %112
  %124 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @ocfs2_recover_node(%struct.ocfs2_super* %124, i32 %125, i32 %126)
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %88
  %129 = load i32, i32* %3, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @ocfs2_recovery_map_clear(%struct.ocfs2_super* %132, i32 %133)
  br label %154

135:                                              ; preds = %128
  %136 = load i32, i32* @ML_ERROR, align 4
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %140 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %139, i32 0, i32 7
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @MAJOR(i32 %143)
  %145 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %146 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %145, i32 0, i32 7
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @MINOR(i32 %149)
  %151 = call i32 (i32, i8*, ...) @mlog(i32 %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %138, i32 %144, i32 %150)
  %152 = load i32, i32* @ML_ERROR, align 4
  %153 = call i32 (i32, i8*, ...) @mlog(i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %135, %131
  %155 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %156 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %155, i32 0, i32 6
  %157 = call i32 @spin_lock(i32* %156)
  br label %65

158:                                              ; preds = %65
  %159 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %160 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %159, i32 0, i32 6
  %161 = call i32 @spin_unlock(i32* %160)
  %162 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %163 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %164 = call i32 @ocfs2_check_journals_nolocks(%struct.ocfs2_super* %163)
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @EROFS, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %172

170:                                              ; preds = %158
  %171 = load i32, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %169
  %173 = phi i32 [ 0, %169 ], [ %171, %170 ]
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* %3, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @mlog_errno(i32 %177)
  br label %179

179:                                              ; preds = %176, %172
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %211, %179
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %214

184:                                              ; preds = %180
  %185 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call %struct.ocfs2_quota_recovery* @ocfs2_begin_quota_recovery(%struct.ocfs2_super* %185, i32 %190)
  store %struct.ocfs2_quota_recovery* %191, %struct.ocfs2_quota_recovery** %11, align 8
  %192 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %11, align 8
  %193 = call i64 @IS_ERR(%struct.ocfs2_quota_recovery* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %184
  %196 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %11, align 8
  %197 = call i32 @PTR_ERR(%struct.ocfs2_quota_recovery* %196)
  store i32 %197, i32* %3, align 4
  %198 = load i32, i32* %3, align 4
  %199 = call i32 @mlog_errno(i32 %198)
  br label %211

200:                                              ; preds = %184
  %201 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %202 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** %8, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %11, align 8
  %210 = call i32 @ocfs2_queue_recovery_completion(i32 %203, i32 %208, i32* null, i32* null, %struct.ocfs2_quota_recovery* %209)
  br label %211

211:                                              ; preds = %200, %195
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %10, align 4
  br label %180

214:                                              ; preds = %180
  %215 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %216 = call i32 @ocfs2_super_unlock(%struct.ocfs2_super* %215, i32 1)
  %217 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %218 = call i32 @ocfs2_queue_replay_slots(%struct.ocfs2_super* %217)
  br label %219

219:                                              ; preds = %214, %43, %34, %22
  %220 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %221 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %220, i32 0, i32 2
  %222 = call i32 @mutex_lock(i32* %221)
  %223 = load i32, i32* %3, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %219
  %226 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %227 = call i32 @ocfs2_recovery_completed(%struct.ocfs2_super* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %231 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %230, i32 0, i32 2
  %232 = call i32 @mutex_unlock(i32* %231)
  br label %38

233:                                              ; preds = %225, %219
  %234 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %235 = call i32 @ocfs2_free_replay_slots(%struct.ocfs2_super* %234)
  %236 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %237 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %236, i32 0, i32 4
  store i32* null, i32** %237, align 8
  %238 = call i32 (...) @mb()
  %239 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %240 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %239, i32 0, i32 3
  %241 = call i32 @wake_up(i32* %240)
  %242 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %243 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %242, i32 0, i32 2
  %244 = call i32 @mutex_unlock(i32* %243)
  %245 = load i32*, i32** %8, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %233
  %248 = load i32*, i32** %8, align 8
  %249 = call i32 @kfree(i32* %248)
  br label %250

250:                                              ; preds = %247, %233
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @mlog_exit(i32 %251)
  %253 = load i32, i32* %3, align 4
  %254 = call i32 @complete_and_exit(i32* null, i32 %253)
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_wait_on_mount(%struct.ocfs2_super*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ocfs2_super_lock(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_compute_replay_slots(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_queue_recovery_completion(i32, i32, i32*, i32*, %struct.ocfs2_quota_recovery*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_node_num_to_slot(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_recover_node(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_recovery_map_clear(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @ocfs2_check_journals_nolocks(%struct.ocfs2_super*) #1

declare dso_local %struct.ocfs2_quota_recovery* @ocfs2_begin_quota_recovery(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ocfs2_quota_recovery*) #1

declare dso_local i32 @PTR_ERR(%struct.ocfs2_quota_recovery*) #1

declare dso_local i32 @ocfs2_super_unlock(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_queue_replay_slots(%struct.ocfs2_super*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_recovery_completed(%struct.ocfs2_super*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_free_replay_slots(%struct.ocfs2_super*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mlog_exit(i32) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
