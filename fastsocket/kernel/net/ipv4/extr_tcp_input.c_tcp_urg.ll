; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_urg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_urg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*, i32)* }
%struct.sk_buff = type { i64 }
%struct.tcphdr = type { i32, i64, i32, i64 }
%struct.tcp_sock = type { i64, i64 }

@TCP_URG_NOTYET = common dso_local global i64 0, align 8
@TCP_URG_VALID = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.tcphdr*)* @tcp_urg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_urg(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %7, align 8
  %12 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %13 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %19 = call i32 @tcp_check_urg(%struct.sock* %17, %struct.tcphdr* %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_URG_NOTYET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %20
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ntohl(i32 %32)
  %34 = sub nsw i64 %29, %33
  %35 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %34, %39
  %41 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %26
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @skb_copy_bits(%struct.sk_buff* %51, i64 %52, i32* %9, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* @TCP_URG_VALID, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = load i32, i32* @SOCK_DEAD, align 4
  %66 = call i32 @sock_flag(%struct.sock* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %57
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %70, align 8
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = call i32 %71(%struct.sock* %72, i32 0)
  br label %74

74:                                               ; preds = %68, %57
  br label %75

75:                                               ; preds = %74, %26
  br label %76

76:                                               ; preds = %75, %20
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_check_urg(%struct.sock*, %struct.tcphdr*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i64, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
