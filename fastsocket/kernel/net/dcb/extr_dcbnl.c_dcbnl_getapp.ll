; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getapp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.net_device*, i64, i32)* }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i32, i32 }
%struct.dcb_app = type { i64, i32 }

@DCB_APP_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_APP = common dso_local global i64 0, align 8
@dcbnl_app_nest = common dso_local global i32 0, align 4
@DCB_APP_ATTR_IDTYPE = common dso_local global i64 0, align 8
@DCB_APP_ATTR_ID = common dso_local global i64 0, align 8
@DCB_APP_IDTYPE_ETHTYPE = common dso_local global i64 0, align 8
@DCB_APP_IDTYPE_PORTNUM = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@DCB_CMD_GAPP = common dso_local global i32 0, align 4
@DCB_APP_ATTR_PRIORITY = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_getapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_getapp(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.dcbmsg*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.dcb_app, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load i32, i32* @DCB_APP_ATTR_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %15, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %20, align 4
  %29 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %30 = load i64, i64* @DCB_ATTR_APP, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %173

35:                                               ; preds = %5
  %36 = load i32, i32* @DCB_APP_ATTR_MAX, align 4
  %37 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %38 = load i64, i64* @DCB_ATTR_APP, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = load i32, i32* @dcbnl_app_nest, align 4
  %42 = call i32 @nla_parse_nested(%struct.nlattr** %26, i32 %36, %struct.nlattr* %40, i32 %41)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %173

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %20, align 4
  %49 = load i64, i64* @DCB_APP_ATTR_IDTYPE, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i64, i64* @DCB_APP_ATTR_ID, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp ne %struct.nlattr* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %46
  br label %173

59:                                               ; preds = %53
  %60 = load i64, i64* @DCB_APP_ATTR_IDTYPE, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i64 @nla_get_u8(%struct.nlattr* %62)
  store i64 %63, i64* %19, align 8
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* @DCB_APP_IDTYPE_ETHTYPE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* @DCB_APP_IDTYPE_PORTNUM, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %173

72:                                               ; preds = %67, %59
  %73 = load i64, i64* @DCB_APP_ATTR_ID, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_u16(%struct.nlattr* %75)
  store i32 %76, i32* %17, align 4
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64 (%struct.net_device*, i64, i32)*, i64 (%struct.net_device*, i64, i32)** %80, align 8
  %82 = icmp ne i64 (%struct.net_device*, i64, i32)* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %72
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64 (%struct.net_device*, i64, i32)*, i64 (%struct.net_device*, i64, i32)** %87, align 8
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i64 %88(%struct.net_device* %89, i64 %90, i32 %91)
  store i64 %92, i64* %18, align 8
  br label %100

93:                                               ; preds = %72
  %94 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %21, i32 0, i32 0
  %95 = load i64, i64* %19, align 8
  store i64 %95, i64* %94, align 8
  %96 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %21, i32 0, i32 1
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %96, align 8
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = call i64 @dcb_getapp(%struct.net_device* %98, %struct.dcb_app* %21)
  store i64 %99, i64* %18, align 8
  br label %100

100:                                              ; preds = %93, %83
  %101 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.sk_buff* @nlmsg_new(i32 %101, i32 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %11, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %173

107:                                              ; preds = %100
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @RTM_GETDCB, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %108, i32 %109, i32 %110, i32 %111, i32 8, i32 %112)
  store %struct.nlmsghdr* %113, %struct.nlmsghdr** %12, align 8
  %114 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %115 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %114)
  store %struct.dcbmsg* %115, %struct.dcbmsg** %13, align 8
  %116 = load i32, i32* @AF_UNSPEC, align 4
  %117 = load %struct.dcbmsg*, %struct.dcbmsg** %13, align 8
  %118 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @DCB_CMD_GAPP, align 4
  %120 = load %struct.dcbmsg*, %struct.dcbmsg** %13, align 8
  %121 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %123 = load i64, i64* @DCB_ATTR_APP, align 8
  %124 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %122, i64 %123)
  store %struct.nlattr* %124, %struct.nlattr** %14, align 8
  %125 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %126 = icmp ne %struct.nlattr* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %107
  br label %166

128:                                              ; preds = %107
  %129 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %130 = load i64, i64* @DCB_APP_ATTR_IDTYPE, align 8
  %131 = load i64, i64* %19, align 8
  %132 = call i32 @nla_put_u8(%struct.sk_buff* %129, i64 %130, i64 %131)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %166

136:                                              ; preds = %128
  %137 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %138 = load i64, i64* @DCB_APP_ATTR_ID, align 8
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @nla_put_u16(%struct.sk_buff* %137, i64 %138, i32 %139)
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %20, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %166

144:                                              ; preds = %136
  %145 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %146 = load i64, i64* @DCB_APP_ATTR_PRIORITY, align 8
  %147 = load i64, i64* %18, align 8
  %148 = call i32 @nla_put_u8(%struct.sk_buff* %145, i64 %146, i64 %147)
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %166

152:                                              ; preds = %144
  %153 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %154 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %155 = call i32 @nla_nest_end(%struct.sk_buff* %153, %struct.nlattr* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %157 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %158 = call i32 @nlmsg_end(%struct.sk_buff* %156, %struct.nlmsghdr* %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @rtnl_unicast(%struct.sk_buff* %159, i32* @init_net, i32 %160)
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %20, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  br label %170

165:                                              ; preds = %152
  br label %173

166:                                              ; preds = %151, %143, %135, %127
  %167 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %168 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %169 = call i32 @nla_nest_cancel(%struct.sk_buff* %167, %struct.nlattr* %168)
  br label %170

170:                                              ; preds = %166, %164
  %171 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %172 = call i32 @kfree_skb(%struct.sk_buff* %171)
  br label %173

173:                                              ; preds = %170, %165, %106, %71, %58, %45, %34
  %174 = load i32, i32* %20, align 4
  %175 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %175)
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #2

declare dso_local i64 @dcb_getapp(%struct.net_device*, %struct.dcb_app*) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #2

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i64) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i64, i64) #2

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i64, i32) #2

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
