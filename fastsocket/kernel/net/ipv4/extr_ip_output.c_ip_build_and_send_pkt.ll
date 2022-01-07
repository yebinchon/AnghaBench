; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_build_and_send_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_build_and_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.sock = type { i32, i32, i32 }
%struct.ip_options = type { i32 }
%struct.inet_sock = type { i32 }
%struct.rtable = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@IP_DF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_build_and_send_pkt(%struct.sk_buff* %0, %struct.sock* %1, i32 %2, i32 %3, %struct.ip_options* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_options*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.rtable*, align 8
  %13 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ip_options* %4, %struct.ip_options** %10, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.sock* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %16)
  store %struct.rtable* %17, %struct.rtable** %12, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.ip_options*, %struct.ip_options** %10, align 8
  %20 = icmp ne %struct.ip_options* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.ip_options*, %struct.ip_options** %10, align 8
  %23 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  %28 = sext i32 %27 to i64
  %29 = add i64 40, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @skb_push(%struct.sk_buff* %18, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @skb_reset_network_header(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %34)
  store %struct.iphdr* %35, %struct.iphdr** %13, align 8
  %36 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 1
  store i32 5, i32* %39, align 4
  %40 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %41 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = load %struct.rtable*, %struct.rtable** %12, align 8
  %47 = getelementptr inbounds %struct.rtable, %struct.rtable* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i64 @ip_dont_fragment(%struct.sock* %45, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %26
  %52 = load i32, i32* @IP_DF, align 4
  %53 = call i64 @htons(i32 %52)
  %54 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 6
  store i64 %53, i64* %55, align 8
  br label %59

56:                                               ; preds = %26
  %57 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %61 = load %struct.rtable*, %struct.rtable** %12, align 8
  %62 = getelementptr inbounds %struct.rtable, %struct.rtable* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @ip_select_ttl(%struct.inet_sock* %60, i32* %63)
  %65 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %66 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.rtable*, %struct.rtable** %12, align 8
  %68 = getelementptr inbounds %struct.rtable, %struct.rtable* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %71 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.rtable*, %struct.rtable** %12, align 8
  %73 = getelementptr inbounds %struct.rtable, %struct.rtable* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sock*, %struct.sock** %7, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %81 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %83 = load %struct.rtable*, %struct.rtable** %12, align 8
  %84 = getelementptr inbounds %struct.rtable, %struct.rtable* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.sock*, %struct.sock** %7, align 8
  %87 = call i32 @ip_select_ident(%struct.iphdr* %82, i32* %85, %struct.sock* %86)
  %88 = load %struct.ip_options*, %struct.ip_options** %10, align 8
  %89 = icmp ne %struct.ip_options* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %59
  %91 = load %struct.ip_options*, %struct.ip_options** %10, align 8
  %92 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load %struct.ip_options*, %struct.ip_options** %10, align 8
  %97 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 2
  %100 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = load %struct.ip_options*, %struct.ip_options** %10, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.rtable*, %struct.rtable** %12, align 8
  %108 = call i32 @ip_options_build(%struct.sk_buff* %104, %struct.ip_options* %105, i32 %106, %struct.rtable* %107, i32 0)
  br label %109

109:                                              ; preds = %95, %90, %59
  %110 = load %struct.sock*, %struct.sock** %7, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.sock*, %struct.sock** %7, align 8
  %116 = getelementptr inbounds %struct.sock, %struct.sock* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = call i32 @ip_local_out(%struct.sk_buff* %120)
  ret i32 %121
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ip_select_ttl(%struct.inet_sock*, i32*) #1

declare dso_local i32 @ip_select_ident(%struct.iphdr*, i32*, %struct.sock*) #1

declare dso_local i32 @ip_options_build(%struct.sk_buff*, %struct.ip_options*, i32, %struct.rtable*, i32) #1

declare dso_local i32 @ip_local_out(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
