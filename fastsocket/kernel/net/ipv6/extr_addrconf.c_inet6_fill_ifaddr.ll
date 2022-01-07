; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_fill_ifaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_fill_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_ifaddr = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@INFINITY_LIFE_TIME = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@IFA_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_ifaddr*, i64, i64, i32, i32)* @inet6_fill_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_ifaddr(%struct.sk_buff* %0, %struct.inet6_ifaddr* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_ifaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %18, i64 %19, i64 %20, i32 %21, i32 4, i32 %22)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %14, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %25 = icmp eq %struct.nlmsghdr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %123

29:                                               ; preds = %6
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %32 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %35 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %38 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rt_scope(i32 %39)
  %41 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %42 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %41, i32 0, i32 6
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @put_ifaddrmsg(%struct.nlmsghdr* %30, i32 %33, i32 %36, i32 %40, i32 %47)
  %49 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %50 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IFA_F_PERMANENT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %29
  %56 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %57 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %15, align 8
  %59 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %60 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %55
  %66 = load i64, i64* @jiffies, align 8
  %67 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %68 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load i64, i64* @HZ, align 8
  %72 = sdiv i64 %70, %71
  store i64 %72, i64* %17, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %17, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %15, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %15, align 8
  br label %81

80:                                               ; preds = %65
  store i64 0, i64* %15, align 8
  br label %81

81:                                               ; preds = %80, %76
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %16, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %16, align 8
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %55
  br label %94

91:                                               ; preds = %29
  %92 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  store i64 %93, i64* %16, align 8
  br label %94

94:                                               ; preds = %91, %90
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load i32, i32* @IFA_ADDRESS, align 4
  %97 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %98 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %97, i32 0, i32 5
  %99 = call i64 @nla_put(%struct.sk_buff* %95, i32 %96, i32 16, i32* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %94
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %104 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %9, align 8
  %107 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %16, align 8
  %111 = call i64 @put_cacheinfo(%struct.sk_buff* %102, i32 %105, i64 %108, i64 %109, i64 %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %101, %94
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %116 = call i32 @nlmsg_cancel(%struct.sk_buff* %114, %struct.nlmsghdr* %115)
  %117 = load i32, i32* @EMSGSIZE, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %7, align 4
  br label %123

119:                                              ; preds = %101
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %122 = call i32 @nlmsg_end(%struct.sk_buff* %120, %struct.nlmsghdr* %121)
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %119, %113, %26
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @put_ifaddrmsg(%struct.nlmsghdr*, i32, i32, i32, i32) #1

declare dso_local i32 @rt_scope(i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @put_cacheinfo(%struct.sk_buff*, i32, i64, i64, i64) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
