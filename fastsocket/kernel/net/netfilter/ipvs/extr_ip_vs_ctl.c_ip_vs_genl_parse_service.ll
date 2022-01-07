; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_parse_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_parse_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service_user_kern = type { i32, i8*, i8*, i32*, i32*, i8*, %struct.ip_vs_flags, i8*, i8*, i8* }
%struct.ip_vs_flags = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.ip_vs_service = type { i32 }

@IPVS_SVC_ATTR_MAX = common dso_local global i32 0, align 4
@ip_vs_svc_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPVS_SVC_ATTR_AF = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_PROTOCOL = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_ADDR = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_PORT = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_FWMARK = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i8* null, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i8* null, align 8
@IPVS_SVC_ATTR_SCHED_NAME = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_PE_NAME = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_FLAGS = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@IPVS_SVC_ATTR_NETMASK = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service_user_kern*, %struct.nlattr*, i32)* @ip_vs_genl_parse_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_parse_service(%struct.ip_vs_service_user_kern* %0, %struct.nlattr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_service_user_kern*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca %struct.nlattr*, align 8
  %21 = alloca %struct.ip_vs_flags, align 4
  %22 = alloca %struct.ip_vs_service*, align 8
  store %struct.ip_vs_service_user_kern* %0, %struct.ip_vs_service_user_kern** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @IPVS_SVC_ATTR_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %29 = icmp eq %struct.nlattr* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @IPVS_SVC_ATTR_MAX, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %33 = load i32, i32* @ip_vs_svc_policy, align 4
  %34 = call i64 @nla_parse_nested(%struct.nlattr** %27, i32 %31, %struct.nlattr* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %227

39:                                               ; preds = %30
  %40 = load i64, i64* @IPVS_SVC_ATTR_AF, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  store %struct.nlattr* %42, %struct.nlattr** %10, align 8
  %43 = load i64, i64* @IPVS_SVC_ATTR_PROTOCOL, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  store %struct.nlattr* %45, %struct.nlattr** %13, align 8
  %46 = load i64, i64* @IPVS_SVC_ATTR_ADDR, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  store %struct.nlattr* %48, %struct.nlattr** %14, align 8
  %49 = load i64, i64* @IPVS_SVC_ATTR_PORT, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  store %struct.nlattr* %51, %struct.nlattr** %11, align 8
  %52 = load i64, i64* @IPVS_SVC_ATTR_FWMARK, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  store %struct.nlattr* %54, %struct.nlattr** %12, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %39
  %58 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66, %63, %60, %39
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %227

72:                                               ; preds = %66, %57
  %73 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %74 = call i32 @memset(%struct.ip_vs_service_user_kern* %73, i32 0, i32 80)
  %75 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %76 = call i8* @nla_get_u16(%struct.nlattr* %75)
  %77 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %78 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %80 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %79, i32 0, i32 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** @AF_INET, align 8
  %83 = icmp ne i8* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @EAFNOSUPPORT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %227

87:                                               ; preds = %72
  %88 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i8*, i8** @IPPROTO_TCP, align 8
  %92 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %93 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %95 = call i8* @nla_get_u32(%struct.nlattr* %94)
  %96 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %97 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  br label %113

98:                                               ; preds = %87
  %99 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %100 = call i8* @nla_get_u16(%struct.nlattr* %99)
  %101 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %102 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %101, i32 0, i32 7
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %104 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %103, i32 0, i32 6
  %105 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %106 = call i32 @nla_memcpy(%struct.ip_vs_flags* %104, %struct.nlattr* %105, i32 8)
  %107 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %108 = call i8* @nla_get_u16(%struct.nlattr* %107)
  %109 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %110 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %112 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %111, i32 0, i32 9
  store i8* null, i8** %112, align 8
  br label %113

113:                                              ; preds = %98, %90
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %226

116:                                              ; preds = %113
  %117 = load i64, i64* @IPVS_SVC_ATTR_SCHED_NAME, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  store %struct.nlattr* %119, %struct.nlattr** %16, align 8
  %120 = load i64, i64* @IPVS_SVC_ATTR_PE_NAME, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  store %struct.nlattr* %122, %struct.nlattr** %18, align 8
  %123 = load i64, i64* @IPVS_SVC_ATTR_FLAGS, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  store %struct.nlattr* %125, %struct.nlattr** %17, align 8
  %126 = load i64, i64* @IPVS_SVC_ATTR_TIMEOUT, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  store %struct.nlattr* %128, %struct.nlattr** %19, align 8
  %129 = load i64, i64* @IPVS_SVC_ATTR_NETMASK, align 8
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  store %struct.nlattr* %131, %struct.nlattr** %20, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %133 = icmp ne %struct.nlattr* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %116
  %135 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %136 = icmp ne %struct.nlattr* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %139 = icmp ne %struct.nlattr* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %142 = icmp ne %struct.nlattr* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %140, %137, %134, %116
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %227

146:                                              ; preds = %140
  %147 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %148 = call i32 @nla_memcpy(%struct.ip_vs_flags* %21, %struct.nlattr* %147, i32 8)
  %149 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %150 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %149, i32 0, i32 9
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %155 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %154, i32 0, i32 8
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %158 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %157, i32 0, i32 9
  %159 = load i8*, i8** %158, align 8
  %160 = call %struct.ip_vs_service* @__ip_vs_svc_fwm_get(i8* %156, i8* %159)
  store %struct.ip_vs_service* %160, %struct.ip_vs_service** %22, align 8
  br label %174

161:                                              ; preds = %146
  %162 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %163 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %162, i32 0, i32 8
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %166 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %165, i32 0, i32 7
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %169 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %168, i32 0, i32 6
  %170 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %171 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %170, i32 0, i32 5
  %172 = load i8*, i8** %171, align 8
  %173 = call %struct.ip_vs_service* @__ip_vs_service_get(i8* %164, i8* %167, %struct.ip_vs_flags* %169, i8* %172)
  store %struct.ip_vs_service* %173, %struct.ip_vs_service** %22, align 8
  br label %174

174:                                              ; preds = %161, %153
  %175 = load %struct.ip_vs_service*, %struct.ip_vs_service** %22, align 8
  %176 = icmp ne %struct.ip_vs_service* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.ip_vs_service*, %struct.ip_vs_service** %22, align 8
  %179 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %182 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.ip_vs_service*, %struct.ip_vs_service** %22, align 8
  %184 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %183)
  br label %188

185:                                              ; preds = %174
  %186 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %187 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %186, i32 0, i32 0
  store i32 0, i32* %187, align 8
  br label %188

188:                                              ; preds = %185, %177
  %189 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %190 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %21, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = xor i32 %193, -1
  %195 = and i32 %191, %194
  %196 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %21, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %21, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %197, %199
  %201 = or i32 %195, %200
  %202 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %203 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %205 = call i32* @nla_data(%struct.nlattr* %204)
  %206 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %207 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %206, i32 0, i32 4
  store i32* %205, i32** %207, align 8
  %208 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %209 = icmp ne %struct.nlattr* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %188
  %211 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %212 = call i32* @nla_data(%struct.nlattr* %211)
  br label %214

213:                                              ; preds = %188
  br label %214

214:                                              ; preds = %213, %210
  %215 = phi i32* [ %212, %210 ], [ null, %213 ]
  %216 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %217 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %216, i32 0, i32 3
  store i32* %215, i32** %217, align 8
  %218 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %219 = call i8* @nla_get_u32(%struct.nlattr* %218)
  %220 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %221 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  %222 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %223 = call i8* @nla_get_u32(%struct.nlattr* %222)
  %224 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %225 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %224, i32 0, i32 1
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %214, %113
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %227

227:                                              ; preds = %226, %143, %84, %69, %36
  %228 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @memset(%struct.ip_vs_service_user_kern*, i32, i32) #2

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @nla_memcpy(%struct.ip_vs_flags*, %struct.nlattr*, i32) #2

declare dso_local %struct.ip_vs_service* @__ip_vs_svc_fwm_get(i8*, i8*) #2

declare dso_local %struct.ip_vs_service* @__ip_vs_service_get(i8*, i8*, %struct.ip_vs_flags*, i8*) #2

declare dso_local i32 @ip_vs_service_put(%struct.ip_vs_service*) #2

declare dso_local i32* @nla_data(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
