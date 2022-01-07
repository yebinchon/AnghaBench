; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_process_sctp_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_process_sctp_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32 }
%struct.msghdr = type { i32 }
%union.sctp_notification = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.sctp_prim = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@SCTP_ASSOC_CHANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"COMM_UP for invalid assoc ID %d\00", align 1
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_PRIMARY_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"getsockopt/sctp_primary_addr on new assoc %d failed : %d\00", align 1
@CF_CONNECT_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"reject connect from unknown addr\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@SCTP_SOCKOPT_PEELOFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"Can't peel off a socket for connection %d to node %d: err=%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"sockfd_lookup error %d\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"connecting to %d sctp association %d\00", align 1
@CF_INIT_PENDING = common dso_local global i32 0, align 4
@CF_WRITE_PENDING = common dso_local global i32 0, align 4
@send_workqueue = common dso_local global i32 0, align 4
@CF_READ_PENDING = common dso_local global i32 0, align 4
@recv_workqueue = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Can't start SCTP association - retrying\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"unexpected SCTP assoc change id=%d state=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, %struct.msghdr*, i8*)* @process_sctp_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_sctp_notification(%struct.connection* %0, %struct.msghdr* %1, i8* %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.sctp_notification*, align 8
  %8 = alloca %struct.sctp_prim, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.connection*, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %union.sctp_notification*
  store %union.sctp_notification* %20, %union.sctp_notification** %7, align 8
  %21 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %22 = bitcast %union.sctp_notification* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCTP_ASSOC_CHANGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %229

27:                                               ; preds = %3
  %28 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %29 = bitcast %union.sctp_notification* %28 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %217 [
    i32 130, label %32
    i32 129, label %32
    i32 131, label %202
    i32 128, label %202
    i32 132, label %214
  ]

32:                                               ; preds = %27, %27
  store i32 16, i32* %15, align 4
  %33 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %34 = bitcast %union.sctp_notification* %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %41 = bitcast %union.sctp_notification* %40 to %struct.TYPE_5__*
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 (...) @sctp_init_failed()
  br label %229

47:                                               ; preds = %32
  %48 = call i32 @memset(%struct.sctp_prim* %8, i32 0, i32 16)
  store i32 16, i32* %10, align 4
  %49 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %50 = bitcast %union.sctp_notification* %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sctp_prim, %struct.sctp_prim* %8, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = load %struct.connection*, %struct.connection** %4, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IPPROTO_SCTP, align 4
  %58 = load i32, i32* @SCTP_PRIMARY_ADDR, align 4
  %59 = bitcast %struct.sctp_prim* %8 to i8*
  %60 = call i32 @kernel_getsockopt(i32 %56, i32 %57, i32 %58, i8* %59, i32* %10)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %47
  %64 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %65 = bitcast %union.sctp_notification* %64 to %struct.TYPE_5__*
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %72 = bitcast %union.sctp_notification* %71 to %struct.TYPE_5__*
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.connection* @assoc2con(i64 %74)
  store %struct.connection* %75, %struct.connection** %13, align 8
  %76 = load %struct.connection*, %struct.connection** %13, align 8
  %77 = icmp ne %struct.connection* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load i32, i32* @CF_CONNECT_PENDING, align 4
  %80 = load %struct.connection*, %struct.connection** %4, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 2
  %82 = call i32 @clear_bit(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %78, %63
  br label %229

84:                                               ; preds = %47
  %85 = getelementptr inbounds %struct.sctp_prim, %struct.sctp_prim* %8, i32 0, i32 1
  %86 = call i32 @make_sockaddr(i32* %85, i32 0, i32* %12)
  %87 = getelementptr inbounds %struct.sctp_prim, %struct.sctp_prim* %8, i32 0, i32 1
  %88 = call i32 @addr_to_nodeid(i32* %87, i32* %9)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.sctp_prim, %struct.sctp_prim* %8, i32 0, i32 1
  %92 = bitcast i32* %91 to i8*
  store i8* %92, i8** %18, align 8
  %93 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %106, %90
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %96, 4
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i8*, i8** %18, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %94

109:                                              ; preds = %94
  %110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %111 = getelementptr inbounds %struct.sctp_prim, %struct.sctp_prim* %8, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @sctp_send_shutdown(i64 %112)
  br label %229

114:                                              ; preds = %84
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @GFP_NOFS, align 4
  %117 = call %struct.connection* @nodeid2con(i32 %115, i32 %116)
  store %struct.connection* %117, %struct.connection** %13, align 8
  %118 = load %struct.connection*, %struct.connection** %13, align 8
  %119 = icmp ne %struct.connection* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %229

121:                                              ; preds = %114
  %122 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %123 = bitcast %union.sctp_notification* %122 to %struct.TYPE_5__*
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i64 %125, i64* %126, align 8
  %127 = load %struct.connection*, %struct.connection** %4, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IPPROTO_SCTP, align 4
  %131 = load i32, i32* @SCTP_SOCKOPT_PEELOFF, align 4
  %132 = bitcast %struct.TYPE_6__* %14 to i8*
  %133 = call i32 @kernel_getsockopt(i32 %129, i32 %130, i32 %131, i8* %132, i32* %15)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %121
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %138, i32 %139, i32 %140)
  br label %229

142:                                              ; preds = %121
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @sockfd_lookup(i32 %144, i32* %16)
  %146 = load %struct.connection*, %struct.connection** %13, align 8
  %147 = getelementptr inbounds %struct.connection, %struct.connection* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load %struct.connection*, %struct.connection** %13, align 8
  %149 = getelementptr inbounds %struct.connection, %struct.connection* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %142
  %153 = load i32, i32* %16, align 4
  %154 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  br label %229

155:                                              ; preds = %142
  %156 = load %struct.connection*, %struct.connection** %13, align 8
  %157 = getelementptr inbounds %struct.connection, %struct.connection* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.connection*, %struct.connection** %13, align 8
  %160 = call i32 @add_sock(i32 %158, %struct.connection* %159)
  %161 = load %struct.connection*, %struct.connection** %13, align 8
  %162 = getelementptr inbounds %struct.connection, %struct.connection* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @sockfd_put(i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %167 = bitcast %union.sctp_notification* %166 to %struct.TYPE_5__*
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %165, i32 %170)
  %172 = load i32, i32* @CF_CONNECT_PENDING, align 4
  %173 = load %struct.connection*, %struct.connection** %13, align 8
  %174 = getelementptr inbounds %struct.connection, %struct.connection* %173, i32 0, i32 2
  %175 = call i32 @clear_bit(i32 %172, i32* %174)
  %176 = load i32, i32* @CF_INIT_PENDING, align 4
  %177 = load %struct.connection*, %struct.connection** %4, align 8
  %178 = getelementptr inbounds %struct.connection, %struct.connection* %177, i32 0, i32 2
  %179 = call i32 @clear_bit(i32 %176, i32* %178)
  %180 = load i32, i32* @CF_WRITE_PENDING, align 4
  %181 = load %struct.connection*, %struct.connection** %13, align 8
  %182 = getelementptr inbounds %struct.connection, %struct.connection* %181, i32 0, i32 2
  %183 = call i32 @test_and_set_bit(i32 %180, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %155
  %186 = load i32, i32* @send_workqueue, align 4
  %187 = load %struct.connection*, %struct.connection** %13, align 8
  %188 = getelementptr inbounds %struct.connection, %struct.connection* %187, i32 0, i32 3
  %189 = call i32 @queue_work(i32 %186, i32* %188)
  br label %190

190:                                              ; preds = %185, %155
  %191 = load i32, i32* @CF_READ_PENDING, align 4
  %192 = load %struct.connection*, %struct.connection** %13, align 8
  %193 = getelementptr inbounds %struct.connection, %struct.connection* %192, i32 0, i32 2
  %194 = call i32 @test_and_set_bit(i32 %191, i32* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %190
  %197 = load i32, i32* @recv_workqueue, align 4
  %198 = load %struct.connection*, %struct.connection** %13, align 8
  %199 = getelementptr inbounds %struct.connection, %struct.connection* %198, i32 0, i32 1
  %200 = call i32 @queue_work(i32 %197, i32* %199)
  br label %201

201:                                              ; preds = %196, %190
  br label %228

202:                                              ; preds = %27, %27
  %203 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %204 = bitcast %union.sctp_notification* %203 to %struct.TYPE_5__*
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call %struct.connection* @assoc2con(i64 %206)
  store %struct.connection* %207, %struct.connection** %4, align 8
  %208 = load %struct.connection*, %struct.connection** %4, align 8
  %209 = icmp ne %struct.connection* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %202
  %211 = load %struct.connection*, %struct.connection** %4, align 8
  %212 = getelementptr inbounds %struct.connection, %struct.connection* %211, i32 0, i32 0
  store i32 0, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %202
  br label %228

214:                                              ; preds = %27
  %215 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %216 = call i32 (...) @sctp_init_failed()
  br label %228

217:                                              ; preds = %27
  %218 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %219 = bitcast %union.sctp_notification* %218 to %struct.TYPE_5__*
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %union.sctp_notification*, %union.sctp_notification** %7, align 8
  %224 = bitcast %union.sctp_notification* %223 to %struct.TYPE_5__*
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %222, i32 %226)
  br label %228

228:                                              ; preds = %217, %214, %213, %201
  br label %229

229:                                              ; preds = %39, %83, %109, %120, %136, %152, %228, %3
  ret void
}

declare dso_local i32 @log_print(i8*, ...) #1

declare dso_local i32 @sctp_init_failed(...) #1

declare dso_local i32 @memset(%struct.sctp_prim*, i32, i32) #1

declare dso_local i32 @kernel_getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.connection* @assoc2con(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @make_sockaddr(i32*, i32, i32*) #1

declare dso_local i32 @addr_to_nodeid(i32*, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @sctp_send_shutdown(i64) #1

declare dso_local %struct.connection* @nodeid2con(i32, i32) #1

declare dso_local i32 @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @add_sock(i32, %struct.connection*) #1

declare dso_local i32 @sockfd_put(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
