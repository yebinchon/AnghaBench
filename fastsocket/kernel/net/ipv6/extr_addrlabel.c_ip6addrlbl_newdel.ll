; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrlabel.c_ip6addrlbl_newdel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrlabel.c_ip6addrlbl_newdel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.net = type { i32 }
%struct.ifaddrlblmsg = type { i64, i32, i64 }
%struct.in6_addr = type { i32 }
%struct.nlattr = type { i32 }

@IFAL_MAX = common dso_local global i32 0, align 4
@ifal_policy = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFAL_ADDRESS = common dso_local global i64 0, align 8
@IFAL_LABEL = common dso_local global i64 0, align 8
@IPV6_ADDR_LABEL_DEFAULT = common dso_local global i64 0, align 8
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @ip6addrlbl_newdel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6addrlbl_newdel(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifaddrlblmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load i32, i32* @IFAL_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %26 = load i32, i32* @IFAL_MAX, align 4
  %27 = load i32, i32* @ifal_policy, align 4
  %28 = call i32 @nlmsg_parse(%struct.nlmsghdr* %25, i32 24, %struct.nlattr** %24, i32 %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %136

33:                                               ; preds = %3
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %35 = call %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr* %34)
  store %struct.ifaddrlblmsg* %35, %struct.ifaddrlblmsg** %9, align 8
  %36 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %37 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %43 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 128
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %33
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %136

49:                                               ; preds = %41
  %50 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %51 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %57 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @__dev_get_by_index(%struct.net* %55, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %136

64:                                               ; preds = %54, %49
  %65 = load i64, i64* @IFAL_ADDRESS, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %136

72:                                               ; preds = %64
  %73 = load i64, i64* @IFAL_ADDRESS, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call %struct.in6_addr* @nla_data(%struct.nlattr* %75)
  store %struct.in6_addr* %76, %struct.in6_addr** %12, align 8
  %77 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %78 = icmp ne %struct.in6_addr* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %136

82:                                               ; preds = %72
  %83 = load i64, i64* @IFAL_LABEL, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %136

90:                                               ; preds = %82
  %91 = load i64, i64* @IFAL_LABEL, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i64 @nla_get_u32(%struct.nlattr* %93)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @IPV6_ADDR_LABEL_DEFAULT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %136

101:                                              ; preds = %90
  %102 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %103 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %131 [
    i32 128, label %105
    i32 129, label %121
  ]

105:                                              ; preds = %101
  %106 = load %struct.net*, %struct.net** %8, align 8
  %107 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %108 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %109 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %112 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %116 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NLM_F_REPLACE, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @ip6addrlbl_add(%struct.net* %106, %struct.in6_addr* %107, i32 %110, i64 %113, i64 %114, i32 %119)
  store i32 %120, i32* %14, align 4
  br label %134

121:                                              ; preds = %101
  %122 = load %struct.net*, %struct.net** %8, align 8
  %123 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %124 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %125 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %128 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @ip6addrlbl_del(%struct.net* %122, %struct.in6_addr* %123, i32 %126, i64 %129)
  store i32 %130, i32* %14, align 4
  br label %134

131:                                              ; preds = %101
  %132 = load i32, i32* @EOPNOTSUPP, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %131, %121, %105
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %134, %98, %87, %79, %69, %61, %46, %31
  %137 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.in6_addr* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @ip6addrlbl_add(%struct.net*, %struct.in6_addr*, i32, i64, i64, i32) #1

declare dso_local i32 @ip6addrlbl_del(%struct.net*, %struct.in6_addr*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
