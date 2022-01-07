; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-connection.c_rxrpc_cmp_bundle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-connection.c_rxrpc_cmp_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_conn_bundle = type { i64, i64 }
%struct.key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_conn_bundle*, %struct.key*, i64)* @rxrpc_cmp_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_cmp_bundle(%struct.rxrpc_conn_bundle* %0, %struct.key* %1, i64 %2) #0 {
  %4 = alloca %struct.rxrpc_conn_bundle*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i64, align 8
  store %struct.rxrpc_conn_bundle* %0, %struct.rxrpc_conn_bundle** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %4, align 8
  %8 = getelementptr inbounds %struct.rxrpc_conn_bundle, %struct.rxrpc_conn_bundle* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = sub nsw i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %21

14:                                               ; preds = %3
  %15 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %4, align 8
  %16 = getelementptr inbounds %struct.rxrpc_conn_bundle, %struct.rxrpc_conn_bundle* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.key*, %struct.key** %5, align 8
  %19 = ptrtoint %struct.key* %18 to i64
  %20 = sub i64 %17, %19
  br label %21

21:                                               ; preds = %14, %13
  %22 = phi i64 [ %11, %13 ], [ %20, %14 ]
  %23 = trunc i64 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
