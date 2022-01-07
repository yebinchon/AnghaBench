; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TCPOPTSTRIP.c_tcpoptstrip_mangle_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TCPOPTSTRIP.c_tcpoptstrip_mangle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_tcpoptstrip_target_info = type { i32 }
%struct.tcphdr = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_tcpoptstrip_target_info*, i32, i32)* @tcpoptstrip_mangle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpoptstrip_mangle_packet(%struct.sk_buff* %0, %struct.xt_tcpoptstrip_target_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xt_tcpoptstrip_target_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.xt_tcpoptstrip_target_info* %1, %struct.xt_tcpoptstrip_target_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @skb_make_writable(%struct.sk_buff* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @NF_DROP, align 4
  store i32 %24, i32* %5, align 4
  br label %112

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i64 @skb_network_header(%struct.sk_buff* %26)
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = inttoptr i64 %30 to %struct.tcphdr*
  store %struct.tcphdr* %31, %struct.tcphdr** %13, align 8
  %32 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %33 = bitcast %struct.tcphdr* %32 to i32*
  store i32* %33, i32** %16, align 8
  store i32 4, i32* %11, align 4
  br label %34

34:                                               ; preds = %106, %25
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @tcp_hdrlen(%struct.sk_buff* %36)
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %110

39:                                               ; preds = %34
  %40 = load i32*, i32** %16, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @optlen(i32* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %43, %44
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @tcp_hdrlen(%struct.sk_buff* %46)
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %110

50:                                               ; preds = %39
  %51 = load %struct.xt_tcpoptstrip_target_info*, %struct.xt_tcpoptstrip_target_info** %7, align 8
  %52 = getelementptr inbounds %struct.xt_tcpoptstrip_target_info, %struct.xt_tcpoptstrip_target_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @tcpoptstrip_test_bit(i32 %53, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %106

62:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %95, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %63
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* @TCPOPT_NOP, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add i32 %76, %77
  %79 = urem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = load i32, i32* %15, align 4
  %83 = shl i32 %82, 8
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = shl i32 %84, 8
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %81, %67
  %87 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %88 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %87, i32 0, i32 0
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @htons(i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @htons(i32 %92)
  %94 = call i32 @inet_proto_csum_replace2(i32* %88, %struct.sk_buff* %89, i32 %91, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %12, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %63

98:                                               ; preds = %63
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* @TCPOPT_NOP, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @memset(i32* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %61
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %34

110:                                              ; preds = %49, %34
  %111 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %23
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @optlen(i32*, i32) #1

declare dso_local i32 @tcpoptstrip_test_bit(i32, i32) #1

declare dso_local i32 @inet_proto_csum_replace2(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
