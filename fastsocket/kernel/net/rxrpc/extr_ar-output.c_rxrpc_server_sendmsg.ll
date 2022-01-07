; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_server_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_server_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.rxrpc_sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.rxrpc_call = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXRPC_CMD_ACCEPT = common dso_local global i32 0, align 4
@EBADSLT = common dso_local global i32 0, align 4
@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@RXRPC_CALL_CLIENT_SEND_REQUEST = common dso_local global i64 0, align 8
@RXRPC_CALL_SERVER_ACK_REQUEST = common dso_local global i64 0, align 8
@RXRPC_CALL_SERVER_SEND_REPLY = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_server_sendmsg(%struct.kiocb* %0, %struct.rxrpc_sock* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.rxrpc_sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxrpc_call*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.rxrpc_sock* %1, %struct.rxrpc_sock** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %15 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %7, align 8
  %17 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %18 = call i32 @rxrpc_sendmsg_cmsg(%struct.rxrpc_sock* %16, %struct.msghdr* %17, i64* %12, i32* %10, i32* %13, i32 1)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %5, align 4
  br label %101

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @RXRPC_CMD_ACCEPT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %7, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call %struct.rxrpc_call* @rxrpc_accept_call(%struct.rxrpc_sock* %28, i64 %29)
  store %struct.rxrpc_call* %30, %struct.rxrpc_call** %11, align 8
  %31 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %32 = call i64 @IS_ERR(%struct.rxrpc_call* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %36 = call i32 @PTR_ERR(%struct.rxrpc_call* %35)
  store i32 %36, i32* %5, align 4
  br label %101

37:                                               ; preds = %27
  %38 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %39 = call i32 @rxrpc_put_call(%struct.rxrpc_call* %38)
  store i32 0, i32* %5, align 4
  br label %101

40:                                               ; preds = %23
  %41 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call %struct.rxrpc_call* @rxrpc_find_server_call(%struct.rxrpc_sock* %41, i64 %42)
  store %struct.rxrpc_call* %43, %struct.rxrpc_call** %11, align 8
  %44 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %45 = icmp ne %struct.rxrpc_call* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EBADSLT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %101

49:                                               ; preds = %40
  %50 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %51 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @ESHUTDOWN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %14, align 4
  br label %95

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %92 [
    i32 128, label %60
    i32 129, label %88
  ]

60:                                               ; preds = %58
  %61 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %62 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RXRPC_CALL_CLIENT_SEND_REQUEST, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %68 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RXRPC_CALL_SERVER_ACK_REQUEST, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %74 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RXRPC_CALL_SERVER_SEND_REPLY, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EPROTO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %14, align 4
  br label %94

81:                                               ; preds = %72, %66, %60
  %82 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %83 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %7, align 8
  %84 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %85 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @rxrpc_send_data(%struct.kiocb* %82, %struct.rxrpc_sock* %83, %struct.rxrpc_call* %84, %struct.msghdr* %85, i64 %86)
  store i32 %87, i32* %14, align 4
  br label %94

88:                                               ; preds = %58
  %89 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @rxrpc_send_abort(%struct.rxrpc_call* %89, i32 %90)
  br label %94

92:                                               ; preds = %58
  %93 = call i32 (...) @BUG()
  br label %94

94:                                               ; preds = %92, %88, %81, %78
  br label %95

95:                                               ; preds = %94, %55
  %96 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %97 = call i32 @rxrpc_put_call(%struct.rxrpc_call* %96)
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %95, %46, %37, %34, %21
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @rxrpc_sendmsg_cmsg(%struct.rxrpc_sock*, %struct.msghdr*, i64*, i32*, i32*, i32) #1

declare dso_local %struct.rxrpc_call* @rxrpc_accept_call(%struct.rxrpc_sock*, i64) #1

declare dso_local i64 @IS_ERR(%struct.rxrpc_call*) #1

declare dso_local i32 @PTR_ERR(%struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_put_call(%struct.rxrpc_call*) #1

declare dso_local %struct.rxrpc_call* @rxrpc_find_server_call(%struct.rxrpc_sock*, i64) #1

declare dso_local i32 @rxrpc_send_data(%struct.kiocb*, %struct.rxrpc_sock*, %struct.rxrpc_call*, %struct.msghdr*, i64) #1

declare dso_local i32 @rxrpc_send_abort(%struct.rxrpc_call*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
