; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_client_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_client_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.rxrpc_sock = type { %struct.key*, i32 }
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rxrpc_transport = type { i32 }
%struct.msghdr = type { i64 }
%struct.rxrpc_conn_bundle = type { i64, i32, i32, i32 }
%struct.rxrpc_call = type { i64, i32, i32, i32 }
%struct.sockaddr_rxrpc = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CALL %d USR %lx ST %d on CONN %p\00", align 1
@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@RXRPC_CMD_SEND_ABORT = common dso_local global i32 0, align 4
@RXRPC_CMD_SEND_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RXRPC_CALL_CLIENT_SEND_REQUEST = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_client_sendmsg(%struct.kiocb* %0, %struct.rxrpc_sock* %1, %struct.rxrpc_transport* %2, %struct.msghdr* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.rxrpc_sock*, align 8
  %9 = alloca %struct.rxrpc_transport*, align 8
  %10 = alloca %struct.msghdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rxrpc_conn_bundle*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rxrpc_call*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.key*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sockaddr_rxrpc*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.rxrpc_sock* %1, %struct.rxrpc_sock** %8, align 8
  store %struct.rxrpc_transport* %2, %struct.rxrpc_transport** %9, align 8
  store %struct.msghdr* %3, %struct.msghdr** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %18, align 8
  %21 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %9, align 8
  %23 = icmp ne %struct.rxrpc_transport* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %8, align 8
  %27 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %28 = call i32 @rxrpc_sendmsg_cmsg(%struct.rxrpc_sock* %26, %struct.msghdr* %27, i64* %15, i32* %13, i64* %18, i32 0)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %19, align 4
  store i32 %32, i32* %6, align 4
  br label %177

33:                                               ; preds = %5
  store %struct.rxrpc_conn_bundle* null, %struct.rxrpc_conn_bundle** %12, align 8
  %34 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %9, align 8
  %35 = icmp ne %struct.rxrpc_transport* %34, null
  br i1 %35, label %36, label %82

36:                                               ; preds = %33
  %37 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %8, align 8
  %38 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %17, align 4
  %40 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.sockaddr_rxrpc*
  store %struct.sockaddr_rxrpc* %48, %struct.sockaddr_rxrpc** %20, align 8
  %49 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %20, align 8
  %50 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @htons(i32 %51)
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %44, %36
  %54 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %8, align 8
  %55 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %54, i32 0, i32 0
  %56 = load %struct.key*, %struct.key** %55, align 8
  store %struct.key* %56, %struct.key** %16, align 8
  %57 = load %struct.key*, %struct.key** %16, align 8
  %58 = icmp ne %struct.key* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %8, align 8
  %61 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %60, i32 0, i32 0
  %62 = load %struct.key*, %struct.key** %61, align 8
  %63 = getelementptr inbounds %struct.key, %struct.key* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  store %struct.key* null, %struct.key** %16, align 8
  br label %68

68:                                               ; preds = %67, %59, %53
  %69 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %8, align 8
  %70 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %9, align 8
  %71 = load %struct.key*, %struct.key** %16, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.rxrpc_conn_bundle* @rxrpc_get_bundle(%struct.rxrpc_sock* %69, %struct.rxrpc_transport* %70, %struct.key* %71, i32 %72, i32 %73)
  store %struct.rxrpc_conn_bundle* %74, %struct.rxrpc_conn_bundle** %12, align 8
  %75 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %12, align 8
  %76 = call i64 @IS_ERR(%struct.rxrpc_conn_bundle* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %12, align 8
  %80 = call i32 @PTR_ERR(%struct.rxrpc_conn_bundle* %79)
  store i32 %80, i32* %6, align 4
  br label %177

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %33
  %83 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %8, align 8
  %84 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %9, align 8
  %85 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %12, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %18, align 8
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.rxrpc_conn_bundle* @rxrpc_get_client_call(%struct.rxrpc_sock* %83, %struct.rxrpc_transport* %84, %struct.rxrpc_conn_bundle* %85, i64 %86, i32 %89, i32 %90)
  %92 = bitcast %struct.rxrpc_conn_bundle* %91 to %struct.rxrpc_call*
  store %struct.rxrpc_call* %92, %struct.rxrpc_call** %14, align 8
  %93 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %9, align 8
  %94 = icmp ne %struct.rxrpc_transport* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %9, align 8
  %97 = load %struct.rxrpc_conn_bundle*, %struct.rxrpc_conn_bundle** %12, align 8
  %98 = call i32 @rxrpc_put_bundle(%struct.rxrpc_transport* %96, %struct.rxrpc_conn_bundle* %97)
  br label %99

99:                                               ; preds = %95, %82
  %100 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %101 = bitcast %struct.rxrpc_call* %100 to %struct.rxrpc_conn_bundle*
  %102 = call i64 @IS_ERR(%struct.rxrpc_conn_bundle* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %106 = bitcast %struct.rxrpc_call* %105 to %struct.rxrpc_conn_bundle*
  %107 = call i32 @PTR_ERR(%struct.rxrpc_conn_bundle* %106)
  %108 = call i32 @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %110 = bitcast %struct.rxrpc_call* %109 to %struct.rxrpc_conn_bundle*
  %111 = call i32 @PTR_ERR(%struct.rxrpc_conn_bundle* %110)
  store i32 %111, i32* %6, align 4
  br label %177

112:                                              ; preds = %99
  %113 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %114 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %117 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %120 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %123 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %118, i64 %121, i32 %124)
  %126 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %127 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %130 = icmp sge i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %112
  %132 = load i32, i32* @ESHUTDOWN, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %19, align 4
  br label %170

134:                                              ; preds = %112
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @RXRPC_CMD_SEND_ABORT, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %140 = bitcast %struct.rxrpc_call* %139 to %struct.rxrpc_conn_bundle*
  %141 = load i64, i64* %18, align 8
  %142 = call i32 @rxrpc_send_abort(%struct.rxrpc_conn_bundle* %140, i64 %141)
  br label %169

143:                                              ; preds = %134
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @RXRPC_CMD_SEND_DATA, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %19, align 4
  br label %168

150:                                              ; preds = %143
  %151 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %152 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @RXRPC_CALL_CLIENT_SEND_REQUEST, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, i32* @EPROTO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %19, align 4
  br label %167

159:                                              ; preds = %150
  %160 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %161 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %8, align 8
  %162 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %163 = bitcast %struct.rxrpc_call* %162 to %struct.rxrpc_conn_bundle*
  %164 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %165 = load i64, i64* %11, align 8
  %166 = call i32 @rxrpc_send_data(%struct.kiocb* %160, %struct.rxrpc_sock* %161, %struct.rxrpc_conn_bundle* %163, %struct.msghdr* %164, i64 %165)
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %159, %156
  br label %168

168:                                              ; preds = %167, %147
  br label %169

169:                                              ; preds = %168, %138
  br label %170

170:                                              ; preds = %169, %131
  %171 = load %struct.rxrpc_call*, %struct.rxrpc_call** %14, align 8
  %172 = bitcast %struct.rxrpc_call* %171 to %struct.rxrpc_conn_bundle*
  %173 = call i32 @rxrpc_put_call(%struct.rxrpc_conn_bundle* %172)
  %174 = load i32, i32* %19, align 4
  %175 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %19, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %170, %104, %78, %31
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @rxrpc_sendmsg_cmsg(%struct.rxrpc_sock*, %struct.msghdr*, i64*, i32*, i64*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.rxrpc_conn_bundle* @rxrpc_get_bundle(%struct.rxrpc_sock*, %struct.rxrpc_transport*, %struct.key*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rxrpc_conn_bundle*) #1

declare dso_local i32 @PTR_ERR(%struct.rxrpc_conn_bundle*) #1

declare dso_local %struct.rxrpc_conn_bundle* @rxrpc_get_client_call(%struct.rxrpc_sock*, %struct.rxrpc_transport*, %struct.rxrpc_conn_bundle*, i64, i32, i32) #1

declare dso_local i32 @rxrpc_put_bundle(%struct.rxrpc_transport*, %struct.rxrpc_conn_bundle*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @_debug(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @rxrpc_send_abort(%struct.rxrpc_conn_bundle*, i64) #1

declare dso_local i32 @rxrpc_send_data(%struct.kiocb*, %struct.rxrpc_sock*, %struct.rxrpc_conn_bundle*, %struct.msghdr*, i64) #1

declare dso_local i32 @rxrpc_put_call(%struct.rxrpc_conn_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
