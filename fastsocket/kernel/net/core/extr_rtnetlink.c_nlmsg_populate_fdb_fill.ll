; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_nlmsg_populate_fdb_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_nlmsg_populate_fdb_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i32, i32, i64, i64, i64, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32*, i32, i32, i32, i32)* @nlmsg_populate_fdb_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsg_populate_fdb_fill(%struct.sk_buff* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.ndmsg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @NLM_F_MULTI, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32 %21, i32 48, i32 %22)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %16, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %25 = icmp ne %struct.nlmsghdr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %69

29:                                               ; preds = %7
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %31 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.ndmsg* %31, %struct.ndmsg** %17, align 8
  %32 = load i32, i32* @AF_BRIDGE, align 4
  %33 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %34 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %36 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %38 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %41 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %43 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %10, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %48 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @NUD_PERMANENT, align 4
  %50 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %51 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = load i32, i32* @NDA_LLADDR, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @nla_put(%struct.sk_buff* %52, i32 %53, i32 %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %29
  br label %63

59:                                               ; preds = %29
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %62 = call i32 @nlmsg_end(%struct.sk_buff* %60, %struct.nlmsghdr* %61)
  store i32 %62, i32* %8, align 4
  br label %69

63:                                               ; preds = %58
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %66 = call i32 @nlmsg_cancel(%struct.sk_buff* %64, %struct.nlmsghdr* %65)
  %67 = load i32, i32* @EMSGSIZE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %59, %26
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
