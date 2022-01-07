; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_resend_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-ack.c_rxrpc_resend_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i64*, i32 }
%struct.rxrpc_skb_priv = type { i32, i64 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d,%d,%d\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*)* @rxrpc_resend_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_resend_timer(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.rxrpc_call*, align 8
  %3 = alloca %struct.rxrpc_skb_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %2, align 8
  %9 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %10 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  store i32 0, i32* %8, align 4
  store i64 0, i64* %6, align 8
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %20 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %92, %1
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %100

28:                                               ; preds = %22
  %29 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %30 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64* %34, i64** %5, align 8
  %35 = call i32 (...) @smp_read_barrier_depends()
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, -2
  %39 = inttoptr i64 %38 to %struct.sk_buff*
  store %struct.sk_buff* %39, %struct.sk_buff** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %40)
  store %struct.rxrpc_skb_priv* %41, %struct.rxrpc_skb_priv** %3, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, 1
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %28
  br label %91

54:                                               ; preds = %28
  %55 = load i64, i64* @jiffies, align 8
  %56 = add nsw i64 %55, 1
  %57 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @time_after_eq(i64 %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %90

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %73 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @time_before(i64 %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %78, %71
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %3, align 8
  %85 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, 2
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %83, %82
  br label %90

90:                                               ; preds = %89, %62
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %96 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %94, %98
  store i32 %99, i32* %7, align 4
  br label %22

100:                                              ; preds = %22
  %101 = load %struct.rxrpc_call*, %struct.rxrpc_call** %2, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @rxrpc_set_resend(%struct.rxrpc_call* %101, i32 %102, i64 %103)
  %105 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @smp_read_barrier_depends(...) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @rxrpc_set_resend(%struct.rxrpc_call*, i32, i64) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
