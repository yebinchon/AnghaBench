; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i64 }
%struct.reiserfs_super_block = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_journal = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i8**, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REISERFS_SMALLTAIL = common dso_local global i32 0, align 4
@REISERFS_LARGETAIL = common dso_local global i32 0, align 4
@REISERFS_NO_BORDER = common dso_local global i32 0, align 4
@REISERFS_NO_UNHASHED_RELOCATION = common dso_local global i32 0, align 4
@REISERFS_HASHED_RELOCATION = common dso_local global i32 0, align 4
@REISERFS_TEST4 = common dso_local global i32 0, align 4
@REISERFS_ATTRS = common dso_local global i32 0, align 4
@REISERFS_XATTRS_USER = common dso_local global i32 0, align 4
@REISERFS_POSIXACL = common dso_local global i32 0, align 4
@REISERFS_BARRIER_FLUSH = common dso_local global i32 0, align 4
@REISERFS_BARRIER_NONE = common dso_local global i32 0, align 4
@REISERFS_ERROR_RO = common dso_local global i32 0, align 4
@REISERFS_ERROR_CONTINUE = common dso_local global i32 0, align 4
@REISERFS_ERROR_PANIC = common dso_local global i32 0, align 4
@REISERFS_QUOTA = common dso_local global i32 0, align 4
@JOURNAL_MAX_TRANS_AGE = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@REISERFS_VALID_FS = common dso_local global i64 0, align 8
@REISERFS_ERROR_FS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @reiserfs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.reiserfs_super_block*, align 8
  %9 = alloca %struct.reiserfs_transaction_handle, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.reiserfs_journal*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %25)
  store %struct.reiserfs_journal* %26, %struct.reiserfs_journal** %14, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kstrdup(i8* %27, i32 %28)
  store i8* %29, i8** %15, align 8
  %30 = load i32, i32* @MAXQUOTAS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %17, align 8
  %33 = alloca i8*, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %34 = call i32 (...) @lock_kernel()
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %35)
  store %struct.reiserfs_super_block* %36, %struct.reiserfs_super_block** %8, align 8
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @reiserfs_parse_options(%struct.super_block* %37, i8* %38, i64* %11, i64* %10, i32* null, i32* %13, i8** %33, i32* %19)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %16, align 4
  br label %334

44:                                               ; preds = %3
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call i32 @handle_attrs(%struct.super_block* %45)
  %47 = load i32, i32* @REISERFS_SMALLTAIL, align 4
  %48 = shl i32 1, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %12, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %12, align 8
  %52 = load i32, i32* @REISERFS_LARGETAIL, align 4
  %53 = shl i32 1, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %12, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %12, align 8
  %57 = load i32, i32* @REISERFS_NO_BORDER, align 4
  %58 = shl i32 1, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %12, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %12, align 8
  %62 = load i32, i32* @REISERFS_NO_UNHASHED_RELOCATION, align 4
  %63 = shl i32 1, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %12, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %12, align 8
  %67 = load i32, i32* @REISERFS_HASHED_RELOCATION, align 4
  %68 = shl i32 1, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %12, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %12, align 8
  %72 = load i32, i32* @REISERFS_TEST4, align 4
  %73 = shl i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %12, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %12, align 8
  %77 = load i32, i32* @REISERFS_ATTRS, align 4
  %78 = shl i32 1, %77
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %12, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %12, align 8
  %82 = load i32, i32* @REISERFS_XATTRS_USER, align 4
  %83 = shl i32 1, %82
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %12, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %12, align 8
  %87 = load i32, i32* @REISERFS_POSIXACL, align 4
  %88 = shl i32 1, %87
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %12, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %12, align 8
  %92 = load i32, i32* @REISERFS_BARRIER_FLUSH, align 4
  %93 = shl i32 1, %92
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %12, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %12, align 8
  %97 = load i32, i32* @REISERFS_BARRIER_NONE, align 4
  %98 = shl i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %12, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %12, align 8
  %102 = load i32, i32* @REISERFS_ERROR_RO, align 4
  %103 = shl i32 1, %102
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %12, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %12, align 8
  %107 = load i32, i32* @REISERFS_ERROR_CONTINUE, align 4
  %108 = shl i32 1, %107
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %12, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %12, align 8
  %112 = load i32, i32* @REISERFS_ERROR_PANIC, align 4
  %113 = shl i32 1, %112
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %12, align 8
  %116 = or i64 %115, %114
  store i64 %116, i64* %12, align 8
  %117 = load i32, i32* @REISERFS_QUOTA, align 4
  %118 = shl i32 1, %117
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %12, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %12, align 8
  %122 = load %struct.super_block*, %struct.super_block** %5, align 8
  %123 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %122)
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = xor i64 %126, -1
  %128 = and i64 %125, %127
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = and i64 %129, %130
  %132 = or i64 %128, %131
  %133 = load %struct.super_block*, %struct.super_block** %5, align 8
  %134 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i64 %132, i64* %135, align 8
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %44
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, -1
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %144 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %147 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %161

148:                                              ; preds = %138, %44
  %149 = load i32, i32* %13, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %153 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %156 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @JOURNAL_MAX_TRANS_AGE, align 4
  %158 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %159 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %151, %148
  br label %161

161:                                              ; preds = %160, %141
  %162 = load i64, i64* %10, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load %struct.super_block*, %struct.super_block** %5, align 8
  %166 = load i64, i64* %10, align 8
  %167 = call i32 @reiserfs_resize(%struct.super_block* %165, i64 %166)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %334

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171, %161
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @MS_RDONLY, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %224

178:                                              ; preds = %172
  %179 = load %struct.super_block*, %struct.super_block** %5, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @reiserfs_xattr_init(%struct.super_block* %179, i32 %181)
  %183 = load %struct.super_block*, %struct.super_block** %5, align 8
  %184 = getelementptr inbounds %struct.super_block, %struct.super_block* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MS_RDONLY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  br label %329

190:                                              ; preds = %178
  %191 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %192 = call i64 @sb_umount_state(%struct.reiserfs_super_block* %191)
  %193 = load i64, i64* @REISERFS_VALID_FS, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %202, label %195

195:                                              ; preds = %190
  %196 = load %struct.super_block*, %struct.super_block** %5, align 8
  %197 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %196)
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @REISERFS_VALID_FS, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %195, %190
  br label %329

203:                                              ; preds = %195
  %204 = load %struct.super_block*, %struct.super_block** %5, align 8
  %205 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %9, %struct.super_block* %204, i32 10)
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %334

209:                                              ; preds = %203
  %210 = load %struct.super_block*, %struct.super_block** %5, align 8
  %211 = load %struct.super_block*, %struct.super_block** %5, align 8
  %212 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %211)
  %213 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %210, i32 %212, i32 1)
  %214 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %215 = load %struct.super_block*, %struct.super_block** %5, align 8
  %216 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %215)
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @set_sb_umount_state(%struct.reiserfs_super_block* %214, i64 %218)
  %220 = load %struct.super_block*, %struct.super_block** %5, align 8
  %221 = load %struct.super_block*, %struct.super_block** %5, align 8
  %222 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %221)
  %223 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %9, %struct.super_block* %220, i32 %222)
  br label %304

224:                                              ; preds = %172
  %225 = load %struct.super_block*, %struct.super_block** %5, align 8
  %226 = getelementptr inbounds %struct.super_block, %struct.super_block* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @MS_RDONLY, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %224
  %232 = load %struct.super_block*, %struct.super_block** %5, align 8
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @reiserfs_xattr_init(%struct.super_block* %232, i32 %234)
  br label %329

236:                                              ; preds = %224
  %237 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %238 = call i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %14, align 8
  %242 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %16, align 4
  br label %334

244:                                              ; preds = %236
  %245 = load %struct.super_block*, %struct.super_block** %5, align 8
  %246 = load i64, i64* %11, align 8
  %247 = call i32 @handle_data_mode(%struct.super_block* %245, i64 %246)
  %248 = load %struct.super_block*, %struct.super_block** %5, align 8
  %249 = load i64, i64* %11, align 8
  %250 = call i32 @handle_barrier_mode(%struct.super_block* %248, i64 %249)
  %251 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %252 = call i64 @sb_umount_state(%struct.reiserfs_super_block* %251)
  %253 = load %struct.super_block*, %struct.super_block** %5, align 8
  %254 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %253)
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 2
  store i64 %252, i64* %255, align 8
  %256 = load i32, i32* @MS_RDONLY, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.super_block*, %struct.super_block** %5, align 8
  %259 = getelementptr inbounds %struct.super_block, %struct.super_block* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load %struct.super_block*, %struct.super_block** %5, align 8
  %263 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %9, %struct.super_block* %262, i32 10)
  store i32 %263, i32* %16, align 4
  %264 = load i32, i32* %16, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %244
  br label %334

267:                                              ; preds = %244
  %268 = load %struct.super_block*, %struct.super_block** %5, align 8
  %269 = load %struct.super_block*, %struct.super_block** %5, align 8
  %270 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %269)
  %271 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %268, i32 %270, i32 1)
  %272 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %273 = call i64 @sb_umount_state(%struct.reiserfs_super_block* %272)
  %274 = load %struct.super_block*, %struct.super_block** %5, align 8
  %275 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %274)
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 2
  store i64 %273, i64* %276, align 8
  %277 = load i32, i32* @MS_RDONLY, align 4
  %278 = xor i32 %277, -1
  %279 = load %struct.super_block*, %struct.super_block** %5, align 8
  %280 = getelementptr inbounds %struct.super_block, %struct.super_block* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 8
  %283 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %284 = load i64, i64* @REISERFS_ERROR_FS, align 8
  %285 = call i32 @set_sb_umount_state(%struct.reiserfs_super_block* %283, i64 %284)
  %286 = load %struct.super_block*, %struct.super_block** %5, align 8
  %287 = call i32 @old_format_only(%struct.super_block* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %267
  %290 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %291 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %8, align 8
  %292 = call i64 @sb_mnt_count(%struct.reiserfs_super_block* %291)
  %293 = add nsw i64 %292, 1
  %294 = call i32 @set_sb_mnt_count(%struct.reiserfs_super_block* %290, i64 %293)
  br label %295

295:                                              ; preds = %289, %267
  %296 = load %struct.super_block*, %struct.super_block** %5, align 8
  %297 = load %struct.super_block*, %struct.super_block** %5, align 8
  %298 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %297)
  %299 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %9, %struct.super_block* %296, i32 %298)
  %300 = load i64, i64* @REISERFS_VALID_FS, align 8
  %301 = load %struct.super_block*, %struct.super_block** %5, align 8
  %302 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %301)
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 2
  store i64 %300, i64* %303, align 8
  br label %304

304:                                              ; preds = %295, %209
  %305 = load %struct.super_block*, %struct.super_block** %5, align 8
  %306 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %305)
  %307 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %306, i32 0, i32 4
  store i32 1, i32* %307, align 4
  %308 = load %struct.super_block*, %struct.super_block** %5, align 8
  %309 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %9, %struct.super_block* %308, i32 10)
  store i32 %309, i32* %16, align 4
  %310 = load i32, i32* %16, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %304
  br label %334

313:                                              ; preds = %304
  %314 = load %struct.super_block*, %struct.super_block** %5, align 8
  %315 = getelementptr inbounds %struct.super_block, %struct.super_block* %314, i32 0, i32 1
  store i64 0, i64* %315, align 8
  %316 = load i32*, i32** %6, align 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @MS_RDONLY, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %328, label %321

321:                                              ; preds = %313
  %322 = load %struct.super_block*, %struct.super_block** %5, align 8
  %323 = call i32 @finish_unfinished(%struct.super_block* %322)
  %324 = load %struct.super_block*, %struct.super_block** %5, align 8
  %325 = load i32*, i32** %6, align 8
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @reiserfs_xattr_init(%struct.super_block* %324, i32 %326)
  br label %328

328:                                              ; preds = %321, %313
  br label %329

329:                                              ; preds = %328, %231, %202, %189
  %330 = load %struct.super_block*, %struct.super_block** %5, align 8
  %331 = load i8*, i8** %15, align 8
  %332 = call i32 @replace_mount_options(%struct.super_block* %330, i8* %331)
  %333 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %339

334:                                              ; preds = %312, %266, %240, %208, %170, %41
  %335 = load i8*, i8** %15, align 8
  %336 = call i32 @kfree(i8* %335)
  %337 = call i32 (...) @unlock_kernel()
  %338 = load i32, i32* %16, align 4
  store i32 %338, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %339

339:                                              ; preds = %334, %329
  %340 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %340)
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @reiserfs_parse_options(%struct.super_block*, i8*, i64*, i64*, i32*, i32*, i8**, i32*) #1

declare dso_local i32 @handle_attrs(%struct.super_block*) #1

declare dso_local i32 @reiserfs_resize(%struct.super_block*, i64) #1

declare dso_local i32 @reiserfs_xattr_init(%struct.super_block*, i32) #1

declare dso_local i64 @sb_umount_state(%struct.reiserfs_super_block*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @set_sb_umount_state(%struct.reiserfs_super_block*, i64) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal*) #1

declare dso_local i32 @handle_data_mode(%struct.super_block*, i64) #1

declare dso_local i32 @handle_barrier_mode(%struct.super_block*, i64) #1

declare dso_local i32 @old_format_only(%struct.super_block*) #1

declare dso_local i32 @set_sb_mnt_count(%struct.reiserfs_super_block*, i64) #1

declare dso_local i64 @sb_mnt_count(%struct.reiserfs_super_block*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @finish_unfinished(%struct.super_block*) #1

declare dso_local i32 @replace_mount_options(%struct.super_block*, i8*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
