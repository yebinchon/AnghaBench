; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_nl_fill_ifaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_nl_fill_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dn_ifaddr = type { i32, i64*, i64, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_DECnet = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i32 0, align 4
@IFA_LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.dn_ifaddr*, i32, i32, i32, i32)* @dn_nl_fill_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_nl_fill_ifaddr(%struct.sk_buff* %0, %struct.dn_ifaddr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.dn_ifaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifaddrmsg*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %9, align 8
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
  br label %103

27:                                               ; preds = %6
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %29 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %28)
  store %struct.ifaddrmsg* %29, %struct.ifaddrmsg** %14, align 8
  %30 = load i32, i32* @AF_DECnet, align 4
  %31 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %32 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %34 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %33, i32 0, i32 0
  store i32 16, i32* %34, align 4
  %35 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %36 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IFA_F_PERMANENT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %41 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %43 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %46 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %48 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %14, align 8
  %55 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %57 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %27
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load i32, i32* @IFA_ADDRESS, align 4
  %63 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %64 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @NLA_PUT_LE16(%struct.sk_buff* %61, i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %60, %27
  %68 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %69 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load i32, i32* @IFA_LOCAL, align 4
  %75 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %76 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @NLA_PUT_LE16(%struct.sk_buff* %73, i32 %74, i64 %77)
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %81 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load i32, i32* @IFA_LABEL, align 4
  %89 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %90 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %87, i32 %88, i64* %91)
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %96 = call i32 @nlmsg_end(%struct.sk_buff* %94, %struct.nlmsghdr* %95)
  store i32 %96, i32* %7, align 4
  br label %103

97:                                               ; No predecessors!
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %100 = call i32 @nlmsg_cancel(%struct.sk_buff* %98, %struct.nlmsghdr* %99)
  %101 = load i32, i32* @EMSGSIZE, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %97, %93, %24
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @NLA_PUT_LE16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i64*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
