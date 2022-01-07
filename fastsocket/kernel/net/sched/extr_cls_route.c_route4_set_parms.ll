; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_set_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.route4_filter = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.route4_bucket*, %struct.route4_filter* }
%struct.TYPE_2__ = type { i8* }
%struct.route4_bucket = type { %struct.route4_filter** }
%struct.route4_head = type { %struct.route4_bucket** }
%struct.nlattr = type { i32 }
%struct.tcf_exts = type { i32 }

@route_ext_map = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_ROUTE4_TO = common dso_local global i64 0, align 8
@TCA_ROUTE4_FROM = common dso_local global i64 0, align 8
@TCA_ROUTE4_IIF = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@TCA_ROUTE4_CLASSID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, %struct.route4_filter*, i32, %struct.route4_head*, %struct.nlattr**, %struct.nlattr*, i32)* @route4_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route4_set_parms(%struct.tcf_proto* %0, i64 %1, %struct.route4_filter* %2, i32 %3, %struct.route4_head* %4, %struct.nlattr** %5, %struct.nlattr* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_proto*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.route4_filter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.route4_head*, align 8
  %15 = alloca %struct.nlattr**, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.route4_filter*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.route4_bucket*, align 8
  %25 = alloca %struct.tcf_exts, align 4
  %26 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.route4_filter* %2, %struct.route4_filter** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.route4_head* %4, %struct.route4_head** %14, align 8
  store %struct.nlattr** %5, %struct.nlattr*** %15, align 8
  store %struct.nlattr* %6, %struct.nlattr** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 32768, i32* %21, align 4
  %27 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %30 = call i32 @tcf_exts_validate(%struct.tcf_proto* %27, %struct.nlattr** %28, %struct.nlattr* %29, %struct.tcf_exts* %25, i32* @route_ext_map)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %9, align 4
  br label %268

35:                                               ; preds = %8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %18, align 4
  %38 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %39 = load i64, i64* @TCA_ROUTE4_TO, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %35
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, 32768
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %264

51:                                               ; preds = %46, %43
  %52 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %53 = load i64, i64* @TCA_ROUTE4_TO, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i8* @nla_get_u32(%struct.nlattr* %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp sgt i32 %58, 255
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %264

61:                                               ; preds = %51
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %21, align 4
  br label %63

63:                                               ; preds = %61, %35
  %64 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %65 = load i64, i64* @TCA_ROUTE4_FROM, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %63
  %70 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %71 = load i64, i64* @TCA_ROUTE4_IIF, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %264

76:                                               ; preds = %69
  %77 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %78 = load i64, i64* @TCA_ROUTE4_FROM, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i8* @nla_get_u32(%struct.nlattr* %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp sgt i32 %83, 255
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %264

86:                                               ; preds = %76
  %87 = load i32, i32* %19, align 4
  %88 = shl i32 %87, 16
  %89 = load i32, i32* %21, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %21, align 4
  br label %117

91:                                               ; preds = %63
  %92 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %93 = load i64, i64* @TCA_ROUTE4_IIF, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = icmp ne %struct.nlattr* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %99 = load i64, i64* @TCA_ROUTE4_IIF, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %98, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i8* @nla_get_u32(%struct.nlattr* %101)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp sgt i32 %104, 32767
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %264

107:                                              ; preds = %97
  %108 = load i32, i32* %19, align 4
  %109 = or i32 %108, 32768
  %110 = shl i32 %109, 16
  %111 = load i32, i32* %21, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %21, align 4
  br label %116

113:                                              ; preds = %91
  %114 = load i32, i32* %21, align 4
  %115 = or i32 %114, -65536
  store i32 %115, i32* %21, align 4
  br label %116

116:                                              ; preds = %113, %107
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* %13, align 4
  %125 = and i32 %124, 32512
  %126 = load i32, i32* %21, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %264

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %120, %117
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @to_hash(i32 %134)
  store i32 %135, i32* %23, align 4
  %136 = load %struct.route4_head*, %struct.route4_head** %14, align 8
  %137 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %136, i32 0, i32 0
  %138 = load %struct.route4_bucket**, %struct.route4_bucket*** %137, align 8
  %139 = load i32, i32* %23, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.route4_bucket*, %struct.route4_bucket** %138, i64 %140
  %142 = load %struct.route4_bucket*, %struct.route4_bucket** %141, align 8
  store %struct.route4_bucket* %142, %struct.route4_bucket** %24, align 8
  %143 = icmp eq %struct.route4_bucket* %142, null
  br i1 %143, label %144, label %164

144:                                              ; preds = %133
  %145 = load i32, i32* @ENOBUFS, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call %struct.route4_bucket* @kzalloc(i32 8, i32 %147)
  store %struct.route4_bucket* %148, %struct.route4_bucket** %24, align 8
  %149 = load %struct.route4_bucket*, %struct.route4_bucket** %24, align 8
  %150 = icmp eq %struct.route4_bucket* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %264

152:                                              ; preds = %144
  %153 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %154 = call i32 @tcf_tree_lock(%struct.tcf_proto* %153)
  %155 = load %struct.route4_bucket*, %struct.route4_bucket** %24, align 8
  %156 = load %struct.route4_head*, %struct.route4_head** %14, align 8
  %157 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %156, i32 0, i32 0
  %158 = load %struct.route4_bucket**, %struct.route4_bucket*** %157, align 8
  %159 = load i32, i32* %23, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.route4_bucket*, %struct.route4_bucket** %158, i64 %160
  store %struct.route4_bucket* %155, %struct.route4_bucket** %161, align 8
  %162 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %163 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %162)
  br label %195

164:                                              ; preds = %133
  %165 = load i32, i32* %21, align 4
  %166 = ashr i32 %165, 16
  %167 = call i32 @from_hash(i32 %166)
  store i32 %167, i32* %26, align 4
  %168 = load i32, i32* @EEXIST, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %18, align 4
  %170 = load %struct.route4_bucket*, %struct.route4_bucket** %24, align 8
  %171 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %170, i32 0, i32 0
  %172 = load %struct.route4_filter**, %struct.route4_filter*** %171, align 8
  %173 = load i32, i32* %26, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %172, i64 %174
  %176 = load %struct.route4_filter*, %struct.route4_filter** %175, align 8
  store %struct.route4_filter* %176, %struct.route4_filter** %22, align 8
  br label %177

177:                                              ; preds = %190, %164
  %178 = load %struct.route4_filter*, %struct.route4_filter** %22, align 8
  %179 = icmp ne %struct.route4_filter* %178, null
  br i1 %179, label %180, label %194

180:                                              ; preds = %177
  %181 = load %struct.route4_filter*, %struct.route4_filter** %22, align 8
  %182 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %185 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %264

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189
  %191 = load %struct.route4_filter*, %struct.route4_filter** %22, align 8
  %192 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %191, i32 0, i32 6
  %193 = load %struct.route4_filter*, %struct.route4_filter** %192, align 8
  store %struct.route4_filter* %193, %struct.route4_filter** %22, align 8
  br label %177

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194, %152
  %196 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %197 = call i32 @tcf_tree_lock(%struct.tcf_proto* %196)
  %198 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %199 = load i64, i64* @TCA_ROUTE4_TO, align 8
  %200 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %198, i64 %199
  %201 = load %struct.nlattr*, %struct.nlattr** %200, align 8
  %202 = icmp ne %struct.nlattr* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load i32, i32* %20, align 4
  %205 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %206 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %203, %195
  %208 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %209 = load i64, i64* @TCA_ROUTE4_FROM, align 8
  %210 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %208, i64 %209
  %211 = load %struct.nlattr*, %struct.nlattr** %210, align 8
  %212 = icmp ne %struct.nlattr* %211, null
  br i1 %212, label %213, label %220

213:                                              ; preds = %207
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* %19, align 4
  %216 = shl i32 %215, 16
  %217 = or i32 %214, %216
  %218 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %219 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  br label %231

220:                                              ; preds = %207
  %221 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %222 = load i64, i64* @TCA_ROUTE4_IIF, align 8
  %223 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %221, i64 %222
  %224 = load %struct.nlattr*, %struct.nlattr** %223, align 8
  %225 = icmp ne %struct.nlattr* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load i32, i32* %19, align 4
  %228 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %229 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %226, %220
  br label %231

231:                                              ; preds = %230, %213
  %232 = load i32, i32* %21, align 4
  %233 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %234 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.route4_bucket*, %struct.route4_bucket** %24, align 8
  %236 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %237 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %236, i32 0, i32 5
  store %struct.route4_bucket* %235, %struct.route4_bucket** %237, align 8
  %238 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %239 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %238)
  %240 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %241 = load i64, i64* @TCA_ROUTE4_CLASSID, align 8
  %242 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %240, i64 %241
  %243 = load %struct.nlattr*, %struct.nlattr** %242, align 8
  %244 = icmp ne %struct.nlattr* %243, null
  br i1 %244, label %245, label %259

245:                                              ; preds = %231
  %246 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %247 = load i64, i64* @TCA_ROUTE4_CLASSID, align 8
  %248 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %246, i64 %247
  %249 = load %struct.nlattr*, %struct.nlattr** %248, align 8
  %250 = call i8* @nla_get_u32(%struct.nlattr* %249)
  %251 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %252 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  store i8* %250, i8** %253, align 8
  %254 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %255 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %256 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %255, i32 0, i32 4
  %257 = load i64, i64* %11, align 8
  %258 = call i32 @tcf_bind_filter(%struct.tcf_proto* %254, %struct.TYPE_2__* %256, i64 %257)
  br label %259

259:                                              ; preds = %245, %231
  %260 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %261 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %262 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %261, i32 0, i32 3
  %263 = call i32 @tcf_exts_change(%struct.tcf_proto* %260, i32* %262, %struct.tcf_exts* %25)
  store i32 0, i32* %9, align 4
  br label %268

264:                                              ; preds = %188, %151, %131, %106, %85, %75, %60, %50
  %265 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %266 = call i32 @tcf_exts_destroy(%struct.tcf_proto* %265, %struct.tcf_exts* %25)
  %267 = load i32, i32* %18, align 4
  store i32 %267, i32* %9, align 4
  br label %268

268:                                              ; preds = %264, %259, %33
  %269 = load i32, i32* %9, align 4
  ret i32 %269
}

declare dso_local i32 @tcf_exts_validate(%struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, %struct.tcf_exts*, i32*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @to_hash(i32) #1

declare dso_local %struct.route4_bucket* @kzalloc(i32, i32) #1

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #1

declare dso_local i32 @from_hash(i32) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @tcf_exts_change(%struct.tcf_proto*, i32*, %struct.tcf_exts*) #1

declare dso_local i32 @tcf_exts_destroy(%struct.tcf_proto*, %struct.tcf_exts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
