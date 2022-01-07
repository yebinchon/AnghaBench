; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-security.c_rxrpc_clear_conn_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-security.c_rxrpc_clear_conn_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rxrpc_connection*)* }

@.str = private unnamed_addr constant [5 x i8] c"{%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_clear_conn_security(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %3 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %4 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %8 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %13 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.rxrpc_connection*)*, i32 (%struct.rxrpc_connection*)** %15, align 8
  %17 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %18 = call i32 %16(%struct.rxrpc_connection* %17)
  %19 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %20 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @rxrpc_security_put(%struct.TYPE_2__* %21)
  %23 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %24 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %23, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %24, align 8
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %27 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @key_put(i32 %28)
  %30 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %31 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @key_put(i32 %32)
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @rxrpc_security_put(%struct.TYPE_2__*) #1

declare dso_local i32 @key_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
