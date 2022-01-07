; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_build_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.xfrm_user_mapping = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_MAPPING = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_state*, i32*, i32)* @build_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_mapping(%struct.sk_buff* %0, %struct.xfrm_state* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xfrm_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_user_mapping*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* @XFRM_MSG_MAPPING, align 4
  %14 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %12, i32 0, i32 0, i32 %13, i32 36, i32 0)
  store %struct.nlmsghdr* %14, %struct.nlmsghdr** %11, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %16 = icmp eq %struct.nlmsghdr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EMSGSIZE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %80

20:                                               ; preds = %4
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %22 = call %struct.xfrm_user_mapping* @nlmsg_data(%struct.nlmsghdr* %21)
  store %struct.xfrm_user_mapping* %22, %struct.xfrm_user_mapping** %10, align 8
  %23 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %24 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = call i32 @memcpy(i32* %25, i32* %28, i32 4)
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %35 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %38 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %42 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %49 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %52 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %51, i32 0, i32 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @memcpy(i32* %52, i32* %53, i32 4)
  %55 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %56 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %55, i32 0, i32 3
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = call i32 @memcpy(i32* %56, i32* %59, i32 4)
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %63 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %70 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xfrm_user_mapping*, %struct.xfrm_user_mapping** %10, align 8
  %76 = getelementptr inbounds %struct.xfrm_user_mapping, %struct.xfrm_user_mapping* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %79 = call i32 @nlmsg_end(%struct.sk_buff* %77, %struct.nlmsghdr* %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %20, %17
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_user_mapping* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
