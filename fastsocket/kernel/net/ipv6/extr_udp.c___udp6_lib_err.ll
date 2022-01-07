; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c___udp6_lib_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c___udp6_lib_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.inet6_skb_parm = type { i32 }
%struct.udp_table = type { i32 }
%struct.ipv6_pinfo = type { i64 }
%struct.ipv6hdr = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.udphdr = type { i32, i32 }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__udp6_lib_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.udp_table* %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.udp_table*, align 8
  %15 = alloca %struct.ipv6_pinfo*, align 8
  %16 = alloca %struct.ipv6hdr*, align 8
  %17 = alloca %struct.in6_addr*, align 8
  %18 = alloca %struct.in6_addr*, align 8
  %19 = alloca %struct.udphdr*, align 8
  %20 = alloca %struct.sock*, align 8
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.udp_table* %6, %struct.udp_table** %14, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %25, %struct.ipv6hdr** %16, align 8
  %26 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %27 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %26, i32 0, i32 1
  store %struct.in6_addr* %27, %struct.in6_addr** %17, align 8
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 0
  store %struct.in6_addr* %29, %struct.in6_addr** %18, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = inttoptr i64 %35 to %struct.udphdr*
  store %struct.udphdr* %36, %struct.udphdr** %19, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_net(i32 %39)
  %41 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8
  %42 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %43 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %46 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %47 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = call i32 @inet6_iif(%struct.sk_buff* %49)
  %51 = load %struct.udp_table*, %struct.udp_table** %14, align 8
  %52 = call %struct.sock* @__udp6_lib_lookup(i32 %40, %struct.in6_addr* %41, i32 %44, %struct.in6_addr* %45, i32 %48, i32 %50, %struct.udp_table* %51)
  store %struct.sock* %52, %struct.sock** %20, align 8
  %53 = load %struct.sock*, %struct.sock** %20, align 8
  %54 = icmp eq %struct.sock* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %7
  br label %111

56:                                               ; preds = %7
  %57 = load %struct.sock*, %struct.sock** %20, align 8
  %58 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %57)
  store %struct.ipv6_pinfo* %58, %struct.ipv6_pinfo** %15, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @icmpv6_err_convert(i32 %59, i32 %60, i32* %21)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %65 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %108

69:                                               ; preds = %63, %56
  %70 = load %struct.sock*, %struct.sock** %20, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TCP_ESTABLISHED, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %77 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %108

81:                                               ; preds = %75, %69
  %82 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %15, align 8
  %83 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.sock*, %struct.sock** %20, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = load i32, i32* %21, align 4
  %90 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %91 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @ntohl(i32 %93)
  %95 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %96 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %95, i64 1
  %97 = bitcast %struct.udphdr* %96 to i32*
  %98 = call i32 @ipv6_icmp_error(%struct.sock* %87, %struct.sk_buff* %88, i32 %89, i32 %92, i32 %94, i32* %97)
  br label %99

99:                                               ; preds = %86, %81
  %100 = load i32, i32* %21, align 4
  %101 = load %struct.sock*, %struct.sock** %20, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.sock*, %struct.sock** %20, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 2
  %105 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %104, align 8
  %106 = load %struct.sock*, %struct.sock** %20, align 8
  %107 = call i32 %105(%struct.sock* %106)
  br label %108

108:                                              ; preds = %99, %80, %68
  %109 = load %struct.sock*, %struct.sock** %20, align 8
  %110 = call i32 @sock_put(%struct.sock* %109)
  br label %111

111:                                              ; preds = %108, %55
  ret void
}

declare dso_local %struct.sock* @__udp6_lib_lookup(i32, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32, %struct.udp_table*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @icmpv6_err_convert(i32, i32, i32*) #1

declare dso_local i32 @ipv6_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
