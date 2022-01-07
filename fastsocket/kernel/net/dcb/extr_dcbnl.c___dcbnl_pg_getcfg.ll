; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c___dcbnl_pg_getcfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c___dcbnl_pg_getcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i32, i32 }

@DCB_PG_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_PG_CFG = common dso_local global i64 0, align 8
@dcbnl_pg_nest = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@DCB_CMD_PGRX_GCFG = common dso_local global i32 0, align 4
@DCB_CMD_PGTX_GCFG = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_ALL = common dso_local global i64 0, align 8
@DCB_PG_ATTR_TC_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_7 = common dso_local global i32 0, align 4
@dcbnl_tc_param_nest = common dso_local global i32 0, align 4
@DCB_ATTR_VALUE_UNDEFINED = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_PGID = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_ALL = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_UP_MAPPING = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_STRICT_PRIO = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_BW_PCT = common dso_local global i64 0, align 8
@DCB_PG_ATTR_BW_ID_ALL = common dso_local global i64 0, align 8
@DCB_PG_ATTR_BW_ID_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_7 = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32, i32)* @__dcbnl_pg_getcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dcbnl_pg_getcfg(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca %struct.dcbmsg*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %31 = load i32, i32* @DCB_PG_ATTR_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %20, align 8
  %35 = alloca %struct.nlattr*, i64 %33, align 16
  store i64 %33, i64* %21, align 8
  %36 = load i32, i32* @DCB_TC_ATTR_PARAM_MAX, align 4
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = alloca %struct.nlattr*, i64 %38, align 16
  store i64 %38, i64* %22, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %42 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %43 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %6
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %51, align 8
  %53 = icmp ne i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %58, align 8
  %60 = icmp ne i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.net_device*, %struct.net_device** %8, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %65, align 8
  %67 = icmp ne i32 (%struct.net_device*, i32, i32*)* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %72, align 8
  %74 = icmp ne i32 (%struct.net_device*, i32, i32*)* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %68, %61, %54, %47, %6
  %76 = load i32, i32* %27, align 4
  store i32 %76, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %382

77:                                               ; preds = %68
  %78 = load i32, i32* @DCB_PG_ATTR_MAX, align 4
  %79 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %80 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = load i32, i32* @dcbnl_pg_nest, align 4
  %84 = call i32 @nla_parse_nested(%struct.nlattr** %35, i32 %78, %struct.nlattr* %82, i32 %83)
  store i32 %84, i32* %27, align 4
  %85 = load i32, i32* %27, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %378

88:                                               ; preds = %77
  %89 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.sk_buff* @nlmsg_new(i32 %89, i32 %90)
  store %struct.sk_buff* %91, %struct.sk_buff** %14, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %378

95:                                               ; preds = %88
  %96 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @RTM_GETDCB, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %96, i32 %97, i32 %98, i32 %99, i32 8, i32 %100)
  store %struct.nlmsghdr* %101, %struct.nlmsghdr** %15, align 8
  %102 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %103 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %102)
  store %struct.dcbmsg* %103, %struct.dcbmsg** %16, align 8
  %104 = load i32, i32* @AF_UNSPEC, align 4
  %105 = load %struct.dcbmsg*, %struct.dcbmsg** %16, align 8
  %106 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = load i32, i32* @DCB_CMD_PGRX_GCFG, align 4
  br label %113

111:                                              ; preds = %95
  %112 = load i32, i32* @DCB_CMD_PGTX_GCFG, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load %struct.dcbmsg*, %struct.dcbmsg** %16, align 8
  %116 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %118 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %119 = trunc i64 %118 to i32
  %120 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %117, i32 %119)
  store %struct.nlattr* %120, %struct.nlattr** %17, align 8
  %121 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %122 = icmp ne %struct.nlattr* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %113
  br label %375

124:                                              ; preds = %113
  %125 = load i64, i64* @DCB_PG_ATTR_TC_ALL, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = icmp ne %struct.nlattr* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %28, align 4
  br label %130

130:                                              ; preds = %129, %124
  %131 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  store i32 %131, i32* %29, align 4
  br label %132

132:                                              ; preds = %288, %130
  %133 = load i32, i32* %29, align 4
  %134 = load i32, i32* @DCB_PG_ATTR_TC_7, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %291

136:                                              ; preds = %132
  %137 = load i32, i32* %28, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %29, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = icmp ne %struct.nlattr* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  br label %288

146:                                              ; preds = %139, %136
  %147 = load i64, i64* @DCB_PG_ATTR_TC_ALL, align 8
  %148 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %147
  %149 = load %struct.nlattr*, %struct.nlattr** %148, align 8
  %150 = icmp ne %struct.nlattr* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i64, i64* @DCB_PG_ATTR_TC_ALL, align 8
  %153 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %152
  %154 = load %struct.nlattr*, %struct.nlattr** %153, align 8
  store %struct.nlattr* %154, %struct.nlattr** %19, align 8
  br label %160

155:                                              ; preds = %146
  %156 = load i32, i32* %29, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %157
  %159 = load %struct.nlattr*, %struct.nlattr** %158, align 8
  store %struct.nlattr* %159, %struct.nlattr** %19, align 8
  br label %160

160:                                              ; preds = %155, %151
  %161 = load i32, i32* @DCB_TC_ATTR_PARAM_MAX, align 4
  %162 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %163 = load i32, i32* @dcbnl_tc_param_nest, align 4
  %164 = call i32 @nla_parse_nested(%struct.nlattr** %39, i32 %161, %struct.nlattr* %162, i32 %163)
  store i32 %164, i32* %27, align 4
  %165 = load i32, i32* %27, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %370

168:                                              ; preds = %160
  %169 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %170 = load i32, i32* %29, align 4
  %171 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %169, i32 %170)
  store %struct.nlattr* %171, %struct.nlattr** %18, align 8
  %172 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %173 = icmp ne %struct.nlattr* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %168
  br label %370

175:                                              ; preds = %168
  %176 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %176, i32* %24, align 4
  %177 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %178, i32* %25, align 4
  %179 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %179, i32* %26, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %175
  %183 = load %struct.net_device*, %struct.net_device** %8, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 0
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 3
  %187 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %186, align 8
  %188 = load %struct.net_device*, %struct.net_device** %8, align 8
  %189 = load i32, i32* %29, align 4
  %190 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i32 %187(%struct.net_device* %188, i32 %191, i32* %23, i32* %24, i32* %25, i32* %26)
  br label %204

193:                                              ; preds = %175
  %194 = load %struct.net_device*, %struct.net_device** %8, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %197, align 8
  %199 = load %struct.net_device*, %struct.net_device** %8, align 8
  %200 = load i32, i32* %29, align 4
  %201 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %202 = sub nsw i32 %200, %201
  %203 = call i32 %198(%struct.net_device* %199, i32 %202, i32* %23, i32* %24, i32* %25, i32* %26)
  br label %204

204:                                              ; preds = %193, %182
  %205 = load i64, i64* @DCB_TC_ATTR_PARAM_PGID, align 8
  %206 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %205
  %207 = load %struct.nlattr*, %struct.nlattr** %206, align 8
  %208 = icmp ne %struct.nlattr* %207, null
  br i1 %208, label %214, label %209

209:                                              ; preds = %204
  %210 = load i64, i64* @DCB_TC_ATTR_PARAM_ALL, align 8
  %211 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %210
  %212 = load %struct.nlattr*, %struct.nlattr** %211, align 8
  %213 = icmp ne %struct.nlattr* %212, null
  br i1 %213, label %214, label %224

214:                                              ; preds = %209, %204
  %215 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %216 = load i64, i64* @DCB_TC_ATTR_PARAM_PGID, align 8
  %217 = trunc i64 %216 to i32
  %218 = load i32, i32* %24, align 4
  %219 = call i32 @nla_put_u8(%struct.sk_buff* %215, i32 %217, i32 %218)
  store i32 %219, i32* %27, align 4
  %220 = load i32, i32* %27, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %366

223:                                              ; preds = %214
  br label %224

224:                                              ; preds = %223, %209
  %225 = load i64, i64* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 8
  %226 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %225
  %227 = load %struct.nlattr*, %struct.nlattr** %226, align 8
  %228 = icmp ne %struct.nlattr* %227, null
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  %230 = load i64, i64* @DCB_TC_ATTR_PARAM_ALL, align 8
  %231 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %230
  %232 = load %struct.nlattr*, %struct.nlattr** %231, align 8
  %233 = icmp ne %struct.nlattr* %232, null
  br i1 %233, label %234, label %244

234:                                              ; preds = %229, %224
  %235 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %236 = load i64, i64* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 8
  %237 = trunc i64 %236 to i32
  %238 = load i32, i32* %26, align 4
  %239 = call i32 @nla_put_u8(%struct.sk_buff* %235, i32 %237, i32 %238)
  store i32 %239, i32* %27, align 4
  %240 = load i32, i32* %27, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %366

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %229
  %245 = load i64, i64* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 8
  %246 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %245
  %247 = load %struct.nlattr*, %struct.nlattr** %246, align 8
  %248 = icmp ne %struct.nlattr* %247, null
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load i64, i64* @DCB_TC_ATTR_PARAM_ALL, align 8
  %251 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %250
  %252 = load %struct.nlattr*, %struct.nlattr** %251, align 8
  %253 = icmp ne %struct.nlattr* %252, null
  br i1 %253, label %254, label %264

254:                                              ; preds = %249, %244
  %255 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %256 = load i64, i64* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 8
  %257 = trunc i64 %256 to i32
  %258 = load i32, i32* %23, align 4
  %259 = call i32 @nla_put_u8(%struct.sk_buff* %255, i32 %257, i32 %258)
  store i32 %259, i32* %27, align 4
  %260 = load i32, i32* %27, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  br label %366

263:                                              ; preds = %254
  br label %264

264:                                              ; preds = %263, %249
  %265 = load i64, i64* @DCB_TC_ATTR_PARAM_BW_PCT, align 8
  %266 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %265
  %267 = load %struct.nlattr*, %struct.nlattr** %266, align 8
  %268 = icmp ne %struct.nlattr* %267, null
  br i1 %268, label %274, label %269

269:                                              ; preds = %264
  %270 = load i64, i64* @DCB_TC_ATTR_PARAM_ALL, align 8
  %271 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %270
  %272 = load %struct.nlattr*, %struct.nlattr** %271, align 8
  %273 = icmp ne %struct.nlattr* %272, null
  br i1 %273, label %274, label %284

274:                                              ; preds = %269, %264
  %275 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %276 = load i64, i64* @DCB_TC_ATTR_PARAM_BW_PCT, align 8
  %277 = trunc i64 %276 to i32
  %278 = load i32, i32* %25, align 4
  %279 = call i32 @nla_put_u8(%struct.sk_buff* %275, i32 %277, i32 %278)
  store i32 %279, i32* %27, align 4
  %280 = load i32, i32* %27, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %366

283:                                              ; preds = %274
  br label %284

284:                                              ; preds = %283, %269
  %285 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %286 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %287 = call i32 @nla_nest_end(%struct.sk_buff* %285, %struct.nlattr* %286)
  br label %288

288:                                              ; preds = %284, %145
  %289 = load i32, i32* %29, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %29, align 4
  br label %132

291:                                              ; preds = %132
  %292 = load i64, i64* @DCB_PG_ATTR_BW_ID_ALL, align 8
  %293 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %292
  %294 = load %struct.nlattr*, %struct.nlattr** %293, align 8
  %295 = icmp ne %struct.nlattr* %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  store i32 1, i32* %28, align 4
  br label %298

297:                                              ; preds = %291
  store i32 0, i32* %28, align 4
  br label %298

298:                                              ; preds = %297, %296
  %299 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  store i32 %299, i32* %29, align 4
  br label %300

300:                                              ; preds = %349, %298
  %301 = load i32, i32* %29, align 4
  %302 = load i32, i32* @DCB_PG_ATTR_BW_ID_7, align 4
  %303 = icmp sle i32 %301, %302
  br i1 %303, label %304, label %352

304:                                              ; preds = %300
  %305 = load i32, i32* %28, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* %29, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %309
  %311 = load %struct.nlattr*, %struct.nlattr** %310, align 8
  %312 = icmp ne %struct.nlattr* %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %307
  br label %349

314:                                              ; preds = %307, %304
  %315 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %315, i32* %25, align 4
  %316 = load i32, i32* %13, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %314
  %319 = load %struct.net_device*, %struct.net_device** %8, align 8
  %320 = getelementptr inbounds %struct.net_device, %struct.net_device* %319, i32 0, i32 0
  %321 = load %struct.TYPE_2__*, %struct.TYPE_2__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 1
  %323 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %322, align 8
  %324 = load %struct.net_device*, %struct.net_device** %8, align 8
  %325 = load i32, i32* %29, align 4
  %326 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %327 = sub nsw i32 %325, %326
  %328 = call i32 %323(%struct.net_device* %324, i32 %327, i32* %25)
  br label %340

329:                                              ; preds = %314
  %330 = load %struct.net_device*, %struct.net_device** %8, align 8
  %331 = getelementptr inbounds %struct.net_device, %struct.net_device* %330, i32 0, i32 0
  %332 = load %struct.TYPE_2__*, %struct.TYPE_2__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 0
  %334 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %333, align 8
  %335 = load %struct.net_device*, %struct.net_device** %8, align 8
  %336 = load i32, i32* %29, align 4
  %337 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %338 = sub nsw i32 %336, %337
  %339 = call i32 %334(%struct.net_device* %335, i32 %338, i32* %25)
  br label %340

340:                                              ; preds = %329, %318
  %341 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %342 = load i32, i32* %29, align 4
  %343 = load i32, i32* %25, align 4
  %344 = call i32 @nla_put_u8(%struct.sk_buff* %341, i32 %342, i32 %343)
  store i32 %344, i32* %27, align 4
  %345 = load i32, i32* %27, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %340
  br label %370

348:                                              ; preds = %340
  br label %349

349:                                              ; preds = %348, %313
  %350 = load i32, i32* %29, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %29, align 4
  br label %300

352:                                              ; preds = %300
  %353 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %354 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %355 = call i32 @nla_nest_end(%struct.sk_buff* %353, %struct.nlattr* %354)
  %356 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %357 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %358 = call i32 @nlmsg_end(%struct.sk_buff* %356, %struct.nlmsghdr* %357)
  %359 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %360 = load i32, i32* %10, align 4
  %361 = call i32 @rtnl_unicast(%struct.sk_buff* %359, i32* @init_net, i32 %360)
  store i32 %361, i32* %27, align 4
  %362 = load i32, i32* %27, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %352
  br label %378

365:                                              ; preds = %352
  store i32 0, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %382

366:                                              ; preds = %282, %262, %242, %222
  %367 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %368 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %369 = call i32 @nla_nest_cancel(%struct.sk_buff* %367, %struct.nlattr* %368)
  br label %370

370:                                              ; preds = %366, %347, %174, %167
  %371 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %372 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %373 = call i32 @nla_nest_cancel(%struct.sk_buff* %371, %struct.nlattr* %372)
  br label %374

374:                                              ; preds = %370
  br label %375

375:                                              ; preds = %374, %123
  %376 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %377 = call i32 @kfree_skb(%struct.sk_buff* %376)
  br label %378

378:                                              ; preds = %375, %364, %94, %87
  %379 = load i32, i32* @EINVAL, align 4
  %380 = sub nsw i32 0, %379
  store i32 %380, i32* %27, align 4
  %381 = load i32, i32* %27, align 4
  store i32 %381, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %382

382:                                              ; preds = %378, %365, %75
  %383 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %383)
  %384 = load i32, i32* %7, align 4
  ret i32 %384
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #2

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #2

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, i32*, i32) #2

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
