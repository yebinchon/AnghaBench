; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-security.c_rxrpc_secure_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-security.c_rxrpc_secure_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_secure_packet(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxrpc_call*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %11 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %18 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.rxrpc_call*, %struct.sk_buff*, i64, i8*)**
  %24 = load i32 (%struct.rxrpc_call*, %struct.sk_buff*, i64, i8*)*, i32 (%struct.rxrpc_call*, %struct.sk_buff*, i64, i8*)** %23, align 8
  %25 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 %24(%struct.rxrpc_call* %25, %struct.sk_buff* %26, i64 %27, i8* %28)
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
