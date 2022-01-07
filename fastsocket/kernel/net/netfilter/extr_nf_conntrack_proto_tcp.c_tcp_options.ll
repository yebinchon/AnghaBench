; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }
%struct.ip_ct_tcp_state = type { i32, i32 }

@TCPOPT_SACK_PERM = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERM = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_SACK_PERM = common dso_local global i32 0, align 4
@TCPOPT_WINDOW = common dso_local global i32 0, align 4
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_WINDOW_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.tcphdr*, %struct.ip_ct_tcp_state*)* @tcp_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_options(%struct.sk_buff* %0, i32 %1, %struct.tcphdr* %2, %struct.ip_ct_tcp_state* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.ip_ct_tcp_state*, align 8
  %9 = alloca [56 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store %struct.ip_ct_tcp_state* %3, %struct.ip_ct_tcp_state** %8, align 8
  %14 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %15 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %119

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds [56 x i8], [56 x i8]* %9, i64 0, i64 0
  %32 = call i8* @skb_header_pointer(%struct.sk_buff* %25, i32 %29, i32 %30, i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %38 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %40 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %118, %51, %24
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %119

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %54 [
    i32 129, label %50
    i32 128, label %51
  ]

50:                                               ; preds = %44
  br label %119

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %11, align 4
  br label %41

54:                                               ; preds = %44
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %119

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %118

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @TCPOPT_SACK_PERM, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @IP_CT_TCP_FLAG_SACK_PERM, align 4
  %77 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %78 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %109

81:                                               ; preds = %71, %67
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @TCPOPT_WINDOW, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load i8*, i8** %10, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %94 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %96 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 14
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %101 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %100, i32 0, i32 0
  store i32 14, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %89
  %103 = load i32, i32* @IP_CT_TCP_FLAG_WINDOW_SCALE, align 4
  %104 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %8, align 8
  %105 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %85, %81
  br label %109

109:                                              ; preds = %108, %75
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, 2
  %112 = load i8*, i8** %10, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %109, %66
  br label %41

119:                                              ; preds = %23, %50, %61, %41
  ret void
}

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
