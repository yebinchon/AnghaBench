; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_check_urg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_check_urg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.tcp_sock = type { i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@sysctl_tcp_stdurg = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@TCP_URG_NOTYET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tcphdr*)* @tcp_check_urg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_check_urg(%struct.sock* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %11 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ntohs(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @sysctl_tcp_stdurg, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %19, %16, %2
  %23 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %24 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ntohl(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @after(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %122

36:                                               ; preds = %22
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @before(i64 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %122

44:                                               ; preds = %36
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @after(i64 %50, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %122

57:                                               ; preds = %49, %44
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = call i32 @sk_send_sigurg(%struct.sock* %58)
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %113

67:                                               ; preds = %57
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %69 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %67
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = load i32, i32* @SOCK_URGINLINE, align 4
  %75 = call i32 @sock_flag(%struct.sock* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %113, label %77

77:                                               ; preds = %72
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %82 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %77
  %86 = load %struct.sock*, %struct.sock** %3, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 0
  %88 = call %struct.sk_buff* @skb_peek(i32* %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %7, align 8
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %90 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %85
  %96 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %97 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @before(i64 %98, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %95
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = load %struct.sock*, %struct.sock** %3, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 0
  %109 = call i32 @__skb_unlink(%struct.sk_buff* %106, i32* %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = call i32 @__kfree_skb(%struct.sk_buff* %110)
  br label %112

112:                                              ; preds = %105, %95, %85
  br label %113

113:                                              ; preds = %112, %77, %72, %67, %57
  %114 = load i64, i64* @TCP_URG_NOTYET, align 8
  %115 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %116 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %119 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %121 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %113, %56, %43, %35
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @sk_send_sigurg(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
