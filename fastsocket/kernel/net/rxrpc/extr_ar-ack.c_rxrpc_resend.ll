; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_resend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i64*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rxrpc_skb_priv = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rxrpc_header = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"{%d,%d,%d,%d},\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Tx DATA %%%u { #%d }\00", align 1
@jiffies = common dso_local global i8* null, align 8
@rxrpc_resend_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_resend(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca %struct.rxrpc_skb_priv*, align 8
  %4 = alloca %struct.rxrpc_header*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %12 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %18 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %17, i32 0, i32 5
  %19 = call i32 @atomic_read(i32* %18)
  %20 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %21 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %24 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CIRC_CNT(i32 %22, i32 %25, i32 %28)
  %30 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %29)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %7, align 8
  %31 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %32 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %163, %1
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ true, %34 ], [ %42, %40 ]
  br i1 %44, label %45, label %171

45:                                               ; preds = %43
  %46 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %47 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64* %51, i64** %6, align 8
  %52 = call i32 (...) @smp_read_barrier_depends()
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, 1
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %163

58:                                               ; preds = %45
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.sk_buff*
  store %struct.sk_buff* %61, %struct.sk_buff** %5, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %62)
  store %struct.rxrpc_skb_priv* %63, %struct.rxrpc_skb_priv** %3, align 8
  %64 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %126

68:                                               ; preds = %58
  %69 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %72 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = call i32 @atomic_inc_return(i32* %74)
  %76 = call i32 @htonl(i32 %75)
  %77 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %78 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.rxrpc_header*
  store %struct.rxrpc_header* %83, %struct.rxrpc_header** %4, align 8
  %84 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %85 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rxrpc_header*, %struct.rxrpc_header** %4, align 8
  %89 = getelementptr inbounds %struct.rxrpc_header, %struct.rxrpc_header* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %91 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ntohl(i32 %93)
  %95 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %96 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ntohl(i32 %98)
  %100 = call i32 @_proto(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %99)
  %101 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %102 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %101, i32 0, i32 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i64 @rxrpc_send_packet(i32 %105, %struct.sk_buff* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %68
  store i32 0, i32* %9, align 4
  %110 = load i8*, i8** @jiffies, align 8
  %111 = getelementptr i8, i8* %110, i64 3
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %114 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %125

115:                                              ; preds = %68
  %116 = load i8*, i8** @jiffies, align 8
  %117 = load i32, i32* @rxrpc_resend_timeout, align 4
  %118 = load i32, i32* @HZ, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr i8, i8* %116, i64 %120
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %124 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %115, %109
  br label %126

126:                                              ; preds = %125, %58
  %127 = load i8*, i8** @jiffies, align 8
  %128 = getelementptr i8, i8* %127, i64 1
  %129 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %130 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @time_after_eq(i8* %128, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %136 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %162

139:                                              ; preds = %126
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, 2
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %145 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @time_before(i64 %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %152 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %7, align 8
  br label %154

154:                                              ; preds = %150, %143
  br label %161

155:                                              ; preds = %139
  %156 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %157 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %7, align 8
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, 2
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %155, %154
  br label %162

162:                                              ; preds = %161, %134
  br label %163

163:                                              ; preds = %162, %57
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  %166 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %167 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = and i32 %165, %169
  store i32 %170, i32* %8, align 4
  br label %34

171:                                              ; preds = %43
  %172 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i64, i64* %7, align 8
  %175 = call i32 @rxrpc_set_resend(%struct.rxrpc_call* %172, i32 %173, i64 %174)
  %176 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @smp_read_barrier_depends(...) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @_proto(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @rxrpc_send_packet(i32, %struct.sk_buff*) #1

declare dso_local i64 @time_after_eq(i8*, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @rxrpc_set_resend(%struct.rxrpc_call*, i32, i64) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
