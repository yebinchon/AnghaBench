; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_sadinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_sadinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrmk_sadinfo = type { i32, i32, i32 }
%struct.xfrmu_sadhinfo = type { i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_NEWSADINFO = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_SAD_CNT = common dso_local global i32 0, align 4
@XFRMA_SAD_HINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32)* @build_sadinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_sadinfo(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrmk_sadinfo, align 4
  %11 = alloca %struct.xfrmu_sadhinfo, align 4
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @XFRM_MSG_NEWSADINFO, align 4
  %18 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %14, i32 %15, i32 %16, i32 %17, i32 4, i32 0)
  store %struct.nlmsghdr* %18, %struct.nlmsghdr** %12, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %20 = icmp eq %struct.nlmsghdr* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %26 = call i32* @nlmsg_data(%struct.nlmsghdr* %25)
  store i32* %26, i32** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %13, align 8
  store i32 %27, i32* %28, align 4
  %29 = call i32 @xfrm_sad_getinfo(%struct.xfrmk_sadinfo* %10)
  %30 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %10, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.xfrmu_sadhinfo, %struct.xfrmu_sadhinfo* %11, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.xfrmu_sadhinfo, %struct.xfrmu_sadhinfo* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load i32, i32* @XFRMA_SAD_CNT, align 4
  %38 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @NLA_PUT_U32(%struct.sk_buff* %36, i32 %37, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* @XFRMA_SAD_HINFO, align 4
  %43 = call i32 @NLA_PUT(%struct.sk_buff* %41, i32 %42, i32 8, %struct.xfrmu_sadhinfo* %11)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %46 = call i32 @nlmsg_end(%struct.sk_buff* %44, %struct.nlmsghdr* %45)
  store i32 %46, i32* %5, align 4
  br label %53

47:                                               ; No predecessors!
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %50 = call i32 @nlmsg_cancel(%struct.sk_buff* %48, %struct.nlmsghdr* %49)
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %24, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_sad_getinfo(%struct.xfrmk_sadinfo*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.xfrmu_sadhinfo*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
