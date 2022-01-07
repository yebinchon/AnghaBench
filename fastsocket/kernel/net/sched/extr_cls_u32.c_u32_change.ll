; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_hnode*, %struct.tc_u_common*, i32 }
%struct.tc_u_hnode = type { i32, i32, i32, %struct.tc_u_knode**, %struct.tc_u_hnode*, i32, %struct.tc_u_common* }
%struct.tc_u_knode = type { i32, %struct.tc_u_knode*, %struct.tc_u_knode*, %struct.TYPE_2__, i64, %struct.tc_u_hnode*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tc_u_common = type { %struct.tc_u_hnode* }
%struct.nlattr = type { i32 }
%struct.tc_u32_sel = type { i32, i64 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_U32_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@u32_policy = common dso_local global i32 0, align 4
@TCA_RATE = common dso_local global i64 0, align 8
@TCA_U32_DIVISOR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCA_U32_HASH = common dso_local global i64 0, align 8
@TC_U32_ROOT = common dso_local global i64 0, align 8
@TCA_U32_SEL = common dso_local global i64 0, align 8
@TCA_U32_MARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, i32, %struct.nlattr**, i64*)* @u32_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_change(%struct.tcf_proto* %0, i64 %1, i32 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.tc_u_common*, align 8
  %13 = alloca %struct.tc_u_hnode*, align 8
  %14 = alloca %struct.tc_u_knode*, align 8
  %15 = alloca %struct.tc_u32_sel*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.tc_u_knode**, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %25 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %24, i32 0, i32 1
  %26 = load %struct.tc_u_common*, %struct.tc_u_common** %25, align 8
  store %struct.tc_u_common* %26, %struct.tc_u_common** %12, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %28 = load i64, i64* @TCA_OPTIONS, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  store %struct.nlattr* %30, %struct.nlattr** %16, align 8
  %31 = load i32, i32* @TCA_U32_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %17, align 8
  %35 = alloca %struct.nlattr*, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %37 = icmp eq %struct.nlattr* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

47:                                               ; preds = %5
  %48 = load i32, i32* @TCA_U32_MAX, align 4
  %49 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %50 = load i32, i32* @u32_policy, align 4
  %51 = call i32 @nla_parse_nested(%struct.nlattr** %35, i32 %48, %struct.nlattr* %49, i32 %50)
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %20, align 4
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

56:                                               ; preds = %47
  %57 = load i64*, i64** %11, align 8
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %59, %struct.tc_u_knode** %14, align 8
  %60 = icmp ne %struct.tc_u_knode* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %63 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @TC_U32_KEY(i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

70:                                               ; preds = %61
  %71 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %74 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %73, i32 0, i32 5
  %75 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %74, align 8
  %76 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %77 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %78 = load i64, i64* @TCA_RATE, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i32 @u32_set_parms(%struct.tcf_proto* %71, i64 %72, %struct.tc_u_hnode* %75, %struct.tc_u_knode* %76, %struct.nlattr** %35, %struct.nlattr* %80)
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

82:                                               ; preds = %56
  %83 = load i64, i64* @TCA_U32_DIVISOR, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %87, label %162

87:                                               ; preds = %82
  %88 = load i64, i64* @TCA_U32_DIVISOR, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i8* @nla_get_u32(%struct.nlattr* %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %22, align 4
  %93 = load i32, i32* %22, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %22, align 4
  %95 = icmp ugt i32 %94, 256
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

99:                                               ; preds = %87
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @TC_U32_KEY(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %111 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %110, i32 0, i32 1
  %112 = load %struct.tc_u_common*, %struct.tc_u_common** %111, align 8
  %113 = call i32 @gen_new_htid(%struct.tc_u_common* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %106
  %121 = load i32, i32* %22, align 4
  %122 = zext i32 %121 to i64
  %123 = mul i64 %122, 8
  %124 = add i64 48, %123
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @kzalloc(i32 %125, i32 %126)
  %128 = bitcast i8* %127 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %128, %struct.tc_u_hnode** %13, align 8
  %129 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %130 = icmp eq %struct.tc_u_hnode* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %120
  %132 = load i32, i32* @ENOBUFS, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

134:                                              ; preds = %120
  %135 = load %struct.tc_u_common*, %struct.tc_u_common** %12, align 8
  %136 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %137 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %136, i32 0, i32 6
  store %struct.tc_u_common* %135, %struct.tc_u_common** %137, align 8
  %138 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %139 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i32, i32* %22, align 4
  %141 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %142 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %145 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %147 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %150 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load %struct.tc_u_common*, %struct.tc_u_common** %12, align 8
  %152 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %151, i32 0, i32 0
  %153 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %152, align 8
  %154 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %155 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %154, i32 0, i32 4
  store %struct.tc_u_hnode* %153, %struct.tc_u_hnode** %155, align 8
  %156 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %157 = load %struct.tc_u_common*, %struct.tc_u_common** %12, align 8
  %158 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %157, i32 0, i32 0
  store %struct.tc_u_hnode* %156, %struct.tc_u_hnode** %158, align 8
  %159 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %160 = ptrtoint %struct.tc_u_hnode* %159 to i64
  %161 = load i64*, i64** %11, align 8
  store i64 %160, i64* %161, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

162:                                              ; preds = %82
  %163 = load i64, i64* @TCA_U32_HASH, align 8
  %164 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %163
  %165 = load %struct.nlattr*, %struct.nlattr** %164, align 8
  %166 = icmp ne %struct.nlattr* %165, null
  br i1 %166, label %167, label %198

167:                                              ; preds = %162
  %168 = load i64, i64* @TCA_U32_HASH, align 8
  %169 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %168
  %170 = load %struct.nlattr*, %struct.nlattr** %169, align 8
  %171 = call i8* @nla_get_u32(%struct.nlattr* %170)
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %19, align 4
  %174 = call i64 @TC_U32_HTID(i32 %173)
  %175 = load i64, i64* @TC_U32_ROOT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %167
  %178 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %179 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %178, i32 0, i32 0
  %180 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %179, align 8
  store %struct.tc_u_hnode* %180, %struct.tc_u_hnode** %13, align 8
  %181 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %182 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %19, align 4
  br label %197

184:                                              ; preds = %167
  %185 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %186 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %185, i32 0, i32 1
  %187 = load %struct.tc_u_common*, %struct.tc_u_common** %186, align 8
  %188 = load i32, i32* %19, align 4
  %189 = call i64 @TC_U32_HTID(i32 %188)
  %190 = call %struct.tc_u_hnode* @u32_lookup_ht(%struct.tc_u_common* %187, i64 %189)
  store %struct.tc_u_hnode* %190, %struct.tc_u_hnode** %13, align 8
  %191 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %192 = icmp eq %struct.tc_u_hnode* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

196:                                              ; preds = %184
  br label %197

197:                                              ; preds = %196, %177
  br label %205

198:                                              ; preds = %162
  %199 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %200 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %199, i32 0, i32 0
  %201 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %200, align 8
  store %struct.tc_u_hnode* %201, %struct.tc_u_hnode** %13, align 8
  %202 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %203 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %19, align 4
  br label %205

205:                                              ; preds = %198, %197
  %206 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %207 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = zext i32 %208 to i64
  %210 = load i32, i32* %19, align 4
  %211 = call i64 @TC_U32_HASH(i32 %210)
  %212 = icmp ult i64 %209, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

216:                                              ; preds = %205
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %216
  %220 = load i32, i32* %9, align 4
  %221 = call i64 @TC_U32_HTID(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %219
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %19, align 4
  %226 = xor i32 %224, %225
  %227 = call i64 @TC_U32_HTID(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

232:                                              ; preds = %223, %219
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @TC_U32_NODE(i32 %234)
  %236 = or i32 %233, %235
  store i32 %236, i32* %9, align 4
  br label %241

237:                                              ; preds = %216
  %238 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @gen_new_kid(%struct.tc_u_hnode* %238, i32 %239)
  store i32 %240, i32* %9, align 4
  br label %241

241:                                              ; preds = %237, %232
  %242 = load i64, i64* @TCA_U32_SEL, align 8
  %243 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %242
  %244 = load %struct.nlattr*, %struct.nlattr** %243, align 8
  %245 = icmp eq %struct.nlattr* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

249:                                              ; preds = %241
  %250 = load i64, i64* @TCA_U32_SEL, align 8
  %251 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %250
  %252 = load %struct.nlattr*, %struct.nlattr** %251, align 8
  %253 = call %struct.tc_u32_sel* @nla_data(%struct.nlattr* %252)
  store %struct.tc_u32_sel* %253, %struct.tc_u32_sel** %15, align 8
  %254 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %15, align 8
  %255 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = mul i64 %257, 4
  %259 = add i64 56, %258
  %260 = trunc i64 %259 to i32
  %261 = load i32, i32* @GFP_KERNEL, align 4
  %262 = call i8* @kzalloc(i32 %260, i32 %261)
  %263 = bitcast i8* %262 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %263, %struct.tc_u_knode** %14, align 8
  %264 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %265 = icmp eq %struct.tc_u_knode* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %249
  %267 = load i32, i32* @ENOBUFS, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

269:                                              ; preds = %249
  %270 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %271 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %270, i32 0, i32 6
  %272 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %15, align 8
  %273 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %15, align 8
  %274 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = mul i64 %276, 4
  %278 = add i64 16, %277
  %279 = trunc i64 %278 to i32
  %280 = call i32 @memcpy(%struct.TYPE_2__* %271, %struct.tc_u32_sel* %272, i32 %279)
  %281 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %282 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %283 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %282, i32 0, i32 5
  store %struct.tc_u_hnode* %281, %struct.tc_u_hnode** %283, align 8
  %284 = load i32, i32* %9, align 4
  %285 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %286 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  %287 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %15, align 8
  %288 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %269
  %292 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %15, align 8
  %293 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @ntohl(i64 %294)
  %296 = call i64 @ffs(i32 %295)
  %297 = sub nsw i64 %296, 1
  br label %299

298:                                              ; preds = %269
  br label %299

299:                                              ; preds = %298, %291
  %300 = phi i64 [ %297, %291 ], [ 0, %298 ]
  %301 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %302 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %301, i32 0, i32 4
  store i64 %300, i64* %302, align 8
  %303 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %304 = load i64, i64* %8, align 8
  %305 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %306 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %307 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %308 = load i64, i64* @TCA_RATE, align 8
  %309 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %307, i64 %308
  %310 = load %struct.nlattr*, %struct.nlattr** %309, align 8
  %311 = call i32 @u32_set_parms(%struct.tcf_proto* %303, i64 %304, %struct.tc_u_hnode* %305, %struct.tc_u_knode* %306, %struct.nlattr** %35, %struct.nlattr* %310)
  store i32 %311, i32* %20, align 4
  %312 = load i32, i32* %20, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %354

314:                                              ; preds = %299
  %315 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %13, align 8
  %316 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %315, i32 0, i32 3
  %317 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = call i64 @TC_U32_HASH(i32 %318)
  %320 = getelementptr inbounds %struct.tc_u_knode*, %struct.tc_u_knode** %317, i64 %319
  store %struct.tc_u_knode** %320, %struct.tc_u_knode*** %23, align 8
  br label %321

321:                                              ; preds = %336, %314
  %322 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %23, align 8
  %323 = load %struct.tc_u_knode*, %struct.tc_u_knode** %322, align 8
  %324 = icmp ne %struct.tc_u_knode* %323, null
  br i1 %324, label %325, label %340

325:                                              ; preds = %321
  %326 = load i32, i32* %9, align 4
  %327 = call i32 @TC_U32_NODE(i32 %326)
  %328 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %23, align 8
  %329 = load %struct.tc_u_knode*, %struct.tc_u_knode** %328, align 8
  %330 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @TC_U32_NODE(i32 %331)
  %333 = icmp slt i32 %327, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %325
  br label %340

335:                                              ; preds = %325
  br label %336

336:                                              ; preds = %335
  %337 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %23, align 8
  %338 = load %struct.tc_u_knode*, %struct.tc_u_knode** %337, align 8
  %339 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %338, i32 0, i32 2
  store %struct.tc_u_knode** %339, %struct.tc_u_knode*** %23, align 8
  br label %321

340:                                              ; preds = %334, %321
  %341 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %23, align 8
  %342 = load %struct.tc_u_knode*, %struct.tc_u_knode** %341, align 8
  %343 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %344 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %343, i32 0, i32 2
  store %struct.tc_u_knode* %342, %struct.tc_u_knode** %344, align 8
  %345 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %346 = call i32 @tcf_tree_lock(%struct.tcf_proto* %345)
  %347 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %348 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %23, align 8
  store %struct.tc_u_knode* %347, %struct.tc_u_knode** %348, align 8
  %349 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %350 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %349)
  %351 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %352 = ptrtoint %struct.tc_u_knode* %351 to i64
  %353 = load i64*, i64** %11, align 8
  store i64 %352, i64* %353, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

354:                                              ; preds = %299
  %355 = load %struct.tc_u_knode*, %struct.tc_u_knode** %14, align 8
  %356 = call i32 @kfree(%struct.tc_u_knode* %355)
  %357 = load i32, i32* %20, align 4
  store i32 %357, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %358

358:                                              ; preds = %354, %340, %266, %246, %229, %213, %193, %134, %131, %116, %103, %96, %70, %67, %54, %45
  %359 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %359)
  %360 = load i32, i32* %6, align 4
  ret i32 %360
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i64 @TC_U32_KEY(i32) #2

declare dso_local i32 @u32_set_parms(%struct.tcf_proto*, i64, %struct.tc_u_hnode*, %struct.tc_u_knode*, %struct.nlattr**, %struct.nlattr*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @gen_new_htid(%struct.tc_u_common*) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i64 @TC_U32_HTID(i32) #2

declare dso_local %struct.tc_u_hnode* @u32_lookup_ht(%struct.tc_u_common*, i64) #2

declare dso_local i64 @TC_U32_HASH(i32) #2

declare dso_local i32 @TC_U32_NODE(i32) #2

declare dso_local i32 @gen_new_kid(%struct.tc_u_hnode*, i32) #2

declare dso_local %struct.tc_u32_sel* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.tc_u32_sel*, i32) #2

declare dso_local i64 @ffs(i32) #2

declare dso_local i32 @ntohl(i64) #2

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #2

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #2

declare dso_local i32 @kfree(%struct.tc_u_knode*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
