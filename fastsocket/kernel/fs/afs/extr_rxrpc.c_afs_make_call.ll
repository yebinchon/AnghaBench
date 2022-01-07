; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_make_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_make_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.afs_call = type { %struct.TYPE_6__*, %struct.rxrpc_call*, i64, i32, i32, i32, i32*, i32, i32, i32, %struct.afs_wait_mode* }
%struct.TYPE_6__ = type { i32 (%struct.afs_call*)*, i32* }
%struct.rxrpc_call = type { i32 }
%struct.afs_wait_mode = type { i32 (%struct.afs_call.0*)* }
%struct.afs_call.0 = type opaque
%struct.sockaddr_rxrpc = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.msghdr = type { i32, i32, i64, i32*, %struct.iovec*, i64, i32* }
%struct.iovec = type { i32 }
%struct.kvec = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%x,{%d},\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"____MAKE %p{%s,%x} [%d]____\00", align 1
@afs_outstanding_calls = common dso_local global i32 0, align 4
@afs_process_async_call = common dso_local global i32 0, align 4
@AF_RXRPC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@afs_socket = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@AFS_CALL_AWAIT_REPLY = common dso_local global i32 0, align 4
@RX_USER_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_make_call(%struct.in_addr* %0, %struct.afs_call* %1, i32 %2, %struct.afs_wait_mode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.afs_call*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.afs_wait_mode*, align 8
  %10 = alloca %struct.sockaddr_rxrpc, align 4
  %11 = alloca %struct.rxrpc_call*, align 8
  %12 = alloca %struct.msghdr, align 8
  %13 = alloca [1 x %struct.kvec], align 4
  %14 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %6, align 8
  store %struct.afs_call* %1, %struct.afs_call** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.afs_wait_mode* %3, %struct.afs_wait_mode** %9, align 8
  %15 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ntohs(i32 %20)
  %22 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %24 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %38 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %39 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @key_serial(i32* %45)
  %47 = call i32 @atomic_read(i32* @afs_outstanding_calls)
  %48 = call i32 @_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.afs_call* %37, i32* %42, i32 %46, i32 %47)
  %49 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %9, align 8
  %50 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 10
  store %struct.afs_wait_mode* %49, %struct.afs_wait_mode** %51, align 8
  %52 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 9
  %54 = load i32, i32* @afs_process_async_call, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = call i32 @memset(%struct.sockaddr_rxrpc* %10, i32 0, i32 28)
  %57 = load i32, i32* @AF_RXRPC, align 4
  %58 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %10, i32 0, i32 4
  store i32 %57, i32* %58, align 4
  %59 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %60 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %10, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @SOCK_DGRAM, align 4
  %64 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %10, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %10, i32 0, i32 0
  store i32 12, i32* %65, align 4
  %66 = load i32, i32* @AF_INET, align 4
  %67 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %10, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %71 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %10, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %10, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %80 = call i32 @memcpy(i32* %78, %struct.in_addr* %79, i32 4)
  %81 = load i32, i32* @afs_socket, align 4
  %82 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %83 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %86 = ptrtoint %struct.afs_call* %85 to i64
  %87 = load i32, i32* %8, align 4
  %88 = call %struct.rxrpc_call* @rxrpc_kernel_begin_call(i32 %81, %struct.sockaddr_rxrpc* %10, i32* %84, i64 %86, i32 %87)
  store %struct.rxrpc_call* %88, %struct.rxrpc_call** %11, align 8
  %89 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %90 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %89, i32 0, i32 6
  store i32* null, i32** %90, align 8
  %91 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %92 = call i64 @IS_ERR(%struct.rxrpc_call* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %4
  %95 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %96 = call i32 @PTR_ERR(%struct.rxrpc_call* %95)
  store i32 %96, i32* %14, align 4
  br label %174

97:                                               ; preds = %4
  %98 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %99 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %100 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %99, i32 0, i32 1
  store %struct.rxrpc_call* %98, %struct.rxrpc_call** %100, align 8
  %101 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %102 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %13, i64 0, i64 0
  %105 = getelementptr inbounds %struct.kvec, %struct.kvec* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %107 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %13, i64 0, i64 0
  %110 = getelementptr inbounds %struct.kvec, %struct.kvec* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 6
  store i32* null, i32** %111, align 8
  %112 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 5
  store i64 0, i64* %112, align 8
  %113 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %13, i64 0, i64 0
  %114 = bitcast %struct.kvec* %113 to %struct.iovec*
  %115 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 4
  store %struct.iovec* %114, %struct.iovec** %115, align 8
  %116 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 3
  store i32* null, i32** %117, align 8
  %118 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %120 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %97
  %124 = load i32, i32* @MSG_MORE, align 4
  br label %126

125:                                              ; preds = %97
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %130 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @AFS_CALL_AWAIT_REPLY, align 4
  %135 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %136 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %126
  %138 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %139 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %140 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @rxrpc_kernel_send_data(%struct.rxrpc_call* %138, %struct.msghdr* %12, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %166

146:                                              ; preds = %137
  %147 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %148 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %153 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %13, i64 0, i64 0
  %154 = call i32 @afs_send_pages(%struct.afs_call* %152, %struct.msghdr* %12, %struct.kvec* %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %166

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %146
  %160 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %9, align 8
  %161 = getelementptr inbounds %struct.afs_wait_mode, %struct.afs_wait_mode* %160, i32 0, i32 0
  %162 = load i32 (%struct.afs_call.0*)*, i32 (%struct.afs_call.0*)** %161, align 8
  %163 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %164 = bitcast %struct.afs_call* %163 to %struct.afs_call.0*
  %165 = call i32 %162(%struct.afs_call.0* %164)
  store i32 %165, i32* %5, align 4
  br label %187

166:                                              ; preds = %157, %145
  %167 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %168 = load i32, i32* @RX_USER_ABORT, align 4
  %169 = call i32 @rxrpc_kernel_abort_call(%struct.rxrpc_call* %167, i32 %168)
  %170 = load %struct.rxrpc_call*, %struct.rxrpc_call** %11, align 8
  %171 = call i32 @rxrpc_kernel_end_call(%struct.rxrpc_call* %170)
  %172 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %173 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %172, i32 0, i32 1
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %173, align 8
  br label %174

174:                                              ; preds = %166, %94
  %175 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %176 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32 (%struct.afs_call*)*, i32 (%struct.afs_call*)** %178, align 8
  %180 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %181 = call i32 %179(%struct.afs_call* %180)
  %182 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %183 = call i32 @afs_free_call(%struct.afs_call* %182)
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %174, %159
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @_debug(i8*, %struct.afs_call*, i32*, i32, i32) #1

declare dso_local i32 @key_serial(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_rxrpc*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.in_addr*, i32) #1

declare dso_local %struct.rxrpc_call* @rxrpc_kernel_begin_call(i32, %struct.sockaddr_rxrpc*, i32*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.rxrpc_call*) #1

declare dso_local i32 @PTR_ERR(%struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_kernel_send_data(%struct.rxrpc_call*, %struct.msghdr*, i32) #1

declare dso_local i32 @afs_send_pages(%struct.afs_call*, %struct.msghdr*, %struct.kvec*) #1

declare dso_local i32 @rxrpc_kernel_abort_call(%struct.rxrpc_call*, i32) #1

declare dso_local i32 @rxrpc_kernel_end_call(%struct.rxrpc_call*) #1

declare dso_local i32 @afs_free_call(%struct.afs_call*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
