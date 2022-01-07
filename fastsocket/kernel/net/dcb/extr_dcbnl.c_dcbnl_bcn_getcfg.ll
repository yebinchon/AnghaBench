; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_bcn_getcfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_bcn_getcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)* }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i32, i32 }

@DCB_BCN_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_BCN = common dso_local global i64 0, align 8
@dcbnl_bcn_nest = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@DCB_CMD_BCN_GCFG = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_ALL = common dso_local global i64 0, align 8
@DCB_BCN_ATTR_RP_0 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RP_7 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_BCNA_0 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RI = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_bcn_getcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_bcn_getcfg(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca %struct.dcbmsg*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load i32, i32* @DCB_BCN_ATTR_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %16, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %32 = load i64, i64* @DCB_ATTR_BCN, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %5
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %40, align 8
  %42 = icmp ne i32 (%struct.net_device*, i32, i32*)* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %47, align 8
  %49 = icmp ne i32 (%struct.net_device*, i32, i32*)* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %43, %36, %5
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %197

52:                                               ; preds = %43
  %53 = load i32, i32* @DCB_BCN_ATTR_MAX, align 4
  %54 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %55 = load i64, i64* @DCB_ATTR_BCN, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = load i32, i32* @dcbnl_bcn_nest, align 4
  %59 = call i32 @nla_parse_nested(%struct.nlattr** %28, i32 %53, %struct.nlattr* %57, i32 %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %193

63:                                               ; preds = %52
  %64 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.sk_buff* @nlmsg_new(i32 %64, i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %12, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %193

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @RTM_GETDCB, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %71, i32 %72, i32 %73, i32 %74, i32 8, i32 %75)
  store %struct.nlmsghdr* %76, %struct.nlmsghdr** %13, align 8
  %77 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %78 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %77)
  store %struct.dcbmsg* %78, %struct.dcbmsg** %14, align 8
  %79 = load i32, i32* @AF_UNSPEC, align 4
  %80 = load %struct.dcbmsg*, %struct.dcbmsg** %14, align 8
  %81 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @DCB_CMD_BCN_GCFG, align 4
  %83 = load %struct.dcbmsg*, %struct.dcbmsg** %14, align 8
  %84 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = load i64, i64* @DCB_ATTR_BCN, align 8
  %87 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %85, i64 %86)
  store %struct.nlattr* %87, %struct.nlattr** %15, align 8
  %88 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %70
  br label %190

91:                                               ; preds = %70
  %92 = load i64, i64* @DCB_BCN_ATTR_ALL, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 1, i32* %21, align 4
  br label %97

97:                                               ; preds = %96, %91
  %98 = load i32, i32* @DCB_BCN_ATTR_RP_0, align 4
  store i32 %98, i32* %22, align 4
  br label %99

99:                                               ; preds = %132, %97
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* @DCB_BCN_ATTR_RP_7, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %99
  %104 = load i32, i32* %21, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = icmp ne %struct.nlattr* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  br label %132

113:                                              ; preds = %106, %103
  %114 = load %struct.net_device*, %struct.net_device** %7, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %117, align 8
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* @DCB_BCN_ATTR_RP_0, align 4
  %122 = sub nsw i32 %120, %121
  %123 = call i32 %118(%struct.net_device* %119, i32 %122, i32* %18)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @nla_put_u8(%struct.sk_buff* %124, i32 %125, i32 %126)
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %20, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %113
  br label %185

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131, %112
  %133 = load i32, i32* %22, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %22, align 4
  br label %99

135:                                              ; preds = %99
  %136 = load i32, i32* @DCB_BCN_ATTR_BCNA_0, align 4
  store i32 %136, i32* %22, align 4
  br label %137

137:                                              ; preds = %168, %135
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* @DCB_BCN_ATTR_RI, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %137
  %142 = load i32, i32* %21, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %146
  %148 = load %struct.nlattr*, %struct.nlattr** %147, align 8
  %149 = icmp ne %struct.nlattr* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  br label %168

151:                                              ; preds = %144, %141
  %152 = load %struct.net_device*, %struct.net_device** %7, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %155, align 8
  %157 = load %struct.net_device*, %struct.net_device** %7, align 8
  %158 = load i32, i32* %22, align 4
  %159 = call i32 %156(%struct.net_device* %157, i32 %158, i32* %19)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @nla_put_u32(%struct.sk_buff* %160, i32 %161, i32 %162)
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %20, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  br label %185

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167, %150
  %169 = load i32, i32* %22, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %22, align 4
  br label %137

171:                                              ; preds = %137
  %172 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %173 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %174 = call i32 @nla_nest_end(%struct.sk_buff* %172, %struct.nlattr* %173)
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %177 = call i32 @nlmsg_end(%struct.sk_buff* %175, %struct.nlmsghdr* %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @rtnl_unicast(%struct.sk_buff* %178, i32* @init_net, i32 %179)
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* %20, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  br label %193

184:                                              ; preds = %171
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %197

185:                                              ; preds = %166, %130
  %186 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %187 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %188 = call i32 @nla_nest_cancel(%struct.sk_buff* %186, %struct.nlattr* %187)
  br label %189

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %189, %90
  %191 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %192 = call i32 @kfree_skb(%struct.sk_buff* %191)
  br label %193

193:                                              ; preds = %190, %183, %69, %62
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %20, align 4
  %196 = load i32, i32* %20, align 4
  store i32 %196, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %197

197:                                              ; preds = %193, %184, %50
  %198 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #2

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i64) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #2

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
