; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_send_message_vec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_send_message_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, i32, %struct.kvec* }
%struct.o2net_msg = type { i32, i32, %struct.o2net_msg* }
%struct.o2net_sock_container = type { i32, i32 }
%struct.o2net_node = type { i32 }
%struct.o2net_status_wait = type { i32, i32, i32, i32, i32 }
%struct.o2net_send_tracking = type { i32 }
%struct.iovec = type { i32 }

@current = common dso_local global i32 0, align 4
@o2net_wq = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"attempt to tx without o2netd running\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bad kvec array length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@O2NET_MAX_PAYLOAD_BYTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"total payload len %zu too large\0A\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to %zu element kvec!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate a o2net_msg!\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"sending returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"error returned from o2net_send_tcp_msg=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"woken, returning system status %d, user status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2net_send_message_vec(i32 %0, i32 %1, %struct.kvec* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.o2net_msg*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.kvec*, align 8
  %18 = alloca %struct.o2net_sock_container*, align 8
  %19 = alloca %struct.o2net_node*, align 8
  %20 = alloca %struct.o2net_status_wait, align 4
  %21 = alloca %struct.o2net_send_tracking, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.kvec* %2, %struct.kvec** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.o2net_msg* null, %struct.o2net_msg** %14, align 8
  store i64 0, i64* %16, align 8
  store %struct.kvec* null, %struct.kvec** %17, align 8
  store %struct.o2net_sock_container* null, %struct.o2net_sock_container** %18, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call %struct.o2net_node* @o2net_nn_from_num(i64 %22)
  store %struct.o2net_node* %23, %struct.o2net_node** %19, align 8
  %24 = bitcast %struct.o2net_status_wait* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 20, i1 false)
  %25 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 4
  %26 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @LIST_HEAD_INIT(i32 %27)
  store i32 %28, i32* %25, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @current, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @o2net_init_nst(%struct.o2net_send_tracking* %21, i32 %29, i32 %30, i32 %31, i64 %32)
  %34 = load i32*, i32** @o2net_wq, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ESRCH, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %13, align 4
  br label %191

40:                                               ; preds = %6
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %191

47:                                               ; preds = %40
  %48 = load %struct.kvec*, %struct.kvec** %9, align 8
  %49 = bitcast %struct.kvec* %48 to %struct.iovec*
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @iov_length(%struct.iovec* %49, i64 %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* @O2NET_MAX_PAYLOAD_BYTES, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i64, i64* %16, align 8
  %57 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %191

60:                                               ; preds = %47
  %61 = load i64, i64* %11, align 8
  %62 = call i64 (...) @o2nm_this_node()
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @ELOOP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %13, align 4
  br label %191

67:                                               ; preds = %60
  %68 = call i32 @o2net_debug_add_nst(%struct.o2net_send_tracking* %21)
  %69 = call i32 @o2net_set_nst_sock_time(%struct.o2net_send_tracking* %21)
  %70 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %71 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %74 = call i32 @o2net_tx_can_proceed(%struct.o2net_node* %73, %struct.o2net_sock_container** %18, i32* %13)
  %75 = call i32 @wait_event(i32 %72, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %191

79:                                               ; preds = %67
  %80 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %81 = call i32 @o2net_set_nst_sock_container(%struct.o2net_send_tracking* %21, %struct.o2net_sock_container* %80)
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %15, align 8
  %85 = mul i64 16, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call %struct.o2net_msg* @kmalloc(i32 %86, i32 %87)
  %89 = bitcast %struct.o2net_msg* %88 to %struct.kvec*
  store %struct.kvec* %89, %struct.kvec** %17, align 8
  %90 = load %struct.kvec*, %struct.kvec** %17, align 8
  %91 = icmp eq %struct.kvec* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load i64, i64* %15, align 8
  %94 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %13, align 4
  br label %191

97:                                               ; preds = %79
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call %struct.o2net_msg* @kmalloc(i32 16, i32 %98)
  store %struct.o2net_msg* %99, %struct.o2net_msg** %14, align 8
  %100 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %101 = icmp ne %struct.o2net_msg* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %191

106:                                              ; preds = %97
  %107 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @o2net_init_msg(%struct.o2net_msg* %107, i64 %108, i32 %109, i32 %110)
  %112 = load %struct.kvec*, %struct.kvec** %17, align 8
  %113 = getelementptr inbounds %struct.kvec, %struct.kvec* %112, i64 0
  %114 = getelementptr inbounds %struct.kvec, %struct.kvec* %113, i32 0, i32 0
  store i32 16, i32* %114, align 8
  %115 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %116 = bitcast %struct.o2net_msg* %115 to %struct.kvec*
  %117 = load %struct.kvec*, %struct.kvec** %17, align 8
  %118 = getelementptr inbounds %struct.kvec, %struct.kvec* %117, i64 0
  %119 = getelementptr inbounds %struct.kvec, %struct.kvec* %118, i32 0, i32 2
  store %struct.kvec* %116, %struct.kvec** %119, align 8
  %120 = load %struct.kvec*, %struct.kvec** %17, align 8
  %121 = getelementptr inbounds %struct.kvec, %struct.kvec* %120, i64 1
  %122 = bitcast %struct.kvec* %121 to %struct.o2net_msg*
  %123 = load %struct.kvec*, %struct.kvec** %9, align 8
  %124 = bitcast %struct.kvec* %123 to %struct.o2net_msg*
  %125 = load i64, i64* %10, align 8
  %126 = mul i64 %125, 16
  %127 = call i32 @memcpy(%struct.o2net_msg* %122, %struct.o2net_msg* %124, i64 %126)
  %128 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %129 = call i32 @o2net_prep_nsw(%struct.o2net_node* %128, %struct.o2net_status_wait* %20)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %106
  br label %191

133:                                              ; preds = %106
  %134 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cpu_to_be32(i32 %135)
  %137 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %138 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @o2net_set_nst_msg_id(%struct.o2net_send_tracking* %21, i32 %140)
  %142 = call i32 @o2net_set_nst_send_time(%struct.o2net_send_tracking* %21)
  %143 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %144 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %143, i32 0, i32 0
  %145 = call i32 @mutex_lock(i32* %144)
  %146 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %147 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.kvec*, %struct.kvec** %17, align 8
  %150 = bitcast %struct.kvec* %149 to %struct.o2net_msg*
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %16, align 8
  %153 = add i64 16, %152
  %154 = trunc i64 %153 to i32
  %155 = call i32 @o2net_send_tcp_msg(i32 %148, %struct.o2net_msg* %150, i64 %151, i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %157 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %156, i32 0, i32 0
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @msglog(%struct.o2net_msg* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %133
  %165 = load i32, i32* %13, align 4
  %166 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %165)
  br label %191

167:                                              ; preds = %133
  %168 = call i32 @o2net_set_nst_status_time(%struct.o2net_send_tracking* %21)
  %169 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %172 = call i32 @o2net_nsw_completed(%struct.o2net_node* %171, %struct.o2net_status_wait* %20)
  %173 = call i32 @wait_event(i32 %170, i32 %172)
  %174 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @o2net_sys_err_to_errno(i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %167
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %12, align 8
  store i32 %184, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %179, %167
  %187 = load i32, i32* %13, align 4
  %188 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %20, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %187, i32 %189)
  br label %191

191:                                              ; preds = %186, %164, %132, %102, %92, %78, %64, %55, %43, %36
  %192 = call i32 @o2net_debug_del_nst(%struct.o2net_send_tracking* %21)
  %193 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %194 = icmp ne %struct.o2net_sock_container* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %18, align 8
  %197 = call i32 @sc_put(%struct.o2net_sock_container* %196)
  br label %198

198:                                              ; preds = %195, %191
  %199 = load %struct.kvec*, %struct.kvec** %17, align 8
  %200 = icmp ne %struct.kvec* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load %struct.kvec*, %struct.kvec** %17, align 8
  %203 = bitcast %struct.kvec* %202 to %struct.o2net_msg*
  %204 = call i32 @kfree(%struct.o2net_msg* %203)
  br label %205

205:                                              ; preds = %201, %198
  %206 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %207 = icmp ne %struct.o2net_msg* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load %struct.o2net_msg*, %struct.o2net_msg** %14, align 8
  %210 = call i32 @kfree(%struct.o2net_msg* %209)
  br label %211

211:                                              ; preds = %208, %205
  %212 = load %struct.o2net_node*, %struct.o2net_node** %19, align 8
  %213 = call i32 @o2net_complete_nsw(%struct.o2net_node* %212, %struct.o2net_status_wait* %20, i32 0, i32 0, i32 0)
  %214 = load i32, i32* %13, align 4
  ret i32 %214
}

declare dso_local %struct.o2net_node* @o2net_nn_from_num(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local i32 @o2net_init_nst(%struct.o2net_send_tracking*, i32, i32, i32, i64) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i64 @o2nm_this_node(...) #1

declare dso_local i32 @o2net_debug_add_nst(%struct.o2net_send_tracking*) #1

declare dso_local i32 @o2net_set_nst_sock_time(%struct.o2net_send_tracking*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @o2net_tx_can_proceed(%struct.o2net_node*, %struct.o2net_sock_container**, i32*) #1

declare dso_local i32 @o2net_set_nst_sock_container(%struct.o2net_send_tracking*, %struct.o2net_sock_container*) #1

declare dso_local %struct.o2net_msg* @kmalloc(i32, i32) #1

declare dso_local i32 @o2net_init_msg(%struct.o2net_msg*, i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.o2net_msg*, %struct.o2net_msg*, i64) #1

declare dso_local i32 @o2net_prep_nsw(%struct.o2net_node*, %struct.o2net_status_wait*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @o2net_set_nst_msg_id(%struct.o2net_send_tracking*, i32) #1

declare dso_local i32 @o2net_set_nst_send_time(%struct.o2net_send_tracking*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @o2net_send_tcp_msg(i32, %struct.o2net_msg*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msglog(%struct.o2net_msg*, i8*, i32) #1

declare dso_local i32 @o2net_set_nst_status_time(%struct.o2net_send_tracking*) #1

declare dso_local i32 @o2net_nsw_completed(%struct.o2net_node*, %struct.o2net_status_wait*) #1

declare dso_local i32 @o2net_sys_err_to_errno(i32) #1

declare dso_local i32 @o2net_debug_del_nst(%struct.o2net_send_tracking*) #1

declare dso_local i32 @sc_put(%struct.o2net_sock_container*) #1

declare dso_local i32 @kfree(%struct.o2net_msg*) #1

declare dso_local i32 @o2net_complete_nsw(%struct.o2net_node*, %struct.o2net_status_wait*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
