; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c___dcbnl_pg_setcfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c___dcbnl_pg_setcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)* }
%struct.nlattr = type { i32 }

@DCB_PG_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_PG_CFG = common dso_local global i64 0, align 8
@dcbnl_pg_nest = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_7 = common dso_local global i32 0, align 4
@dcbnl_tc_param_nest = common dso_local global i32 0, align 4
@DCB_ATTR_VALUE_UNDEFINED = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_STRICT_PRIO = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_PGID = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_BW_PCT = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_UP_MAPPING = common dso_local global i64 0, align 8
@DCB_PG_ATTR_BW_ID_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_7 = common dso_local global i32 0, align 4
@RTM_SETDCB = common dso_local global i32 0, align 4
@DCB_CMD_PGRX_SCFG = common dso_local global i32 0, align 4
@DCB_CMD_PGTX_SCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32, i32)* @__dcbnl_pg_setcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dcbnl_pg_setcfg(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* @DCB_PG_ATTR_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* @DCB_TC_ATTR_PARAM_MAX, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca %struct.nlattr*, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %17, align 4
  %35 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %36 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %6
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)** %44, align 8
  %46 = icmp ne i32 (%struct.net_device*, i32, i32, i32, i32, i32)* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.net_device*, i32, i32, i32, i32, i32)* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.net_device*, i32, i32)* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.net_device*, %struct.net_device** %8, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.net_device*, i32, i32)* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61, %54, %47, %40, %6
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %252

70:                                               ; preds = %61
  %71 = load i32, i32* @DCB_PG_ATTR_MAX, align 4
  %72 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %73 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = load i32, i32* @dcbnl_pg_nest, align 4
  %77 = call i32 @nla_parse_nested(%struct.nlattr** %28, i32 %71, %struct.nlattr* %75, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %250

81:                                               ; preds = %70
  %82 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %183, %81
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* @DCB_PG_ATTR_TC_7, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %186

87:                                               ; preds = %83
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %183

94:                                               ; preds = %87
  %95 = load i32, i32* @DCB_TC_ATTR_PARAM_MAX, align 4
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = load i32, i32* @dcbnl_tc_param_nest, align 4
  %101 = call i32 @nla_parse_nested(%struct.nlattr** %32, i32 %95, %struct.nlattr* %99, i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %250

105:                                              ; preds = %94
  %106 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %108, i32* %22, align 4
  %109 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %109, i32* %20, align 4
  %110 = load i64, i64* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load i64, i64* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = call i32 @nla_get_u8(%struct.nlattr* %117)
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %114, %105
  %120 = load i64, i64* @DCB_TC_ATTR_PARAM_PGID, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = icmp ne %struct.nlattr* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i64, i64* @DCB_TC_ATTR_PARAM_PGID, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i32 @nla_get_u8(%struct.nlattr* %127)
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i64, i64* @DCB_TC_ATTR_PARAM_BW_PCT, align 8
  %131 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %130
  %132 = load %struct.nlattr*, %struct.nlattr** %131, align 8
  %133 = icmp ne %struct.nlattr* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i64, i64* @DCB_TC_ATTR_PARAM_BW_PCT, align 8
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = call i32 @nla_get_u8(%struct.nlattr* %137)
  store i32 %138, i32* %22, align 4
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i64, i64* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 8
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = icmp ne %struct.nlattr* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i64, i64* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 8
  %146 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %145
  %147 = load %struct.nlattr*, %struct.nlattr** %146, align 8
  %148 = call i32 @nla_get_u8(%struct.nlattr* %147)
  store i32 %148, i32* %20, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %149
  %153 = load %struct.net_device*, %struct.net_device** %8, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 3
  %157 = load i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)** %156, align 8
  %158 = load %struct.net_device*, %struct.net_device** %8, align 8
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %20, align 4
  %166 = call i32 %157(%struct.net_device* %158, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  br label %182

167:                                              ; preds = %149
  %168 = load %struct.net_device*, %struct.net_device** %8, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)** %171, align 8
  %173 = load %struct.net_device*, %struct.net_device** %8, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %20, align 4
  %181 = call i32 %172(%struct.net_device* %173, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %167, %152
  br label %183

183:                                              ; preds = %182, %93
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %18, align 4
  br label %83

186:                                              ; preds = %83
  %187 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %232, %186
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* @DCB_PG_ATTR_BW_ID_7, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %235

192:                                              ; preds = %188
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %194
  %196 = load %struct.nlattr*, %struct.nlattr** %195, align 8
  %197 = icmp ne %struct.nlattr* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %192
  br label %232

199:                                              ; preds = %192
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %201
  %203 = load %struct.nlattr*, %struct.nlattr** %202, align 8
  %204 = call i32 @nla_get_u8(%struct.nlattr* %203)
  store i32 %204, i32* %22, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %199
  %208 = load %struct.net_device*, %struct.net_device** %8, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 0
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %211, align 8
  %213 = load %struct.net_device*, %struct.net_device** %8, align 8
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i32, i32* %22, align 4
  %218 = call i32 %212(%struct.net_device* %213, i32 %216, i32 %217)
  br label %231

219:                                              ; preds = %199
  %220 = load %struct.net_device*, %struct.net_device** %8, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %223, align 8
  %225 = load %struct.net_device*, %struct.net_device** %8, align 8
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %228 = sub nsw i32 %226, %227
  %229 = load i32, i32* %22, align 4
  %230 = call i32 %224(%struct.net_device* %225, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %219, %207
  br label %232

232:                                              ; preds = %231, %198
  %233 = load i32, i32* %18, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %18, align 4
  br label %188

235:                                              ; preds = %188
  %236 = load i32, i32* @RTM_SETDCB, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i32, i32* @DCB_CMD_PGRX_SCFG, align 4
  br label %243

241:                                              ; preds = %235
  %242 = load i32, i32* @DCB_CMD_PGTX_SCFG, align 4
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  %245 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @dcbnl_reply(i32 0, i32 %236, i32 %244, i64 %245, i32 %246, i32 %247, i32 %248)
  store i32 %249, i32* %17, align 4
  br label %250

250:                                              ; preds = %243, %104, %80
  %251 = load i32, i32* %17, align 4
  store i32 %251, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %252

252:                                              ; preds = %250, %68
  %253 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %253)
  %254 = load i32, i32* %7, align 4
  ret i32 %254
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @dcbnl_reply(i32, i32, i32, i64, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
