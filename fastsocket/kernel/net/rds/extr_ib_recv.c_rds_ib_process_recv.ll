; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_process_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_process_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_recv_work = type { %struct.TYPE_5__*, %struct.rds_ib_incoming* }
%struct.TYPE_5__ = type { i32 }
%struct.rds_ib_incoming = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.rds_header }
%struct.rds_header = type { i64, i64, i64, i64, i32, i64, i64 }
%struct.rds_connection = type { i32, i32, %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { %struct.rds_ib_incoming*, %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work*, %struct.rds_header* }
%struct.rds_ib_ack_state = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"ic %p ibinc %p recv %p byte len %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"incoming message from %pI4 didn't include a header, disconnecting and reconnecting\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"incoming message from %pI4 has corrupted header - forcing a reconnect\0A\00", align 1
@s_recv_drop_bad_checksum = common dso_local global i32 0, align 4
@s_ib_ack_received = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"ic %p ibinc %p rem %u flag 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"fragment header mismatch; forcing reconnect\0A\00", align 1
@RDS_FRAG_SIZE = common dso_local global %struct.rds_ib_recv_work* null, align 8
@RDS_FLAG_CONG_BITMAP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@KM_SOFTIRQ0 = common dso_local global i32 0, align 4
@RDS_FLAG_ACK_REQUIRED = common dso_local global i32 0, align 4
@s_recv_ack_required = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_connection*, %struct.rds_ib_recv_work*, i32, %struct.rds_ib_ack_state*)* @rds_ib_process_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_process_recv(%struct.rds_connection* %0, %struct.rds_ib_recv_work* %1, i32 %2, %struct.rds_ib_ack_state* %3) #0 {
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.rds_ib_recv_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rds_ib_ack_state*, align 8
  %9 = alloca %struct.rds_ib_connection*, align 8
  %10 = alloca %struct.rds_ib_incoming*, align 8
  %11 = alloca %struct.rds_header*, align 8
  %12 = alloca %struct.rds_header*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %5, align 8
  store %struct.rds_ib_recv_work* %1, %struct.rds_ib_recv_work** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rds_ib_ack_state* %3, %struct.rds_ib_ack_state** %8, align 8
  %13 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %14 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %13, i32 0, i32 2
  %15 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %14, align 8
  store %struct.rds_ib_connection* %15, %struct.rds_ib_connection** %9, align 8
  %16 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %17 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %16, i32 0, i32 0
  %18 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %17, align 8
  store %struct.rds_ib_incoming* %18, %struct.rds_ib_incoming** %10, align 8
  %19 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %20 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %21 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @rdsdebug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.rds_ib_connection* %19, %struct.rds_ib_incoming* %20, %struct.rds_ib_recv_work* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 56
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %29 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %30 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %29, i32 0, i32 1
  %31 = call i32 (%struct.rds_connection*, i8*, ...) @rds_ib_conn_error(%struct.rds_connection* %28, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  br label %252

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 56
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %38 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %37, i32 0, i32 3
  %39 = load %struct.rds_header*, %struct.rds_header** %38, align 8
  %40 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %41 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %42 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %41, i32 0, i32 2
  %43 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %42, align 8
  %44 = ptrtoint %struct.rds_ib_recv_work* %40 to i64
  %45 = ptrtoint %struct.rds_ib_recv_work* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 16
  %48 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %39, i64 %47
  store %struct.rds_header* %48, %struct.rds_header** %11, align 8
  %49 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %50 = call i32 @rds_message_verify_checksum(%struct.rds_header* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %32
  %53 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %54 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %55 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %54, i32 0, i32 1
  %56 = call i32 (%struct.rds_connection*, i8*, ...) @rds_ib_conn_error(%struct.rds_connection* %53, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  %57 = load i32, i32* @s_recv_drop_bad_checksum, align 4
  %58 = call i32 @rds_stats_inc(i32 %57)
  br label %252

59:                                               ; preds = %32
  %60 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %61 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @be64_to_cpu(i64 %62)
  %64 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %65 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %67 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %69 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %74 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %75 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @rds_ib_send_add_credits(%struct.rds_connection* %73, i64 %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %80 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %85 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* @s_ib_ack_received, align 4
  %93 = call i32 @rds_ib_stats_inc(i32 %92)
  %94 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %95 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %96 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = call i32 @rds_ib_frag_free(%struct.rds_ib_connection* %94, %struct.TYPE_5__* %97)
  %99 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %100 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %99, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %100, align 8
  br label %252

101:                                              ; preds = %88, %83, %78
  %102 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %103 = icmp ne %struct.rds_ib_incoming* %102, null
  br i1 %103, label %134, label %104

104:                                              ; preds = %101
  %105 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %106 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %105, i32 0, i32 1
  %107 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %106, align 8
  store %struct.rds_ib_incoming* %107, %struct.rds_ib_incoming** %10, align 8
  %108 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %109 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %108, i32 0, i32 1
  store %struct.rds_ib_incoming* null, %struct.rds_ib_incoming** %109, align 8
  %110 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %111 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %112 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %111, i32 0, i32 0
  store %struct.rds_ib_incoming* %110, %struct.rds_ib_incoming** %112, align 8
  %113 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %114 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store %struct.rds_header* %115, %struct.rds_header** %12, align 8
  %116 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %117 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %118 = call i32 @memcpy(%struct.rds_header* %116, %struct.rds_header* %117, i32 56)
  %119 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %120 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.rds_ib_recv_work* @be32_to_cpu(i64 %121)
  %123 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %124 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %123, i32 0, i32 1
  store %struct.rds_ib_recv_work* %122, %struct.rds_ib_recv_work** %124, align 8
  %125 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %126 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %127 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %128 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %127, i32 0, i32 1
  %129 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %128, align 8
  %130 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %131 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @rdsdebug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.rds_ib_connection* %125, %struct.rds_ib_incoming* %126, %struct.rds_ib_recv_work* %129, i32 %132)
  br label %173

134:                                              ; preds = %101
  %135 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %136 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store %struct.rds_header* %137, %struct.rds_header** %12, align 8
  %138 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %139 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %142 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %169, label %145

145:                                              ; preds = %134
  %146 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %147 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %150 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %148, %151
  br i1 %152, label %169, label %153

153:                                              ; preds = %145
  %154 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %155 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %158 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %156, %159
  br i1 %160, label %169, label %161

161:                                              ; preds = %153
  %162 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %163 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %166 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %164, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %161, %153, %145, %134
  %170 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %171 = call i32 (%struct.rds_connection*, i8*, ...) @rds_ib_conn_error(%struct.rds_connection* %170, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %252

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172, %104
  %174 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %175 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %174, i32 0, i32 0
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %179 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %178, i32 0, i32 1
  %180 = call i32 @list_add_tail(i32* %177, i32* %179)
  %181 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %182 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %181, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %182, align 8
  %183 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %184 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %183, i32 0, i32 1
  %185 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %184, align 8
  %186 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** @RDS_FRAG_SIZE, align 8
  %187 = icmp ugt %struct.rds_ib_recv_work* %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %173
  %189 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** @RDS_FRAG_SIZE, align 8
  %190 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %191 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %190, i32 0, i32 1
  %192 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %191, align 8
  %193 = ptrtoint %struct.rds_ib_recv_work* %192 to i64
  %194 = ptrtoint %struct.rds_ib_recv_work* %189 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 16
  %197 = inttoptr i64 %196 to %struct.rds_ib_recv_work*
  store %struct.rds_ib_recv_work* %197, %struct.rds_ib_recv_work** %191, align 8
  br label %252

198:                                              ; preds = %173
  %199 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %200 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %199, i32 0, i32 1
  store %struct.rds_ib_recv_work* null, %struct.rds_ib_recv_work** %200, align 8
  %201 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %202 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %201, i32 0, i32 0
  store %struct.rds_ib_incoming* null, %struct.rds_ib_incoming** %202, align 8
  %203 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %204 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* @RDS_FLAG_CONG_BITMAP, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %198
  %212 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %213 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %214 = call i32 @rds_ib_cong_recv(%struct.rds_connection* %212, %struct.rds_ib_incoming* %213)
  br label %236

215:                                              ; preds = %198
  %216 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %217 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %218 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %221 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %224 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %223, i32 0, i32 0
  %225 = load i32, i32* @GFP_ATOMIC, align 4
  %226 = load i32, i32* @KM_SOFTIRQ0, align 4
  %227 = call i32 @rds_recv_incoming(%struct.rds_connection* %216, i32 %219, i32 %222, %struct.TYPE_4__* %224, i32 %225, i32 %226)
  %228 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %229 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = call i8* @be64_to_cpu(i64 %230)
  %232 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %233 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  %234 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %235 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %234, i32 0, i32 1
  store i32 1, i32* %235, align 4
  br label %236

236:                                              ; preds = %215, %211
  %237 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %238 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @RDS_FLAG_ACK_REQUIRED, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load i32, i32* @s_recv_ack_required, align 4
  %245 = call i32 @rds_stats_inc(i32 %244)
  %246 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %247 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %246, i32 0, i32 2
  store i32 1, i32* %247, align 8
  br label %248

248:                                              ; preds = %243, %236
  %249 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %250 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %249, i32 0, i32 0
  %251 = call i32 @rds_inc_put(%struct.TYPE_4__* %250)
  br label %252

252:                                              ; preds = %27, %52, %91, %169, %248, %188
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_ib_connection*, %struct.rds_ib_incoming*, %struct.rds_ib_recv_work*, i32) #1

declare dso_local i32 @rds_ib_conn_error(%struct.rds_connection*, i8*, ...) #1

declare dso_local i32 @rds_message_verify_checksum(%struct.rds_header*) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i8* @be64_to_cpu(i64) #1

declare dso_local i32 @rds_ib_send_add_credits(%struct.rds_connection*, i64) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i32 @rds_ib_frag_free(%struct.rds_ib_connection*, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(%struct.rds_header*, %struct.rds_header*, i32) #1

declare dso_local %struct.rds_ib_recv_work* @be32_to_cpu(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rds_ib_cong_recv(%struct.rds_connection*, %struct.rds_ib_incoming*) #1

declare dso_local i32 @rds_recv_incoming(%struct.rds_connection*, i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @rds_inc_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
