; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_alloc_userspi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_alloc_userspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfrm_userspi_info = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.xfrm_mark = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_alloc_userspi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_alloc_userspi(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.xfrm_userspi_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfrm_mark, align 4
  %16 = alloca %struct.TYPE_10__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %7, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %22 = call %struct.xfrm_userspi_info* @nlmsg_data(%struct.nlmsghdr* %21)
  store %struct.xfrm_userspi_info* %22, %struct.xfrm_userspi_info** %9, align 8
  %23 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %24 = call i32 @verify_userspi_info(%struct.xfrm_userspi_info* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %136

28:                                               ; preds = %3
  %29 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %30 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %34 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32* %36, i32** %11, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %8, align 8
  %37 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %38 = call i32 @xfrm_mark_get(%struct.nlattr** %37, %struct.xfrm_mark* %15)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %40 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %28
  %45 = load %struct.net*, %struct.net** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %48 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.xfrm_state* @xfrm_find_acq_byseq(%struct.net* %45, i32 %46, i64 %50)
  store %struct.xfrm_state* %51, %struct.xfrm_state** %8, align 8
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %53 = icmp ne %struct.xfrm_state* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @xfrm_addr_cmp(i32* %57, i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %64 = call i32 @xfrm_state_put(%struct.xfrm_state* %63)
  store %struct.xfrm_state* null, %struct.xfrm_state** %8, align 8
  br label %65

65:                                               ; preds = %62, %54, %44
  br label %66

66:                                               ; preds = %65, %28
  %67 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %68 = icmp ne %struct.xfrm_state* %67, null
  br i1 %68, label %90, label %69

69:                                               ; preds = %66
  %70 = load %struct.net*, %struct.net** %7, align 8
  %71 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %72 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %76 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %80 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %86 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %12, align 4
  %89 = call %struct.xfrm_state* @xfrm_find_acq(%struct.net* %70, %struct.xfrm_mark* %15, i32 %74, i32 %78, i32 %83, i32* %84, i32* %87, i32 1, i32 %88)
  store %struct.xfrm_state* %89, %struct.xfrm_state** %8, align 8
  br label %90

90:                                               ; preds = %69, %66
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %13, align 4
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %94 = icmp eq %struct.xfrm_state* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %136

96:                                               ; preds = %90
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %98 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %99 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xfrm_userspi_info*, %struct.xfrm_userspi_info** %9, align 8
  %102 = getelementptr inbounds %struct.xfrm_userspi_info, %struct.xfrm_userspi_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @xfrm_alloc_spi(%struct.xfrm_state* %97, i32 %100, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %133

108:                                              ; preds = %96
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %111 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %112 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.sk_buff* @xfrm_state_netlink(%struct.sk_buff* %109, %struct.xfrm_state* %110, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %10, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %116 = call i64 @IS_ERR(%struct.sk_buff* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %120 = call i32 @PTR_ERR(%struct.sk_buff* %119)
  store i32 %120, i32* %13, align 4
  br label %133

121:                                              ; preds = %108
  %122 = load %struct.net*, %struct.net** %7, align 8
  %123 = getelementptr inbounds %struct.net, %struct.net* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call i32 @NETLINK_CB(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @nlmsg_unicast(i32 %125, %struct.sk_buff* %126, i32 %131)
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %121, %118, %107
  %134 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %135 = call i32 @xfrm_state_put(%struct.xfrm_state* %134)
  br label %136

136:                                              ; preds = %133, %95, %27
  %137 = load i32, i32* %13, align 4
  ret i32 %137
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_userspi_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @verify_userspi_info(%struct.xfrm_userspi_info*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local %struct.xfrm_state* @xfrm_find_acq_byseq(%struct.net*, i32, i64) #1

declare dso_local i64 @xfrm_addr_cmp(i32*, i32*, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local %struct.xfrm_state* @xfrm_find_acq(%struct.net*, %struct.xfrm_mark*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @xfrm_alloc_spi(%struct.xfrm_state*, i32, i32) #1

declare dso_local %struct.sk_buff* @xfrm_state_netlink(%struct.sk_buff*, %struct.xfrm_state*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
