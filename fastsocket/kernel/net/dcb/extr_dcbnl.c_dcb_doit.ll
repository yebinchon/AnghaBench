; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcb_doit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcb_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.dcbmsg = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@DCB_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@dcbnl_rtnl_policy = common dso_local global i32 0, align 4
@DCB_ATTR_IFNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @dcb_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcb_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.dcbmsg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %22 = call i64 @NLMSG_DATA(%struct.nlmsghdr* %21)
  %23 = inttoptr i64 %22 to %struct.dcbmsg*
  store %struct.dcbmsg* %23, %struct.dcbmsg** %10, align 8
  %24 = load i32, i32* @DCB_ATTR_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @NETLINK_CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %36, %31 ], [ 0, %37 ]
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  %42 = load %struct.net*, %struct.net** %8, align 8
  %43 = call i32 @net_eq(%struct.net* %42, i32* @init_net)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %364

48:                                               ; preds = %38
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %50 = load i32, i32* @DCB_ATTR_MAX, align 4
  %51 = load i32, i32* @dcbnl_rtnl_policy, align 4
  %52 = call i32 @nlmsg_parse(%struct.nlmsghdr* %49, i32 4, %struct.nlattr** %28, i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %364

57:                                               ; preds = %48
  %58 = load i64, i64* @DCB_ATTR_IFNAME, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %364

65:                                               ; preds = %57
  %66 = load i64, i64* @DCB_ATTR_IFNAME, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i32 @nla_data(%struct.nlattr* %68)
  %70 = call %struct.net_device* @dev_get_by_name(i32* @init_net, i32 %69)
  store %struct.net_device* %70, %struct.net_device** %9, align 8
  %71 = load %struct.net_device*, %struct.net_device** %9, align 8
  %72 = icmp ne %struct.net_device* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %364

76:                                               ; preds = %65
  %77 = load %struct.net_device*, %struct.net_device** %9, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %357

82:                                               ; preds = %76
  %83 = load %struct.dcbmsg*, %struct.dcbmsg** %10, align 8
  %84 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %356 [
    i32 145, label %86
    i32 141, label %96
    i32 146, label %106
    i32 135, label %116
    i32 137, label %126
    i32 154, label %136
    i32 128, label %146
    i32 139, label %156
    i32 131, label %166
    i32 134, label %176
    i32 136, label %186
    i32 150, label %196
    i32 147, label %206
    i32 129, label %216
    i32 140, label %226
    i32 138, label %236
    i32 153, label %246
    i32 151, label %256
    i32 133, label %266
    i32 142, label %276
    i32 143, label %286
    i32 144, label %296
    i32 149, label %306
    i32 132, label %316
    i32 148, label %326
    i32 130, label %336
    i32 152, label %346
  ]

86:                                               ; preds = %82
  %87 = load %struct.net_device*, %struct.net_device** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %90 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %93 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dcbnl_getstate(%struct.net_device* %87, %struct.nlattr** %28, i32 %88, i32 %91, i32 %94)
  store i32 %95, i32* %15, align 4
  br label %360

96:                                               ; preds = %82
  %97 = load %struct.net_device*, %struct.net_device** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %100 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %103 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dcbnl_getpfccfg(%struct.net_device* %97, %struct.nlattr** %28, i32 %98, i32 %101, i32 %104)
  store i32 %105, i32* %15, align 4
  br label %360

106:                                              ; preds = %82
  %107 = load %struct.net_device*, %struct.net_device** %9, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %110 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %113 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dcbnl_getperm_hwaddr(%struct.net_device* %107, %struct.nlattr** %28, i32 %108, i32 %111, i32 %114)
  store i32 %115, i32* %15, align 4
  br label %360

116:                                              ; preds = %82
  %117 = load %struct.net_device*, %struct.net_device** %9, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %120 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %123 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dcbnl_pgtx_getcfg(%struct.net_device* %117, %struct.nlattr** %28, i32 %118, i32 %121, i32 %124)
  store i32 %125, i32* %15, align 4
  br label %360

126:                                              ; preds = %82
  %127 = load %struct.net_device*, %struct.net_device** %9, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %130 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %133 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dcbnl_pgrx_getcfg(%struct.net_device* %127, %struct.nlattr** %28, i32 %128, i32 %131, i32 %134)
  store i32 %135, i32* %15, align 4
  br label %360

136:                                              ; preds = %82
  %137 = load %struct.net_device*, %struct.net_device** %9, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %140 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %143 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dcbnl_bcn_getcfg(%struct.net_device* %137, %struct.nlattr** %28, i32 %138, i32 %141, i32 %144)
  store i32 %145, i32* %15, align 4
  br label %360

146:                                              ; preds = %82
  %147 = load %struct.net_device*, %struct.net_device** %9, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %150 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %153 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @dcbnl_setstate(%struct.net_device* %147, %struct.nlattr** %28, i32 %148, i32 %151, i32 %154)
  store i32 %155, i32* %15, align 4
  br label %360

156:                                              ; preds = %82
  %157 = load %struct.net_device*, %struct.net_device** %9, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %160 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %163 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dcbnl_setpfccfg(%struct.net_device* %157, %struct.nlattr** %28, i32 %158, i32 %161, i32 %164)
  store i32 %165, i32* %15, align 4
  br label %360

166:                                              ; preds = %82
  %167 = load %struct.net_device*, %struct.net_device** %9, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %170 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %173 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dcbnl_setall(%struct.net_device* %167, %struct.nlattr** %28, i32 %168, i32 %171, i32 %174)
  store i32 %175, i32* %15, align 4
  br label %360

176:                                              ; preds = %82
  %177 = load %struct.net_device*, %struct.net_device** %9, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %180 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %183 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @dcbnl_pgtx_setcfg(%struct.net_device* %177, %struct.nlattr** %28, i32 %178, i32 %181, i32 %184)
  store i32 %185, i32* %15, align 4
  br label %360

186:                                              ; preds = %82
  %187 = load %struct.net_device*, %struct.net_device** %9, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %190 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %193 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @dcbnl_pgrx_setcfg(%struct.net_device* %187, %struct.nlattr** %28, i32 %188, i32 %191, i32 %194)
  store i32 %195, i32* %15, align 4
  br label %360

196:                                              ; preds = %82
  %197 = load %struct.net_device*, %struct.net_device** %9, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %200 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %203 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @dcbnl_getcap(%struct.net_device* %197, %struct.nlattr** %28, i32 %198, i32 %201, i32 %204)
  store i32 %205, i32* %15, align 4
  br label %360

206:                                              ; preds = %82
  %207 = load %struct.net_device*, %struct.net_device** %9, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %210 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %213 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @dcbnl_getnumtcs(%struct.net_device* %207, %struct.nlattr** %28, i32 %208, i32 %211, i32 %214)
  store i32 %215, i32* %15, align 4
  br label %360

216:                                              ; preds = %82
  %217 = load %struct.net_device*, %struct.net_device** %9, align 8
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %220 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %223 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @dcbnl_setnumtcs(%struct.net_device* %217, %struct.nlattr** %28, i32 %218, i32 %221, i32 %224)
  store i32 %225, i32* %15, align 4
  br label %360

226:                                              ; preds = %82
  %227 = load %struct.net_device*, %struct.net_device** %9, align 8
  %228 = load i32, i32* %13, align 4
  %229 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %230 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %233 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @dcbnl_getpfcstate(%struct.net_device* %227, %struct.nlattr** %28, i32 %228, i32 %231, i32 %234)
  store i32 %235, i32* %15, align 4
  br label %360

236:                                              ; preds = %82
  %237 = load %struct.net_device*, %struct.net_device** %9, align 8
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %240 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %243 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @dcbnl_setpfcstate(%struct.net_device* %237, %struct.nlattr** %28, i32 %238, i32 %241, i32 %244)
  store i32 %245, i32* %15, align 4
  br label %360

246:                                              ; preds = %82
  %247 = load %struct.net_device*, %struct.net_device** %9, align 8
  %248 = load i32, i32* %13, align 4
  %249 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %250 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %253 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @dcbnl_bcn_setcfg(%struct.net_device* %247, %struct.nlattr** %28, i32 %248, i32 %251, i32 %254)
  store i32 %255, i32* %15, align 4
  br label %360

256:                                              ; preds = %82
  %257 = load %struct.net_device*, %struct.net_device** %9, align 8
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %260 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %263 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @dcbnl_getapp(%struct.net_device* %257, %struct.nlattr** %28, i32 %258, i32 %261, i32 %264)
  store i32 %265, i32* %15, align 4
  br label %360

266:                                              ; preds = %82
  %267 = load %struct.net_device*, %struct.net_device** %9, align 8
  %268 = load i32, i32* %13, align 4
  %269 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %270 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %273 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @dcbnl_setapp(%struct.net_device* %267, %struct.nlattr** %28, i32 %268, i32 %271, i32 %274)
  store i32 %275, i32* %15, align 4
  br label %360

276:                                              ; preds = %82
  %277 = load %struct.net_device*, %struct.net_device** %9, align 8
  %278 = load i32, i32* %13, align 4
  %279 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %280 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %283 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @dcbnl_ieee_set(%struct.net_device* %277, %struct.nlattr** %28, i32 %278, i32 %281, i32 %284)
  store i32 %285, i32* %15, align 4
  br label %360

286:                                              ; preds = %82
  %287 = load %struct.net_device*, %struct.net_device** %9, align 8
  %288 = load i32, i32* %13, align 4
  %289 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %290 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %293 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @dcbnl_ieee_get(%struct.net_device* %287, %struct.nlattr** %28, i32 %288, i32 %291, i32 %294)
  store i32 %295, i32* %15, align 4
  br label %360

296:                                              ; preds = %82
  %297 = load %struct.net_device*, %struct.net_device** %9, align 8
  %298 = load i32, i32* %13, align 4
  %299 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %300 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %303 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @dcbnl_ieee_del(%struct.net_device* %297, %struct.nlattr** %28, i32 %298, i32 %301, i32 %304)
  store i32 %305, i32* %15, align 4
  br label %360

306:                                              ; preds = %82
  %307 = load %struct.net_device*, %struct.net_device** %9, align 8
  %308 = load i32, i32* %13, align 4
  %309 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %310 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %313 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @dcbnl_getdcbx(%struct.net_device* %307, %struct.nlattr** %28, i32 %308, i32 %311, i32 %314)
  store i32 %315, i32* %15, align 4
  br label %360

316:                                              ; preds = %82
  %317 = load %struct.net_device*, %struct.net_device** %9, align 8
  %318 = load i32, i32* %13, align 4
  %319 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %320 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %323 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @dcbnl_setdcbx(%struct.net_device* %317, %struct.nlattr** %28, i32 %318, i32 %321, i32 %324)
  store i32 %325, i32* %15, align 4
  br label %360

326:                                              ; preds = %82
  %327 = load %struct.net_device*, %struct.net_device** %9, align 8
  %328 = load i32, i32* %13, align 4
  %329 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %330 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %333 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @dcbnl_getfeatcfg(%struct.net_device* %327, %struct.nlattr** %28, i32 %328, i32 %331, i32 %334)
  store i32 %335, i32* %15, align 4
  br label %360

336:                                              ; preds = %82
  %337 = load %struct.net_device*, %struct.net_device** %9, align 8
  %338 = load i32, i32* %13, align 4
  %339 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %340 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %343 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @dcbnl_setfeatcfg(%struct.net_device* %337, %struct.nlattr** %28, i32 %338, i32 %341, i32 %344)
  store i32 %345, i32* %15, align 4
  br label %360

346:                                              ; preds = %82
  %347 = load %struct.net_device*, %struct.net_device** %9, align 8
  %348 = load i32, i32* %13, align 4
  %349 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %350 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %353 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @dcbnl_cee_get(%struct.net_device* %347, %struct.nlattr** %28, i32 %348, i32 %351, i32 %354)
  store i32 %355, i32* %15, align 4
  br label %360

356:                                              ; preds = %82
  br label %357

357:                                              ; preds = %356, %81
  %358 = load i32, i32* @EINVAL, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %15, align 4
  br label %360

360:                                              ; preds = %357, %346, %336, %326, %316, %306, %296, %286, %276, %266, %256, %246, %236, %226, %216, %206, %196, %186, %176, %166, %156, %146, %136, %126, %116, %106, %96, %86
  %361 = load %struct.net_device*, %struct.net_device** %9, align 8
  %362 = call i32 @dev_put(%struct.net_device* %361)
  %363 = load i32, i32* %15, align 4
  store i32 %363, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %364

364:                                              ; preds = %360, %73, %62, %55, %45
  %365 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %365)
  %366 = load i32, i32* %4, align 4
  ret i32 %366
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i64 @NLMSG_DATA(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_name(i32*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @dcbnl_getstate(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_getpfccfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_getperm_hwaddr(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_pgtx_getcfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_pgrx_getcfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_bcn_getcfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_setstate(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_setpfccfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_setall(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_pgtx_setcfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_pgrx_setcfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_getcap(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_getnumtcs(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_setnumtcs(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_getpfcstate(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_setpfcstate(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_bcn_setcfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_getapp(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_setapp(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_ieee_set(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_ieee_get(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_ieee_del(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_getdcbx(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_setdcbx(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_getfeatcfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_setfeatcfg(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dcbnl_cee_get(%struct.net_device*, %struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
