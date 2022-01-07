; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_rcv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_rcv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_dump_control = type { i32 }

@INET_DIAG_GETSOCK_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4
@INET_DIAG_REQ_BYTECODE = common dso_local global i32 0, align 4
@inet_diag_dump = common dso_local global i32 0, align 4
@idiagnl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @inet_diag_rcv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_rcv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.netlink_dump_control, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i32 4, i32* %6, align 4
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %10 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INET_DIAG_GETSOCK_MAX, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %16 = call i32 @nlmsg_len(%struct.nlmsghdr* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %14
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %24 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NLM_F_DUMP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %22
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @INET_DIAG_REQ_BYTECODE, align 4
  %38 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %35, i32 %36, i32 %37)
  store %struct.nlattr* %38, %struct.nlattr** %7, align 8
  %39 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %40 = icmp eq %struct.nlattr* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %34
  %42 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %43 = call i32 @nla_len(%struct.nlattr* %42)
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %48 = call i32 @nla_data(%struct.nlattr* %47)
  %49 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %50 = call i32 @nla_len(%struct.nlattr* %49)
  %51 = call i64 @inet_diag_bc_audit(i32 %48, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46, %41, %34
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %68

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %29
  %58 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %8, i32 0, i32 0
  %59 = load i32, i32* @inet_diag_dump, align 4
  store i32 %59, i32* %58, align 4
  %60 = load i32, i32* @idiagnl, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %63 = call i32 @netlink_dump_start(i32 %60, %struct.sk_buff* %61, %struct.nlmsghdr* %62, %struct.netlink_dump_control* %8)
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %22
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %67 = call i32 @inet_diag_get_exact(%struct.sk_buff* %65, %struct.nlmsghdr* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %57, %53, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr*, i32, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @inet_diag_bc_audit(i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @netlink_dump_start(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @inet_diag_get_exact(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
