; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_unblock_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_unblock_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i64, i64, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.ocfs2_lock_res*)*, i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)* }
%struct.ocfs2_unblock_ctl = type { i32, i32 }

@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_PENDING = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i64 0, align 8
@DLM_LOCK_PR = common dso_local global i64 0, align 8
@LOCK_TYPE_REQUIRES_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_REFRESHING = common dso_local global i32 0, align 4
@UNBLOCK_STOP_POST = common dso_local global i32 0, align 4
@LOCK_TYPE_USES_LVB = common dso_local global i32 0, align 4
@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, %struct.ocfs2_unblock_ctl*)* @ocfs2_unblock_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_unblock_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, %struct.ocfs2_unblock_ctl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca %struct.ocfs2_unblock_ctl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %6, align 8
  store %struct.ocfs2_unblock_ctl* %2, %struct.ocfs2_unblock_ctl** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = call i32 (...) @mlog_entry_void()
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %15, i32 0, i32 3
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %20 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  br label %28

28:                                               ; preds = %178, %3
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %28
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OCFS2_LOCK_PENDING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %235

43:                                               ; preds = %35
  %44 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %45 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %48 = call i32 @ocfs2_prepare_cancel_convert(%struct.ocfs2_super* %46, %struct.ocfs2_lock_res* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %50 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %49, i32 0, i32 3
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %57 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %58 = call i32 @ocfs2_cancel_convert(%struct.ocfs2_super* %56, %struct.ocfs2_lock_res* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %43
  br label %231

66:                                               ; preds = %28
  %67 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %68 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DLM_LOCK_EX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %74 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %79 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %72
  br label %235

83:                                               ; preds = %77, %66
  %84 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %85 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DLM_LOCK_PR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %91 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %235

95:                                               ; preds = %89, %83
  %96 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %97 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @LOCK_TYPE_REQUIRES_REFRESH, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %106 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @OCFS2_LOCK_REFRESHING, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %235

112:                                              ; preds = %104, %95
  %113 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %114 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @ocfs2_highest_compat_lock_level(i64 %115)
  store i32 %116, i32* %10, align 4
  %117 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %118 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)** %120, align 8
  %122 = icmp ne i32 (%struct.ocfs2_lock_res*, i32)* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %112
  %124 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %125 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %124, i32 0, i32 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)** %127, align 8
  %129 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 %128(%struct.ocfs2_lock_res* %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %123
  br label %235

134:                                              ; preds = %123, %112
  %135 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %136 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %135, i32 0, i32 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)** %138, align 8
  %140 = icmp ne i32 (%struct.ocfs2_lock_res*, i32)* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  br label %180

142:                                              ; preds = %134
  %143 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %144 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %9, align 4
  %147 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %148 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %147, i32 0, i32 3
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %152 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %151, i32 0, i32 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  %155 = load i32 (%struct.ocfs2_lock_res*, i32)*, i32 (%struct.ocfs2_lock_res*, i32)** %154, align 8
  %156 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 %155(%struct.ocfs2_lock_res* %156, i32 %157)
  %159 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %160 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %162 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @UNBLOCK_STOP_POST, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %142
  br label %231

167:                                              ; preds = %142
  %168 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %169 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %168, i32 0, i32 3
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @spin_lock_irqsave(i32* %169, i64 %170)
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %175 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %173, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %28

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %141
  %181 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %182 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %181, i32 0, i32 0
  store i32 0, i32* %182, align 4
  %183 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %184 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %183, i32 0, i32 4
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @LOCK_TYPE_USES_LVB, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %217

191:                                              ; preds = %180
  %192 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %193 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @DLM_LOCK_EX, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  store i32 1, i32* %12, align 4
  br label %198

198:                                              ; preds = %197, %191
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %198
  %202 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %203 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %201
  %209 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %210 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %209, i32 0, i32 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32 (%struct.ocfs2_lock_res*)*, i32 (%struct.ocfs2_lock_res*)** %212, align 8
  %214 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %215 = call i32 %213(%struct.ocfs2_lock_res* %214)
  br label %216

216:                                              ; preds = %208, %201, %198
  br label %217

217:                                              ; preds = %216, %180
  %218 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @ocfs2_prepare_downconvert(%struct.ocfs2_lock_res* %218, i32 %219)
  store i32 %220, i32* %13, align 4
  %221 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %222 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %221, i32 0, i32 3
  %223 = load i64, i64* %8, align 8
  %224 = call i32 @spin_unlock_irqrestore(i32* %222, i64 %223)
  %225 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %226 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @ocfs2_downconvert_lock(%struct.ocfs2_super* %225, %struct.ocfs2_lock_res* %226, i32 %227, i32 %228, i32 %229)
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %217, %166, %65
  %232 = load i32, i32* %11, align 4
  %233 = call i32 @mlog_exit(i32 %232)
  %234 = load i32, i32* %11, align 4
  store i32 %234, i32* %4, align 4
  br label %243

235:                                              ; preds = %133, %111, %94, %82, %42
  %236 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %237 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %236, i32 0, i32 3
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @spin_unlock_irqrestore(i32* %237, i64 %238)
  %240 = load %struct.ocfs2_unblock_ctl*, %struct.ocfs2_unblock_ctl** %7, align 8
  %241 = getelementptr inbounds %struct.ocfs2_unblock_ctl, %struct.ocfs2_unblock_ctl* %240, i32 0, i32 0
  store i32 1, i32* %241, align 4
  %242 = call i32 @mlog_exit(i32 0)
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %235, %231
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_prepare_cancel_convert(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_cancel_convert(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_highest_compat_lock_level(i64) #1

declare dso_local i32 @ocfs2_prepare_downconvert(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_downconvert_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
