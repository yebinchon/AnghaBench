; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_spdinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_spdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrmk_spdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrmu_spdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrmu_spdhinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_NEWSPDINFO = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_SPD_INFO = common dso_local global i32 0, align 4
@XFRMA_SPD_HINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32)* @build_spdinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_spdinfo(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrmk_spdinfo, align 4
  %11 = alloca %struct.xfrmu_spdinfo, align 4
  %12 = alloca %struct.xfrmu_spdhinfo, align 4
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @XFRM_MSG_NEWSPDINFO, align 4
  %19 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %15, i32 %16, i32 %17, i32 %18, i32 4, i32 0)
  store %struct.nlmsghdr* %19, %struct.nlmsghdr** %13, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %21 = icmp eq %struct.nlmsghdr* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %71

25:                                               ; preds = %4
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %27 = call i32* @nlmsg_data(%struct.nlmsghdr* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %14, align 8
  store i32 %28, i32* %29, align 4
  %30 = call i32 @xfrm_spd_getinfo(%struct.xfrmk_spdinfo* %10)
  %31 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %10, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %11, i32 0, i32 7
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %10, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %11, i32 0, i32 6
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %10, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %11, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %10, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %11, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %10, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %11, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %10, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.xfrmu_spdinfo, %struct.xfrmu_spdinfo* %11, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %10, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.xfrmu_spdhinfo, %struct.xfrmu_spdhinfo* %12, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.xfrmu_spdhinfo, %struct.xfrmu_spdhinfo* %12, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @XFRMA_SPD_INFO, align 4
  %57 = call i32 @NLA_PUT(%struct.sk_buff* %55, i32 %56, i32 32, %struct.xfrmu_spdinfo* %11)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @XFRMA_SPD_HINFO, align 4
  %60 = bitcast %struct.xfrmu_spdhinfo* %12 to %struct.xfrmu_spdinfo*
  %61 = call i32 @NLA_PUT(%struct.sk_buff* %58, i32 %59, i32 32, %struct.xfrmu_spdinfo* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %64 = call i32 @nlmsg_end(%struct.sk_buff* %62, %struct.nlmsghdr* %63)
  store i32 %64, i32* %5, align 4
  br label %71

65:                                               ; No predecessors!
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %68 = call i32 @nlmsg_cancel(%struct.sk_buff* %66, %struct.nlmsghdr* %67)
  %69 = load i32, i32* @EMSGSIZE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %25, %22
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_spd_getinfo(%struct.xfrmk_spdinfo*) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.xfrmu_spdinfo*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
