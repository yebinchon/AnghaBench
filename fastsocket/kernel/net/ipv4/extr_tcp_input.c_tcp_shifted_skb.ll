; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_shifted_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_shifted_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.tcp_sacktag_state = type { i32 }
%struct.tcp_sock = type { i32, %struct.sk_buff*, %struct.sk_buff*, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@TCPCB_EVER_RETRANS = common dso_local global i32 0, align 4
@LINUX_MIB_SACKSHIFTED = common dso_local global i32 0, align 4
@LINUX_MIB_SACKMERGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.tcp_sacktag_state*, i32, i32, i32, i32)* @tcp_shifted_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_shifted_skb(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcp_sacktag_state* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.tcp_sacktag_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tcp_sock*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %struct.tcp_sacktag_state* %2, %struct.tcp_sacktag_state** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %18)
  store %struct.tcp_sock* %19, %struct.tcp_sock** %16, align 8
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call %struct.sk_buff* @tcp_write_queue_prev(%struct.sock* %20, %struct.sk_buff* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %17, align 8
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp eq %struct.sk_buff* %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %7
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %42 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %54 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ult i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %73 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %39
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %80 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.sock*, %struct.sock** %9, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %86 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %39
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ule i32 %92, 1
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %88
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = load %struct.sock*, %struct.sock** %9, align 8
  %104 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %11, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @tcp_sacktag_one(%struct.sk_buff* %102, %struct.sock* %103, %struct.tcp_sacktag_state* %104, i32 %105, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %108)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @TCPCB_EVER_RETRANS, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %115 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %113
  store i32 %118, i32* %116, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %101
  %124 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %125 = call i64 @tcp_skb_pcount(%struct.sk_buff* %124)
  %126 = icmp ne i64 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @BUG_ON(i32 %128)
  %130 = load %struct.sock*, %struct.sock** %9, align 8
  %131 = call i32 @sock_net(%struct.sock* %130)
  %132 = load i32, i32* @LINUX_MIB_SACKSHIFTED, align 4
  %133 = call i32 @NET_INC_STATS_BH(i32 %131, i32 %132)
  store i32 0, i32* %8, align 4
  br label %201

134:                                              ; preds = %101
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %137 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %136, i32 0, i32 3
  %138 = load %struct.sk_buff*, %struct.sk_buff** %137, align 8
  %139 = icmp eq %struct.sk_buff* %135, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %142, i32 0, i32 3
  store %struct.sk_buff* %141, %struct.sk_buff** %143, align 8
  br label %144

144:                                              ; preds = %140, %134
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %147 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %146, i32 0, i32 2
  %148 = load %struct.sk_buff*, %struct.sk_buff** %147, align 8
  %149 = icmp eq %struct.sk_buff* %145, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %152 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %153 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %152, i32 0, i32 2
  store %struct.sk_buff* %151, %struct.sk_buff** %153, align 8
  br label %154

154:                                              ; preds = %150, %144
  %155 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %156 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %157 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %156, i32 0, i32 1
  %158 = load %struct.sk_buff*, %struct.sk_buff** %157, align 8
  %159 = icmp eq %struct.sk_buff* %155, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %154
  %161 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 1
  store %struct.sk_buff* %161, %struct.sk_buff** %163, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %165 = call i64 @tcp_skb_pcount(%struct.sk_buff* %164)
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %16, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = zext i32 %168 to i64
  %170 = sub nsw i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 8
  br label %172

172:                                              ; preds = %160, %154
  %173 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %174 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %178 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %177)
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %183 = load %struct.sock*, %struct.sock** %9, align 8
  %184 = call %struct.sk_buff* @tcp_highest_sack(%struct.sock* %183)
  %185 = icmp eq %struct.sk_buff* %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %172
  %187 = load %struct.sock*, %struct.sock** %9, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %189 = call i32 @tcp_advance_highest_sack(%struct.sock* %187, %struct.sk_buff* %188)
  br label %190

190:                                              ; preds = %186, %172
  %191 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %192 = load %struct.sock*, %struct.sock** %9, align 8
  %193 = call i32 @tcp_unlink_write_queue(%struct.sk_buff* %191, %struct.sock* %192)
  %194 = load %struct.sock*, %struct.sock** %9, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %196 = call i32 @sk_wmem_free_skb(%struct.sock* %194, %struct.sk_buff* %195)
  %197 = load %struct.sock*, %struct.sock** %9, align 8
  %198 = call i32 @sock_net(%struct.sock* %197)
  %199 = load i32, i32* @LINUX_MIB_SACKMERGED, align 4
  %200 = call i32 @NET_INC_STATS_BH(i32 %198, i32 %199)
  store i32 1, i32* %8, align 4
  br label %201

201:                                              ; preds = %190, %123
  %202 = load i32, i32* %8, align 4
  ret i32 %202
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_prev(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @tcp_sacktag_one(%struct.sk_buff*, %struct.sock*, %struct.tcp_sacktag_state*, i32, i32) #1

declare dso_local i64 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_highest_sack(%struct.sock*) #1

declare dso_local i32 @tcp_advance_highest_sack(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_unlink_write_queue(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @sk_wmem_free_skb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
