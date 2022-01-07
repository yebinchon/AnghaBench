; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-security.c_rxrpc_init_client_conn_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-security.c_rxrpc_init_client_conn_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.rxrpc_security*, i32, %struct.key* }
%struct.rxrpc_security = type { i32 (%struct.rxrpc_connection.0*)* }
%struct.rxrpc_connection.0 = type opaque
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rxrpc_key_token* }
%struct.rxrpc_key_token = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"{%d},{%x}\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_init_client_conn_security(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca %struct.rxrpc_key_token*, align 8
  %5 = alloca %struct.rxrpc_security*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  %8 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %8, i32 0, i32 2
  %10 = load %struct.key*, %struct.key** %9, align 8
  store %struct.key* %10, %struct.key** %6, align 8
  %11 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %12 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.key*, %struct.key** %6, align 8
  %15 = call i32 @key_serial(%struct.key* %14)
  %16 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load %struct.key*, %struct.key** %6, align 8
  %18 = icmp ne %struct.key* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

20:                                               ; preds = %1
  %21 = load %struct.key*, %struct.key** %6, align 8
  %22 = call i32 @key_validate(%struct.key* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %74

27:                                               ; preds = %20
  %28 = load %struct.key*, %struct.key** %6, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %30, align 8
  %32 = icmp ne %struct.rxrpc_key_token* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EKEYREJECTED, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %27
  %37 = load %struct.key*, %struct.key** %6, align 8
  %38 = getelementptr inbounds %struct.key, %struct.key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %39, align 8
  store %struct.rxrpc_key_token* %40, %struct.rxrpc_key_token** %4, align 8
  %41 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %4, align 8
  %42 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.rxrpc_security* @rxrpc_security_lookup(i32 %43)
  store %struct.rxrpc_security* %44, %struct.rxrpc_security** %5, align 8
  %45 = load %struct.rxrpc_security*, %struct.rxrpc_security** %5, align 8
  %46 = icmp ne %struct.rxrpc_security* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @EKEYREJECTED, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %74

50:                                               ; preds = %36
  %51 = load %struct.rxrpc_security*, %struct.rxrpc_security** %5, align 8
  %52 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %53 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %52, i32 0, i32 0
  store %struct.rxrpc_security* %51, %struct.rxrpc_security** %53, align 8
  %54 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %55 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %54, i32 0, i32 0
  %56 = load %struct.rxrpc_security*, %struct.rxrpc_security** %55, align 8
  %57 = getelementptr inbounds %struct.rxrpc_security, %struct.rxrpc_security* %56, i32 0, i32 0
  %58 = load i32 (%struct.rxrpc_connection.0*)*, i32 (%struct.rxrpc_connection.0*)** %57, align 8
  %59 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %60 = bitcast %struct.rxrpc_connection* %59 to %struct.rxrpc_connection.0*
  %61 = call i32 %58(%struct.rxrpc_connection.0* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %50
  %65 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %66 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %65, i32 0, i32 0
  %67 = load %struct.rxrpc_security*, %struct.rxrpc_security** %66, align 8
  %68 = call i32 @rxrpc_security_put(%struct.rxrpc_security* %67)
  %69 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %70 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %69, i32 0, i32 0
  store %struct.rxrpc_security* null, %struct.rxrpc_security** %70, align 8
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %50
  %73 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %64, %47, %33, %25, %19
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @key_validate(%struct.key*) #1

declare dso_local %struct.rxrpc_security* @rxrpc_security_lookup(i32) #1

declare dso_local i32 @rxrpc_security_put(%struct.rxrpc_security*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
