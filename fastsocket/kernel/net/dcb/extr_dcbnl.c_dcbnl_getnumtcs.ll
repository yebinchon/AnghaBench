; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getnumtcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getnumtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32*)* }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i32, i32 }

@DCB_NUMTCS_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_NUMTCS = common dso_local global i64 0, align 8
@dcbnl_numtcs_nest = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@DCB_CMD_GNUMTCS = common dso_local global i32 0, align 4
@DCB_NUMTCS_ATTR_ALL = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_getnumtcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_getnumtcs(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca %struct.dcbmsg*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %30 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %31 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %5
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %39, align 8
  %41 = icmp ne i32 (%struct.net_device*, i32, i32*)* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35, %5
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %165

44:                                               ; preds = %35
  %45 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %46 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %47 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = load i32, i32* @dcbnl_numtcs_nest, align 4
  %51 = call i32 @nla_parse_nested(%struct.nlattr** %27, i32 %45, %struct.nlattr* %49, i32 %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %19, align 4
  br label %163

57:                                               ; preds = %44
  %58 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.sk_buff* @nlmsg_new(i32 %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %12, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %19, align 4
  br label %163

66:                                               ; preds = %57
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @RTM_GETDCB, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff* %67, i32 %68, i32 %69, i32 %70, i32 8, i32 %71)
  store %struct.nlmsghdr* %72, %struct.nlmsghdr** %13, align 8
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %74 = call %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr* %73)
  store %struct.dcbmsg* %74, %struct.dcbmsg** %14, align 8
  %75 = load i32, i32* @AF_UNSPEC, align 4
  %76 = load %struct.dcbmsg*, %struct.dcbmsg** %14, align 8
  %77 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @DCB_CMD_GNUMTCS, align 4
  %79 = load %struct.dcbmsg*, %struct.dcbmsg** %14, align 8
  %80 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %83 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %81, i64 %82)
  store %struct.nlattr* %83, %struct.nlattr** %17, align 8
  %84 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %66
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %19, align 4
  br label %160

89:                                               ; preds = %66
  %90 = load i64, i64* @DCB_NUMTCS_ATTR_ALL, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %21, align 4
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i64, i64* @DCB_NUMTCS_ATTR_ALL, align 8
  %97 = add i64 %96, 1
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %20, align 4
  br label %99

99:                                               ; preds = %140, %95
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %143

103:                                              ; preds = %99
  %104 = load i32, i32* %21, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = icmp ne %struct.nlattr* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  br label %140

113:                                              ; preds = %106, %103
  %114 = load %struct.net_device*, %struct.net_device** %7, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %117, align 8
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = load i32, i32* %20, align 4
  %121 = call i32 %118(%struct.net_device* %119, i32 %120, i32* %18)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %113
  %125 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @nla_put_u8(%struct.sk_buff* %125, i32 %126, i32 %127)
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %133 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %134 = call i32 @nla_nest_cancel(%struct.sk_buff* %132, %struct.nlattr* %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %19, align 4
  br label %160

137:                                              ; preds = %124
  br label %139

138:                                              ; preds = %113
  br label %160

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139, %112
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  br label %99

143:                                              ; preds = %99
  %144 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %145 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %146 = call i32 @nla_nest_end(%struct.sk_buff* %144, %struct.nlattr* %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %148 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %149 = call i32 @nlmsg_end(%struct.sk_buff* %147, %struct.nlmsghdr* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @rtnl_unicast(%struct.sk_buff* %150, i32* @init_net, i32 %151)
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %143
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %19, align 4
  br label %163

158:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %165

159:                                              ; No predecessors!
  br label %160

160:                                              ; preds = %159, %138, %131, %86
  %161 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %162 = call i32 @kfree_skb(%struct.sk_buff* %161)
  br label %163

163:                                              ; preds = %160, %155, %63, %54
  %164 = load i32, i32* %19, align 4
  store i32 %164, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %165

165:                                              ; preds = %163, %158, %42
  %166 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @NLMSG_NEW(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.dcbmsg* @NLMSG_DATA(%struct.nlmsghdr*) #2

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i64) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #2

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, i32*, i32) #2

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
