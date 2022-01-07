; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_backlog_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_backlog_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32 }
%struct.dn_scp = type { i64 }
%struct.dn_skb_cb = type { i32, i32 }

@DN_RT_F_RTS = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@DN_CC = common dso_local global i64 0, align 8
@SOCK_DEAD = common dso_local global i32 0, align 4
@DN_RUN = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_nsp_backlog_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dn_scp*, align 8
  %7 = alloca %struct.dn_skb_cb*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.dn_scp* @DN_SK(%struct.sock* %9)
  store %struct.dn_scp* %10, %struct.dn_scp** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %11)
  store %struct.dn_skb_cb* %12, %struct.dn_skb_cb** %7, align 8
  %13 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %14 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DN_RT_F_RTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %21 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %26 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 104
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %19
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @dn_returned_conn_init(%struct.sock* %30, %struct.sk_buff* %31)
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %153

38:                                               ; preds = %2
  %39 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %40 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 12
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %46 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 112
  switch i32 %48, label %65 [
    i32 16, label %49
    i32 96, label %49
    i32 32, label %53
    i32 48, label %57
    i32 64, label %61
  ]

49:                                               ; preds = %44, %44
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @dn_nsp_conn_init(%struct.sock* %50, %struct.sk_buff* %51)
  br label %65

53:                                               ; preds = %44
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @dn_nsp_conn_conf(%struct.sock* %54, %struct.sk_buff* %55)
  br label %65

57:                                               ; preds = %44
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @dn_nsp_disc_init(%struct.sock* %58, %struct.sk_buff* %59)
  br label %65

61:                                               ; preds = %44
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @dn_nsp_disc_conf(%struct.sock* %62, %struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %44, %61, %57, %53, %49
  br label %151

66:                                               ; preds = %38
  %67 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %68 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 36
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @dn_nsp_conn_ack(%struct.sock* %72, %struct.sk_buff* %73)
  br label %150

75:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  %76 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %77 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DN_CC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = load i32, i32* @SOCK_DEAD, align 4
  %84 = call i32 @sock_flag(%struct.sock* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* @DN_RUN, align 8
  %88 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %89 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @TCP_ESTABLISHED, align 4
  %91 = load %struct.sock*, %struct.sock** %4, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.sock*, %struct.sock** %4, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 0
  %95 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %94, align 8
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  %97 = call i32 %95(%struct.sock* %96)
  br label %98

98:                                               ; preds = %86, %81, %75
  %99 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %100 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 28
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %98
  %106 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %107 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 4
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %105
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @dn_process_ack(%struct.sock* %112, %struct.sk_buff* %113, i32 %114)
  %116 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %117 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 12
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %111
  %122 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %123 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DN_RUN, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %146

128:                                              ; preds = %121
  %129 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %7, align 8
  %130 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %140 [
    i32 16, label %132
    i32 48, label %136
  ]

132:                                              ; preds = %128
  %133 = load %struct.sock*, %struct.sock** %4, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = call i32 @dn_nsp_linkservice(%struct.sock* %133, %struct.sk_buff* %134)
  br label %144

136:                                              ; preds = %128
  %137 = load %struct.sock*, %struct.sock** %4, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = call i32 @dn_nsp_otherdata(%struct.sock* %137, %struct.sk_buff* %138)
  br label %144

140:                                              ; preds = %128
  %141 = load %struct.sock*, %struct.sock** %4, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = call i32 @dn_nsp_data(%struct.sock* %141, %struct.sk_buff* %142)
  br label %144

144:                                              ; preds = %140, %136, %132
  br label %149

145:                                              ; preds = %111
  br label %146

146:                                              ; preds = %145, %127
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = call i32 @kfree_skb(%struct.sk_buff* %147)
  br label %149

149:                                              ; preds = %146, %144
  br label %150

150:                                              ; preds = %149, %71
  br label %151

151:                                              ; preds = %150, %65
  %152 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %36
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dn_returned_conn_init(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_conn_init(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_conn_conf(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_disc_init(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_disc_conf(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_conn_ack(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @dn_process_ack(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dn_nsp_linkservice(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_otherdata(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_data(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
