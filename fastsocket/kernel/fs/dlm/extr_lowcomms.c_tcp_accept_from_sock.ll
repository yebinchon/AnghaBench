; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_tcp_accept_from_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_tcp_accept_from_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.connection = type { i32, i32, i32, i32, i8*, %struct.socket*, %struct.connection*, i32 }
%struct.socket = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { %struct.connection* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.socket*, i32)*, i64 (%struct.socket*, %struct.sockaddr*, i32*, i32)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@dlm_local_addr = common dso_local global %struct.TYPE_6__** null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"connect from non cluster node\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"got connection from %d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@con_cache = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to allocate incoming socket\00", align 1
@receive_from_sock = common dso_local global i8* null, align 8
@process_send_sockets = common dso_local global i32 0, align 4
@process_recv_sockets = common dso_local global i32 0, align 4
@CF_IS_OTHERCON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Extra connection from node %d attempted\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CF_READ_PENDING = common dso_local global i32 0, align 4
@recv_workqueue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"error accepting connection from node: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @tcp_accept_from_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_accept_from_sock(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca %struct.connection*, align 8
  %11 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %12 = call i32 @memset(%struct.sockaddr_storage* %5, i32 0, i32 4)
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @dlm_local_addr, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = load i32, i32* @IPPROTO_TCP, align 4
  %20 = call i32 @sock_create_kern(i32 %17, i32 %18, i32 %19, %struct.socket** %6)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %229

26:                                               ; preds = %1
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock_nested(i32* %28, i32 0)
  %30 = load i32, i32* @ENOTCONN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  %32 = load %struct.connection*, %struct.connection** %3, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 5
  %34 = load %struct.socket*, %struct.socket** %33, align 8
  %35 = icmp eq %struct.socket* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %214

37:                                               ; preds = %26
  %38 = load %struct.connection*, %struct.connection** %3, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 5
  %40 = load %struct.socket*, %struct.socket** %39, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.socket*, %struct.socket** %6, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.connection*, %struct.connection** %3, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 5
  %47 = load %struct.socket*, %struct.socket** %46, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.socket*, %struct.socket** %6, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 1
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %51, align 8
  %52 = load %struct.connection*, %struct.connection** %3, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 5
  %54 = load %struct.socket*, %struct.socket** %53, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.socket*, %struct.socket*, i32)*, i32 (%struct.socket*, %struct.socket*, i32)** %57, align 8
  %59 = load %struct.connection*, %struct.connection** %3, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 5
  %61 = load %struct.socket*, %struct.socket** %60, align 8
  %62 = load %struct.socket*, %struct.socket** %6, align 8
  %63 = load i32, i32* @O_NONBLOCK, align 4
  %64 = call i32 %58(%struct.socket* %61, %struct.socket* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %37
  br label %214

68:                                               ; preds = %37
  %69 = call i32 @memset(%struct.sockaddr_storage* %5, i32 0, i32 4)
  %70 = load %struct.socket*, %struct.socket** %6, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64 (%struct.socket*, %struct.sockaddr*, i32*, i32)*, i64 (%struct.socket*, %struct.sockaddr*, i32*, i32)** %73, align 8
  %75 = load %struct.socket*, %struct.socket** %6, align 8
  %76 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %77 = call i64 %74(%struct.socket* %75, %struct.sockaddr* %76, i32* %7, i32 2)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* @ECONNABORTED, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %214

82:                                               ; preds = %68
  %83 = call i32 @make_sockaddr(%struct.sockaddr_storage* %5, i32 0, i32* %7)
  %84 = call i64 @addr_to_nodeid(%struct.sockaddr_storage* %5, i32* %8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.socket*, %struct.socket** %6, align 8
  %89 = call i32 @sock_release(%struct.socket* %88)
  %90 = load %struct.connection*, %struct.connection** %3, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  store i32 -1, i32* %2, align 4
  br label %229

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @GFP_NOFS, align 4
  %98 = call %struct.connection* @nodeid2con(i32 %96, i32 %97)
  store %struct.connection* %98, %struct.connection** %9, align 8
  %99 = load %struct.connection*, %struct.connection** %9, align 8
  %100 = icmp ne %struct.connection* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %214

104:                                              ; preds = %93
  %105 = load %struct.connection*, %struct.connection** %9, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 1
  %107 = call i32 @mutex_lock_nested(i32* %106, i32 1)
  %108 = load %struct.connection*, %struct.connection** %9, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 5
  %110 = load %struct.socket*, %struct.socket** %109, align 8
  %111 = icmp ne %struct.socket* %110, null
  br i1 %111, label %112, label %183

112:                                              ; preds = %104
  %113 = load %struct.connection*, %struct.connection** %9, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 6
  %115 = load %struct.connection*, %struct.connection** %114, align 8
  store %struct.connection* %115, %struct.connection** %11, align 8
  %116 = load %struct.connection*, %struct.connection** %11, align 8
  %117 = icmp ne %struct.connection* %116, null
  br i1 %117, label %153, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @con_cache, align 4
  %120 = load i32, i32* @GFP_NOFS, align 4
  %121 = call %struct.connection* @kmem_cache_zalloc(i32 %119, i32 %120)
  store %struct.connection* %121, %struct.connection** %11, align 8
  %122 = load %struct.connection*, %struct.connection** %11, align 8
  %123 = icmp ne %struct.connection* %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.connection*, %struct.connection** %9, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 1
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %214

131:                                              ; preds = %118
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.connection*, %struct.connection** %11, align 8
  %134 = getelementptr inbounds %struct.connection, %struct.connection* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i8*, i8** @receive_from_sock, align 8
  %136 = load %struct.connection*, %struct.connection** %11, align 8
  %137 = getelementptr inbounds %struct.connection, %struct.connection* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load %struct.connection*, %struct.connection** %11, align 8
  %139 = getelementptr inbounds %struct.connection, %struct.connection* %138, i32 0, i32 1
  %140 = call i32 @mutex_init(i32* %139)
  %141 = load %struct.connection*, %struct.connection** %11, align 8
  %142 = getelementptr inbounds %struct.connection, %struct.connection* %141, i32 0, i32 7
  %143 = load i32, i32* @process_send_sockets, align 4
  %144 = call i32 @INIT_WORK(i32* %142, i32 %143)
  %145 = load %struct.connection*, %struct.connection** %11, align 8
  %146 = getelementptr inbounds %struct.connection, %struct.connection* %145, i32 0, i32 2
  %147 = load i32, i32* @process_recv_sockets, align 4
  %148 = call i32 @INIT_WORK(i32* %146, i32 %147)
  %149 = load i32, i32* @CF_IS_OTHERCON, align 4
  %150 = load %struct.connection*, %struct.connection** %11, align 8
  %151 = getelementptr inbounds %struct.connection, %struct.connection* %150, i32 0, i32 3
  %152 = call i32 @set_bit(i32 %149, i32* %151)
  br label %153

153:                                              ; preds = %131, %112
  %154 = load %struct.connection*, %struct.connection** %11, align 8
  %155 = getelementptr inbounds %struct.connection, %struct.connection* %154, i32 0, i32 5
  %156 = load %struct.socket*, %struct.socket** %155, align 8
  %157 = icmp ne %struct.socket* %156, null
  br i1 %157, label %174, label %158

158:                                              ; preds = %153
  %159 = load %struct.connection*, %struct.connection** %11, align 8
  %160 = load %struct.connection*, %struct.connection** %9, align 8
  %161 = getelementptr inbounds %struct.connection, %struct.connection* %160, i32 0, i32 6
  store %struct.connection* %159, %struct.connection** %161, align 8
  %162 = load %struct.socket*, %struct.socket** %6, align 8
  %163 = load %struct.connection*, %struct.connection** %11, align 8
  %164 = getelementptr inbounds %struct.connection, %struct.connection* %163, i32 0, i32 5
  store %struct.socket* %162, %struct.socket** %164, align 8
  %165 = load %struct.connection*, %struct.connection** %11, align 8
  %166 = load %struct.socket*, %struct.socket** %6, align 8
  %167 = getelementptr inbounds %struct.socket, %struct.socket* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store %struct.connection* %165, %struct.connection** %169, align 8
  %170 = load %struct.socket*, %struct.socket** %6, align 8
  %171 = load %struct.connection*, %struct.connection** %11, align 8
  %172 = call i32 @add_sock(%struct.socket* %170, %struct.connection* %171)
  %173 = load %struct.connection*, %struct.connection** %11, align 8
  store %struct.connection* %173, %struct.connection** %10, align 8
  br label %182

174:                                              ; preds = %153
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @EAGAIN, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  %179 = load %struct.connection*, %struct.connection** %9, align 8
  %180 = getelementptr inbounds %struct.connection, %struct.connection* %179, i32 0, i32 1
  %181 = call i32 @mutex_unlock(i32* %180)
  br label %214

182:                                              ; preds = %158
  br label %196

183:                                              ; preds = %104
  %184 = load %struct.connection*, %struct.connection** %9, align 8
  %185 = load %struct.socket*, %struct.socket** %6, align 8
  %186 = getelementptr inbounds %struct.socket, %struct.socket* %185, i32 0, i32 0
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store %struct.connection* %184, %struct.connection** %188, align 8
  %189 = load i8*, i8** @receive_from_sock, align 8
  %190 = load %struct.connection*, %struct.connection** %9, align 8
  %191 = getelementptr inbounds %struct.connection, %struct.connection* %190, i32 0, i32 4
  store i8* %189, i8** %191, align 8
  %192 = load %struct.socket*, %struct.socket** %6, align 8
  %193 = load %struct.connection*, %struct.connection** %9, align 8
  %194 = call i32 @add_sock(%struct.socket* %192, %struct.connection* %193)
  %195 = load %struct.connection*, %struct.connection** %9, align 8
  store %struct.connection* %195, %struct.connection** %10, align 8
  br label %196

196:                                              ; preds = %183, %182
  %197 = load %struct.connection*, %struct.connection** %9, align 8
  %198 = getelementptr inbounds %struct.connection, %struct.connection* %197, i32 0, i32 1
  %199 = call i32 @mutex_unlock(i32* %198)
  %200 = load i32, i32* @CF_READ_PENDING, align 4
  %201 = load %struct.connection*, %struct.connection** %10, align 8
  %202 = getelementptr inbounds %struct.connection, %struct.connection* %201, i32 0, i32 3
  %203 = call i32 @test_and_set_bit(i32 %200, i32* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %196
  %206 = load i32, i32* @recv_workqueue, align 4
  %207 = load %struct.connection*, %struct.connection** %10, align 8
  %208 = getelementptr inbounds %struct.connection, %struct.connection* %207, i32 0, i32 2
  %209 = call i32 @queue_work(i32 %206, i32* %208)
  br label %210

210:                                              ; preds = %205, %196
  %211 = load %struct.connection*, %struct.connection** %3, align 8
  %212 = getelementptr inbounds %struct.connection, %struct.connection* %211, i32 0, i32 1
  %213 = call i32 @mutex_unlock(i32* %212)
  store i32 0, i32* %2, align 4
  br label %229

214:                                              ; preds = %174, %124, %101, %79, %67, %36
  %215 = load %struct.connection*, %struct.connection** %3, align 8
  %216 = getelementptr inbounds %struct.connection, %struct.connection* %215, i32 0, i32 1
  %217 = call i32 @mutex_unlock(i32* %216)
  %218 = load %struct.socket*, %struct.socket** %6, align 8
  %219 = call i32 @sock_release(%struct.socket* %218)
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @EAGAIN, align 4
  %222 = sub nsw i32 0, %221
  %223 = icmp ne i32 %220, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %214
  %225 = load i32, i32* %4, align 4
  %226 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %224, %214
  %228 = load i32, i32* %4, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %227, %210, %86, %23
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @make_sockaddr(%struct.sockaddr_storage*, i32, i32*) #1

declare dso_local i64 @addr_to_nodeid(%struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @log_print(i8*, ...) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.connection* @nodeid2con(i32, i32) #1

declare dso_local %struct.connection* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @add_sock(%struct.socket*, %struct.connection*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
