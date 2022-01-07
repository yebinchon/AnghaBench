; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, i64*, i32, %struct.sk_buff*, %struct.TYPE_2__, i32, %struct.sk_buff*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@tipc_own_addr = common dso_local global i32 0, align 4
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"TIPC: Congestion, throwing away\0A\00", align 1
@CONN_MANAGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Resetting link <%s>, send queue full\00", align 1
@CHANGEOVER_PROTOCOL = common dso_local global i64 0, align 8
@MSG_FRAGMENTER = common dso_local global i64 0, align 8
@MSG_BUNDLER = common dso_local global i32 0, align 4
@OPEN_MSG = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_send_buf(%struct.link* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.tipc_msg, align 4
  store %struct.link* %0, %struct.link** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %15)
  store %struct.tipc_msg* %16, %struct.tipc_msg** %6, align 8
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %18 = call i64 @msg_size(%struct.tipc_msg* %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %20 = call i64 @msg_data_sz(%struct.tipc_msg* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.link*, %struct.link** %4, align 8
  %22 = getelementptr inbounds %struct.link, %struct.link* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %25 = call i64 @msg_tot_importance(%struct.tipc_msg* %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.link*, %struct.link** %4, align 8
  %27 = getelementptr inbounds %struct.link, %struct.link* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load %struct.link*, %struct.link** %4, align 8
  %33 = call i64 @link_max_pkt(%struct.link* %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %35 = load i32, i32* @tipc_own_addr, align 4
  %36 = call i32 @msg_set_prevnode(%struct.tipc_msg* %34, i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp uge i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %2
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @TIPC_CRITICAL_IMPORTANCE, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.link*, %struct.link** %4, align 8
  %49 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %50 = call i32 @msg_origport(%struct.tipc_msg* %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @link_schedule_port(%struct.link* %48, i32 %50, i64 %51)
  store i32 %52, i32* %3, align 4
  br label %233

53:                                               ; preds = %43
  %54 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %55 = call i32 @msg_dbg(%struct.tipc_msg* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @buf_discard(%struct.sk_buff* %56)
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @CONN_MANAGER, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.link*, %struct.link** %4, align 8
  %63 = getelementptr inbounds %struct.link, %struct.link* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.link*, %struct.link** %4, align 8
  %67 = call i32 @tipc_link_reset(%struct.link* %66)
  br label %68

68:                                               ; preds = %61, %53
  %69 = load i64, i64* %8, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %233

71:                                               ; preds = %2
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.link*, %struct.link** %4, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @tipc_link_send_long_buf(%struct.link* %76, %struct.sk_buff* %77)
  store i32 %78, i32* %3, align 4
  br label %233

79:                                               ; preds = %71
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.link*, %struct.link** %4, align 8
  %82 = getelementptr inbounds %struct.link, %struct.link* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ugt i64 %80, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.link*, %struct.link** %4, align 8
  %89 = getelementptr inbounds %struct.link, %struct.link* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.link*, %struct.link** %4, align 8
  %93 = getelementptr inbounds %struct.link, %struct.link* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.link*, %struct.link** %4, align 8
  %96 = call i32 @tipc_bearer_congested(i32 %94, %struct.link* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = load %struct.link*, %struct.link** %4, align 8
  %100 = call i32 @link_congested(%struct.link* %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %98, %91
  %104 = phi i1 [ false, %91 ], [ %102, %98 ]
  %105 = zext i1 %104 to i32
  %106 = call i64 @likely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %142

108:                                              ; preds = %103
  %109 = load %struct.link*, %struct.link** %4, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %112 = call i32 @link_add_to_outqueue(%struct.link* %109, %struct.sk_buff* %110, %struct.tipc_msg* %111)
  %113 = load %struct.link*, %struct.link** %4, align 8
  %114 = getelementptr inbounds %struct.link, %struct.link* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = load %struct.link*, %struct.link** %4, align 8
  %118 = getelementptr inbounds %struct.link, %struct.link* %117, i32 0, i32 8
  %119 = call i32 @tipc_bearer_send(i32 %115, %struct.sk_buff* %116, i32* %118)
  %120 = call i64 @likely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %108
  %123 = load %struct.link*, %struct.link** %4, align 8
  %124 = getelementptr inbounds %struct.link, %struct.link* %123, i32 0, i32 7
  store i64 0, i64* %124, align 8
  br label %139

125:                                              ; preds = %108
  %126 = load %struct.link*, %struct.link** %4, align 8
  %127 = getelementptr inbounds %struct.link, %struct.link* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.link*, %struct.link** %4, align 8
  %130 = call i32 @tipc_bearer_schedule(i32 %128, %struct.link* %129)
  %131 = load %struct.link*, %struct.link** %4, align 8
  %132 = getelementptr inbounds %struct.link, %struct.link* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = load %struct.link*, %struct.link** %4, align 8
  %138 = getelementptr inbounds %struct.link, %struct.link* %137, i32 0, i32 3
  store %struct.sk_buff* %136, %struct.sk_buff** %138, align 8
  br label %139

139:                                              ; preds = %125, %122
  %140 = load i64, i64* %8, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %3, align 4
  br label %233

142:                                              ; preds = %103
  %143 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %144 = call i64 @msg_user(%struct.tipc_msg* %143)
  %145 = load i64, i64* @CHANGEOVER_PROTOCOL, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %212

147:                                              ; preds = %142
  %148 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %149 = call i64 @msg_user(%struct.tipc_msg* %148)
  %150 = load i64, i64* @MSG_FRAGMENTER, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %212

152:                                              ; preds = %147
  %153 = load %struct.link*, %struct.link** %4, align 8
  %154 = getelementptr inbounds %struct.link, %struct.link* %153, i32 0, i32 3
  %155 = load %struct.sk_buff*, %struct.sk_buff** %154, align 8
  %156 = icmp ne %struct.sk_buff* %155, null
  br i1 %156, label %157, label %173

157:                                              ; preds = %152
  %158 = load %struct.link*, %struct.link** %4, align 8
  %159 = load %struct.link*, %struct.link** %4, align 8
  %160 = getelementptr inbounds %struct.link, %struct.link* %159, i32 0, i32 6
  %161 = load %struct.sk_buff*, %struct.sk_buff** %160, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = call i64 @link_bundle_buf(%struct.link* %158, %struct.sk_buff* %161, %struct.sk_buff* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = load %struct.link*, %struct.link** %4, align 8
  %167 = getelementptr inbounds %struct.link, %struct.link* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.link*, %struct.link** %4, align 8
  %170 = call i32 @tipc_bearer_resolve_congestion(i32 %168, %struct.link* %169)
  %171 = load i64, i64* %8, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %3, align 4
  br label %233

173:                                              ; preds = %157, %152
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %12, align 8
  %176 = mul i64 %175, 2
  %177 = udiv i64 %176, 3
  %178 = icmp ule i64 %174, %177
  br i1 %178, label %179, label %211

179:                                              ; preds = %173
  %180 = load i64, i64* %12, align 8
  %181 = call %struct.sk_buff* @buf_acquire(i64 %180)
  store %struct.sk_buff* %181, %struct.sk_buff** %13, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = icmp ne %struct.sk_buff* %182, null
  br i1 %183, label %184, label %210

184:                                              ; preds = %179
  %185 = load i32, i32* @MSG_BUNDLER, align 4
  %186 = load i32, i32* @OPEN_MSG, align 4
  %187 = load i32, i32* @INT_H_SIZE, align 4
  %188 = load %struct.link*, %struct.link** %4, align 8
  %189 = getelementptr inbounds %struct.link, %struct.link* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @msg_init(%struct.tipc_msg* %14, i32 %185, i32 %186, i32 %187, i32 %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %193 = load i32, i32* @INT_H_SIZE, align 4
  %194 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %192, %struct.tipc_msg* %14, i32 %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %196 = load i32, i32* @INT_H_SIZE, align 4
  %197 = call i32 @skb_trim(%struct.sk_buff* %195, i32 %196)
  %198 = load %struct.link*, %struct.link** %4, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %201 = call i64 @link_bundle_buf(%struct.link* %198, %struct.sk_buff* %199, %struct.sk_buff* %200)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %202, %struct.sk_buff** %5, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %203)
  store %struct.tipc_msg* %204, %struct.tipc_msg** %6, align 8
  %205 = load %struct.link*, %struct.link** %4, align 8
  %206 = getelementptr inbounds %struct.link, %struct.link* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %184, %179
  br label %211

211:                                              ; preds = %210, %173
  br label %212

212:                                              ; preds = %211, %147, %142
  %213 = load %struct.link*, %struct.link** %4, align 8
  %214 = getelementptr inbounds %struct.link, %struct.link* %213, i32 0, i32 3
  %215 = load %struct.sk_buff*, %struct.sk_buff** %214, align 8
  %216 = icmp ne %struct.sk_buff* %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %212
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = load %struct.link*, %struct.link** %4, align 8
  %220 = getelementptr inbounds %struct.link, %struct.link* %219, i32 0, i32 3
  store %struct.sk_buff* %218, %struct.sk_buff** %220, align 8
  br label %221

221:                                              ; preds = %217, %212
  %222 = load %struct.link*, %struct.link** %4, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %224 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %225 = call i32 @link_add_to_outqueue(%struct.link* %222, %struct.sk_buff* %223, %struct.tipc_msg* %224)
  %226 = load %struct.link*, %struct.link** %4, align 8
  %227 = getelementptr inbounds %struct.link, %struct.link* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.link*, %struct.link** %4, align 8
  %230 = call i32 @tipc_bearer_resolve_congestion(i32 %228, %struct.link* %229)
  %231 = load i64, i64* %8, align 8
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %221, %165, %139, %75, %68, %47
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i64 @msg_tot_importance(%struct.tipc_msg*) #1

declare dso_local i64 @link_max_pkt(%struct.link*) #1

declare dso_local i32 @msg_set_prevnode(%struct.tipc_msg*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @link_schedule_port(%struct.link*, i32, i64) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @tipc_link_reset(%struct.link*) #1

declare dso_local i32 @tipc_link_send_long_buf(%struct.link*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tipc_bearer_congested(i32, %struct.link*) #1

declare dso_local i32 @link_congested(%struct.link*) #1

declare dso_local i32 @link_add_to_outqueue(%struct.link*, %struct.sk_buff*, %struct.tipc_msg*) #1

declare dso_local i32 @tipc_bearer_send(i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @tipc_bearer_schedule(i32, %struct.link*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @link_bundle_buf(%struct.link*, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_bearer_resolve_congestion(i32, %struct.link*) #1

declare dso_local %struct.sk_buff* @buf_acquire(i64) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
