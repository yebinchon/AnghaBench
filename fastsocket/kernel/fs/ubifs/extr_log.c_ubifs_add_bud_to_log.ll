; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_log.c_ubifs_add_bud_to_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_log.c_ubifs_add_bud_to_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64 }
%struct.ubifs_bud = type { i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ubifs_ref_node = type { i32, i32, i32, i8*, %struct.TYPE_2__ }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"not enough log space - %lld, required %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"bud bytes %lld (%lld max), require commit\00", align 1
@COMMIT_RESTING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"bud bytes %lld (%lld max), initiate BG commit\00", align 1
@UBIFS_REF_NODE = common dso_local global i32 0, align 4
@UBI_SHORTTERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"write ref LEB %d:%d\00", align 1
@UBIFS_REF_NODE_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_add_bud_to_log(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_bud*, align 8
  %12 = alloca %struct.ubifs_ref_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.ubifs_ref_node* @kmalloc(i32 32, i32 %13)
  %15 = bitcast %struct.ubifs_ref_node* %14 to %struct.ubifs_bud*
  store %struct.ubifs_bud* %15, %struct.ubifs_bud** %11, align 8
  %16 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %17 = icmp ne %struct.ubifs_bud* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %268

21:                                               ; preds = %4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call %struct.ubifs_ref_node* @kzalloc(i64 %24, i32 %25)
  store %struct.ubifs_ref_node* %26, %struct.ubifs_ref_node** %12, align 8
  %27 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %28 = icmp ne %struct.ubifs_ref_node* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %31 = bitcast %struct.ubifs_bud* %30 to %struct.ubifs_ref_node*
  %32 = call i32 @kfree(%struct.ubifs_ref_node* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %268

35:                                               ; preds = %21
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 9
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 11
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EROFS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %249

46:                                               ; preds = %35
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %48 = call i64 @empty_log_bytes(%struct.ubifs_info* %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %59 = call i64 @empty_log_bytes(%struct.ubifs_info* %58)
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dbg_log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %62)
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %65 = call i32 @ubifs_commit_required(%struct.ubifs_info* %64)
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %249

68:                                               ; preds = %46
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %68
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = call i32 @dbg_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %86, i64 %90)
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %93 = call i32 @ubifs_commit_required(%struct.ubifs_info* %92)
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %249

96:                                               ; preds = %68
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %98 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %100, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %96
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %107 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @COMMIT_RESTING, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = call i32 @dbg_log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %115, i64 %119)
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %122 = call i32 @ubifs_request_bg_commit(%struct.ubifs_info* %121)
  br label %123

123:                                              ; preds = %111, %105, %96
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %126 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %129 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %132 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @UBIFS_REF_NODE, align 4
  %134 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %135 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %138 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %143 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %145 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @cpu_to_le32(i32 %146)
  %148 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %149 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %154 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %156 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %163 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %161, %164
  %166 = icmp sgt i64 %157, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %123
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %170 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %169, i32 0, i32 8
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @next_log_lnum(%struct.ubifs_info* %168, i64 %171)
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %173, i32 0, i32 8
  store i64 %172, i64* %174, align 8
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %176 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %175, i32 0, i32 7
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %167, %123
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %179 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %178, i32 0, i32 7
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %177
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %184 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %185 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %184, i32 0, i32 8
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %183, i64 %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %249

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %177
  %193 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %194 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %199 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %202 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @UBI_SHORTTERM, align 4
  %205 = call i32 @ubi_leb_map(i32 %200, i32 %203, i32 %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %197
  br label %249

209:                                              ; preds = %197
  br label %210

210:                                              ; preds = %209, %192
  %211 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %212 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %211, i32 0, i32 8
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %215 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %214, i32 0, i32 7
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @dbg_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %213, i64 %216)
  %218 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %219 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %220 = load i32, i32* @UBIFS_REF_NODE_SZ, align 4
  %221 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %222 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %221, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %225 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %224, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @UBI_SHORTTERM, align 4
  %228 = call i32 @ubifs_write_node(%struct.ubifs_info* %218, %struct.ubifs_ref_node* %219, i32 %220, i64 %223, i64 %226, i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %210
  br label %249

232:                                              ; preds = %210
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %234 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %237 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %236, i32 0, i32 7
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, %235
  store i64 %239, i64* %237, align 8
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %241 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %242 = bitcast %struct.ubifs_bud* %241 to %struct.ubifs_ref_node*
  %243 = call i32 @ubifs_add_bud(%struct.ubifs_info* %240, %struct.ubifs_ref_node* %242)
  %244 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %245 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %244, i32 0, i32 9
  %246 = call i32 @mutex_unlock(i32* %245)
  %247 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %248 = call i32 @kfree(%struct.ubifs_ref_node* %247)
  store i32 0, i32* %5, align 4
  br label %268

249:                                              ; preds = %231, %208, %190, %82, %57, %43
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* @EAGAIN, align 4
  %252 = sub nsw i32 0, %251
  %253 = icmp ne i32 %250, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %249
  %259 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %260 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %259, i32 0, i32 9
  %261 = call i32 @mutex_unlock(i32* %260)
  %262 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %263 = call i32 @kfree(%struct.ubifs_ref_node* %262)
  %264 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %265 = bitcast %struct.ubifs_bud* %264 to %struct.ubifs_ref_node*
  %266 = call i32 @kfree(%struct.ubifs_ref_node* %265)
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %5, align 4
  br label %268

268:                                              ; preds = %258, %232, %29, %18
  %269 = load i32, i32* %5, align 4
  ret i32 %269
}

declare dso_local %struct.ubifs_ref_node* @kmalloc(i32, i32) #1

declare dso_local %struct.ubifs_ref_node* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_ref_node*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @empty_log_bytes(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_log(i8*, i64, i64) #1

declare dso_local i32 @ubifs_commit_required(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_request_bg_commit(%struct.ubifs_info*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @next_log_lnum(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubi_leb_map(i32, i32, i32) #1

declare dso_local i32 @ubifs_write_node(%struct.ubifs_info*, %struct.ubifs_ref_node*, i32, i64, i64, i32) #1

declare dso_local i32 @ubifs_add_bud(%struct.ubifs_info*, %struct.ubifs_ref_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
