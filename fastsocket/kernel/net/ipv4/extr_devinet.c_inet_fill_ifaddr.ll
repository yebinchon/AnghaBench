; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_fill_ifaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_fill_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.in_ifaddr = type { i32, i64*, i64, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i32 0, align 4
@IFA_BROADCAST = common dso_local global i32 0, align 4
@IFA_LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.in_ifaddr*, i32, i32, i32, i32)* @inet_fill_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_fill_ifaddr(%struct.sk_buff* %0, %struct.in_ifaddr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.in_ifaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifaddrmsg*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %16, i32 %17, i32 %18, i32 %19, i32 20, i32 %20)
  store %struct.nlmsghdr* %21, %struct.nlmsghdr** %15, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %23 = icmp eq %struct.nlmsghdr* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @EMSGSIZE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %118

27:                                               ; preds = %6
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %29 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %28)
  store %struct.ifaddrmsg* %29, %struct.ifaddrmsg** %14, align 8
  %30 = load i32, i32* @AF_INET, align 4
  %31 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %32 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %34 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %37 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %39 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IFA_F_PERMANENT, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %44 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %46 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %49 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %51 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %50, i32 0, i32 5
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %58 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %60 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %27
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = load i32, i32* @IFA_ADDRESS, align 4
  %66 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %67 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %64, i32 %65, i64 %68)
  br label %70

70:                                               ; preds = %63, %27
  %71 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %72 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load i32, i32* @IFA_LOCAL, align 4
  %78 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %79 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %76, i32 %77, i64 %80)
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %84 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = load i32, i32* @IFA_BROADCAST, align 4
  %90 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %91 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %88, i32 %89, i64 %92)
  br label %94

94:                                               ; preds = %87, %82
  %95 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %96 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = load i32, i32* @IFA_LABEL, align 4
  %104 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %105 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %102, i32 %103, i64* %106)
  br label %108

108:                                              ; preds = %101, %94
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %111 = call i32 @nlmsg_end(%struct.sk_buff* %109, %struct.nlmsghdr* %110)
  store i32 %111, i32* %7, align 4
  br label %118

112:                                              ; No predecessors!
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %115 = call i32 @nlmsg_cancel(%struct.sk_buff* %113, %struct.nlmsghdr* %114)
  %116 = load i32, i32* @EMSGSIZE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %112, %108, %24
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @NLA_PUT_BE32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i64*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
