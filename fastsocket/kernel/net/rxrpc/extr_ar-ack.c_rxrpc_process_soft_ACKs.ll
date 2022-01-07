; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_process_soft_ACKs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_process_soft_ACKs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i64*, i32, i32 }
%struct.rxrpc_ackpacket = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { i32, i64 }

@RXRPC_MAXACKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"{%d,%d},{%d},\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported ACK type %d\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" = -EPROTO\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.rxrpc_ackpacket*, %struct.sk_buff*)* @rxrpc_process_soft_ACKs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_process_soft_ACKs(%struct.rxrpc_call* %0, %struct.rxrpc_ackpacket* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca %struct.rxrpc_ackpacket*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rxrpc_skb_priv*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %5, align 8
  store %struct.rxrpc_ackpacket* %1, %struct.rxrpc_ackpacket** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* @RXRPC_MAXACKS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %28 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @CIRC_CNT(i32 %26, i32 %29, i32 %32)
  %34 = load %struct.rxrpc_ackpacket*, %struct.rxrpc_ackpacket** %6, align 8
  %35 = getelementptr inbounds %struct.rxrpc_ackpacket, %struct.rxrpc_ackpacket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %33, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load %struct.rxrpc_ackpacket*, %struct.rxrpc_ackpacket** %6, align 8
  %40 = getelementptr inbounds %struct.rxrpc_ackpacket, %struct.rxrpc_ackpacket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @skb_copy_bits(%struct.sk_buff* %38, i32 0, i32* %20, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %210

45:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %99, %45
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.rxrpc_ackpacket*, %struct.rxrpc_ackpacket** %6, align 8
  %49 = getelementptr inbounds %struct.rxrpc_ackpacket, %struct.rxrpc_ackpacket* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %46
  %53 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %54 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  store i64* %55, i64** %10, align 8
  %56 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %57 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %62 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %60, %64
  %66 = load i64*, i64** %10, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64* %68, i64** %10, align 8
  %69 = call i32 (...) @smp_read_barrier_depends()
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = and i64 %71, -2
  %73 = inttoptr i64 %72 to %struct.sk_buff*
  store %struct.sk_buff* %73, %struct.sk_buff** %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %74)
  store %struct.rxrpc_skb_priv* %75, %struct.rxrpc_skb_priv** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %20, i64 %77
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %92 [
    i32 129, label %80
    i32 128, label %86
  ]

80:                                               ; preds = %52
  %81 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %82 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %84, 1
  store i64 %85, i64* %83, align 8
  br label %98

86:                                               ; preds = %52
  %87 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %88 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = load i64, i64* %89, align 8
  %91 = and i64 %90, -2
  store i64 %91, i64* %89, align 8
  store i32 1, i32* %15, align 4
  br label %98

92:                                               ; preds = %52
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %20, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %210

98:                                               ; preds = %86, %80
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %46

102:                                              ; preds = %46
  %103 = call i32 (...) @smp_mb()
  %104 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %105 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %106, %107
  %109 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %110 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %108, %112
  %114 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %115 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %117 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %196, %102
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %122 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %204

125:                                              ; preds = %119
  %126 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %127 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %126, i32 0, i32 3
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64* %131, i64** %10, align 8
  %132 = call i32 (...) @smp_read_barrier_depends()
  %133 = load i64*, i64** %10, align 8
  %134 = load i64, i64* %133, align 8
  %135 = and i64 %134, -2
  %136 = inttoptr i64 %135 to %struct.sk_buff*
  store %struct.sk_buff* %136, %struct.sk_buff** %9, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %138 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %137)
  store %struct.rxrpc_skb_priv* %138, %struct.rxrpc_skb_priv** %8, align 8
  %139 = load i64*, i64** %10, align 8
  %140 = load i64, i64* %139, align 8
  %141 = and i64 %140, 1
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %125
  %144 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %145 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load i64*, i64** %10, align 8
  %147 = load i64, i64* %146, align 8
  %148 = and i64 %147, -2
  store i64 %148, i64* %146, align 8
  %149 = load i32, i32* %15, align 4
  %150 = or i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %195

151:                                              ; preds = %125
  %152 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %153 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %194

157:                                              ; preds = %151
  %158 = load i64, i64* @jiffies, align 8
  %159 = add nsw i64 %158, 1
  %160 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %161 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @time_after_eq(i64 %159, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %167 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  %168 = load i32, i32* %15, align 4
  %169 = or i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %193

170:                                              ; preds = %157
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, 2
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %176 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %11, align 8
  %179 = call i64 @time_before(i64 %177, i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %183 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %11, align 8
  br label %185

185:                                              ; preds = %181, %174
  br label %192

186:                                              ; preds = %170
  %187 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %188 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %11, align 8
  %190 = load i32, i32* %15, align 4
  %191 = or i32 %190, 2
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %186, %185
  br label %193

193:                                              ; preds = %192, %165
  br label %194

194:                                              ; preds = %193, %156
  br label %195

195:                                              ; preds = %194, %143
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  %199 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %200 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %201, 1
  %203 = and i32 %198, %202
  store i32 %203, i32* %12, align 4
  br label %119

204:                                              ; preds = %119
  %205 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %206 = load i32, i32* %15, align 4
  %207 = load i64, i64* %11, align 8
  %208 = call i32 @rxrpc_set_resend(%struct.rxrpc_call* %205, i32 %206, i64 %207)
  %209 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %214

210:                                              ; preds = %92, %44
  %211 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %212 = load i32, i32* @EPROTO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %214

214:                                              ; preds = %210, %204
  %215 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #2

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #2

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #2

declare dso_local i32 @smp_read_barrier_depends(...) #2

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #2

declare dso_local i32 @_debug(i8*, i32) #2

declare dso_local i32 @smp_mb(...) #2

declare dso_local i64 @time_after_eq(i64, i64) #2

declare dso_local i64 @time_before(i64, i64) #2

declare dso_local i32 @rxrpc_set_resend(%struct.rxrpc_call*, i32, i64) #2

declare dso_local i32 @_leave(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
