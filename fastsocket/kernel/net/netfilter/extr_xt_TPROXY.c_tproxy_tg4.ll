; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TPROXY.c_tproxy_tg4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TPROXY.c_tproxy_tg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.sock = type { i64 }

@NF_DROP = common dso_local global i32 0, align 4
@NFT_LOOKUP_ESTABLISHED = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@NFT_LOOKUP_LISTENER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"redirecting: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\0A\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"no socket, dropping: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32)* @tproxy_tg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tproxy_tg4(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.udphdr, align 4
  %14 = alloca %struct.udphdr*, align 8
  %15 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %12, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @ip_hdrlen(%struct.sk_buff* %19)
  %21 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %18, i32 %20, i32 8, %struct.udphdr* %13)
  store %struct.udphdr* %21, %struct.udphdr** %14, align 8
  %22 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %23 = icmp eq %struct.udphdr* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @NF_DROP, align 4
  store i32 %25, i32* %6, align 4
  br label %161

26:                                               ; preds = %5
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_net(i32 %29)
  %31 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %41 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %44 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NFT_LOOKUP_ESTABLISHED, align 4
  %50 = call %struct.sock* @nf_tproxy_get_sock_v4(i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %49)
  store %struct.sock* %50, %struct.sock** %15, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @tproxy_laddr4(%struct.sk_buff* %51, i32 %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %26
  %60 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %61 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %26
  %64 = load %struct.sock*, %struct.sock** %15, align 8
  %65 = icmp ne %struct.sock* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.sock*, %struct.sock** %15, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TCP_TIME_WAIT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.sock*, %struct.sock** %15, align 8
  %77 = call %struct.sock* @tproxy_handle_time_wait4(%struct.sk_buff* %73, i32 %74, i32 %75, %struct.sock* %76)
  store %struct.sock* %77, %struct.sock** %15, align 8
  br label %103

78:                                               ; preds = %66, %63
  %79 = load %struct.sock*, %struct.sock** %15, align 8
  %80 = icmp ne %struct.sock* %79, null
  br i1 %80, label %102, label %81

81:                                               ; preds = %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_net(i32 %84)
  %86 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %90 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %94 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NFT_LOOKUP_LISTENER, align 4
  %101 = call %struct.sock* @nf_tproxy_get_sock_v4(i32 %85, i32 %88, i32 %91, i32 %92, i32 %95, i32 %96, i32 %99, i32 %100)
  store %struct.sock* %101, %struct.sock** %15, align 8
  br label %102

102:                                              ; preds = %81, %78
  br label %103

103:                                              ; preds = %102, %72
  %104 = load %struct.sock*, %struct.sock** %15, align 8
  %105 = icmp ne %struct.sock* %104, null
  br i1 %105, label %106, label %140

106:                                              ; preds = %103
  %107 = load %struct.sock*, %struct.sock** %15, align 8
  %108 = call i64 @tproxy_sk_is_transparent(%struct.sock* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %106
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = load i32, i32* %11, align 4
  %118 = xor i32 %116, %117
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 0
  %126 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %127 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ntohs(i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @ntohs(i32 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %123, i32* %125, i32 %129, i32* %8, i32 %131, i32 %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = load %struct.sock*, %struct.sock** %15, align 8
  %138 = call i32 @nf_tproxy_assign_sock(%struct.sk_buff* %136, %struct.sock* %137)
  %139 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %139, i32* %6, align 4
  br label %161

140:                                              ; preds = %106, %103
  %141 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %142 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 1
  %146 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %147 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ntohs(i32 %148)
  %150 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 0
  %152 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %153 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ntohs(i32 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32* %145, i32 %149, i32* %151, i32 %155, i32 %158)
  %160 = load i32, i32* @NF_DROP, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %140, %110, %24
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.sock* @nf_tproxy_get_sock_v4(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @tproxy_laddr4(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.sock* @tproxy_handle_time_wait4(%struct.sk_buff*, i32, i32, %struct.sock*) #1

declare dso_local i64 @tproxy_sk_is_transparent(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @nf_tproxy_assign_sock(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
