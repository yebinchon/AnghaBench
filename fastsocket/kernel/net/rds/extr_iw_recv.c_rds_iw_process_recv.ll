; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_process_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_process_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_recv_work = type { %struct.TYPE_5__*, %struct.rds_iw_incoming* }
%struct.TYPE_5__ = type { i32 }
%struct.rds_iw_incoming = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.rds_header }
%struct.rds_header = type { i64, i64, i64, i64, i32, i64, i64 }
%struct.rds_connection = type { i32, i32, %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { %struct.rds_iw_incoming*, %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work*, %struct.rds_header* }
%struct.rds_iw_ack_state = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"ic %p iwinc %p recv %p byte len %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"incoming message from %pI4 didn't include a header, disconnecting and reconnecting\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"incoming message from %pI4 has corrupted header - forcing a reconnect\0A\00", align 1
@s_recv_drop_bad_checksum = common dso_local global i32 0, align 4
@s_iw_ack_received = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"ic %p iwinc %p rem %u flag 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"fragment header mismatch; forcing reconnect\0A\00", align 1
@RDS_FRAG_SIZE = common dso_local global %struct.rds_iw_recv_work* null, align 8
@RDS_FLAG_CONG_BITMAP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@KM_SOFTIRQ0 = common dso_local global i32 0, align 4
@RDS_FLAG_ACK_REQUIRED = common dso_local global i32 0, align 4
@s_recv_ack_required = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_connection*, %struct.rds_iw_recv_work*, i32, %struct.rds_iw_ack_state*)* @rds_iw_process_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_process_recv(%struct.rds_connection* %0, %struct.rds_iw_recv_work* %1, i32 %2, %struct.rds_iw_ack_state* %3) #0 {
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.rds_iw_recv_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rds_iw_ack_state*, align 8
  %9 = alloca %struct.rds_iw_connection*, align 8
  %10 = alloca %struct.rds_iw_incoming*, align 8
  %11 = alloca %struct.rds_header*, align 8
  %12 = alloca %struct.rds_header*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %5, align 8
  store %struct.rds_iw_recv_work* %1, %struct.rds_iw_recv_work** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rds_iw_ack_state* %3, %struct.rds_iw_ack_state** %8, align 8
  %13 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %14 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %13, i32 0, i32 2
  %15 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %14, align 8
  store %struct.rds_iw_connection* %15, %struct.rds_iw_connection** %9, align 8
  %16 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %17 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %16, i32 0, i32 0
  %18 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %17, align 8
  store %struct.rds_iw_incoming* %18, %struct.rds_iw_incoming** %10, align 8
  %19 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %20 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %21 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @rdsdebug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.rds_iw_connection* %19, %struct.rds_iw_incoming* %20, %struct.rds_iw_recv_work* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 56
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %29 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %30 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %29, i32 0, i32 1
  %31 = call i32 (%struct.rds_connection*, i8*, ...) @rds_iw_conn_error(%struct.rds_connection* %28, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  br label %249

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 56
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %38 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %37, i32 0, i32 3
  %39 = load %struct.rds_header*, %struct.rds_header** %38, align 8
  %40 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %41 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %42 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %41, i32 0, i32 2
  %43 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %42, align 8
  %44 = ptrtoint %struct.rds_iw_recv_work* %40 to i64
  %45 = ptrtoint %struct.rds_iw_recv_work* %43 to i64
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
  %56 = call i32 (%struct.rds_connection*, i8*, ...) @rds_iw_conn_error(%struct.rds_connection* %53, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  %57 = load i32, i32* @s_recv_drop_bad_checksum, align 4
  %58 = call i32 @rds_stats_inc(i32 %57)
  br label %249

59:                                               ; preds = %32
  %60 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %61 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @be64_to_cpu(i64 %62)
  %64 = load %struct.rds_iw_ack_state*, %struct.rds_iw_ack_state** %8, align 8
  %65 = getelementptr inbounds %struct.rds_iw_ack_state, %struct.rds_iw_ack_state* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.rds_iw_ack_state*, %struct.rds_iw_ack_state** %8, align 8
  %67 = getelementptr inbounds %struct.rds_iw_ack_state, %struct.rds_iw_ack_state* %66, i32 0, i32 0
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
  %77 = call i32 @rds_iw_send_add_credits(%struct.rds_connection* %73, i64 %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %80 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %85 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* @s_iw_ack_received, align 4
  %93 = call i32 @rds_iw_stats_inc(i32 %92)
  %94 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %95 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i32 @rds_iw_frag_drop_page(%struct.TYPE_5__* %96)
  br label %249

98:                                               ; preds = %88, %83, %78
  %99 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %100 = icmp ne %struct.rds_iw_incoming* %99, null
  br i1 %100, label %131, label %101

101:                                              ; preds = %98
  %102 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %103 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %102, i32 0, i32 1
  %104 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %103, align 8
  store %struct.rds_iw_incoming* %104, %struct.rds_iw_incoming** %10, align 8
  %105 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %106 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %105, i32 0, i32 1
  store %struct.rds_iw_incoming* null, %struct.rds_iw_incoming** %106, align 8
  %107 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %108 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %109 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %108, i32 0, i32 0
  store %struct.rds_iw_incoming* %107, %struct.rds_iw_incoming** %109, align 8
  %110 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %111 = getelementptr inbounds %struct.rds_iw_incoming, %struct.rds_iw_incoming* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store %struct.rds_header* %112, %struct.rds_header** %12, align 8
  %113 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %114 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %115 = call i32 @memcpy(%struct.rds_header* %113, %struct.rds_header* %114, i32 56)
  %116 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %117 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call %struct.rds_iw_recv_work* @be32_to_cpu(i64 %118)
  %120 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %121 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %120, i32 0, i32 1
  store %struct.rds_iw_recv_work* %119, %struct.rds_iw_recv_work** %121, align 8
  %122 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %123 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %124 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %125 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %124, i32 0, i32 1
  %126 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %125, align 8
  %127 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %128 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @rdsdebug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.rds_iw_connection* %122, %struct.rds_iw_incoming* %123, %struct.rds_iw_recv_work* %126, i32 %129)
  br label %170

131:                                              ; preds = %98
  %132 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %133 = getelementptr inbounds %struct.rds_iw_incoming, %struct.rds_iw_incoming* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store %struct.rds_header* %134, %struct.rds_header** %12, align 8
  %135 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %136 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %139 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %166, label %142

142:                                              ; preds = %131
  %143 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %144 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %147 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %166, label %150

150:                                              ; preds = %142
  %151 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %152 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %155 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %150
  %159 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %160 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %163 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %158, %150, %142, %131
  %167 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %168 = call i32 (%struct.rds_connection*, i8*, ...) @rds_iw_conn_error(%struct.rds_connection* %167, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %249

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %101
  %171 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %172 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %176 = getelementptr inbounds %struct.rds_iw_incoming, %struct.rds_iw_incoming* %175, i32 0, i32 1
  %177 = call i32 @list_add_tail(i32* %174, i32* %176)
  %178 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %179 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %178, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %179, align 8
  %180 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %181 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %180, i32 0, i32 1
  %182 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %181, align 8
  %183 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** @RDS_FRAG_SIZE, align 8
  %184 = icmp ugt %struct.rds_iw_recv_work* %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %170
  %186 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** @RDS_FRAG_SIZE, align 8
  %187 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %188 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %187, i32 0, i32 1
  %189 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %188, align 8
  %190 = ptrtoint %struct.rds_iw_recv_work* %189 to i64
  %191 = ptrtoint %struct.rds_iw_recv_work* %186 to i64
  %192 = sub i64 %190, %191
  %193 = sdiv exact i64 %192, 16
  %194 = inttoptr i64 %193 to %struct.rds_iw_recv_work*
  store %struct.rds_iw_recv_work* %194, %struct.rds_iw_recv_work** %188, align 8
  br label %249

195:                                              ; preds = %170
  %196 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %197 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %196, i32 0, i32 1
  store %struct.rds_iw_recv_work* null, %struct.rds_iw_recv_work** %197, align 8
  %198 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %199 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %198, i32 0, i32 0
  store %struct.rds_iw_incoming* null, %struct.rds_iw_incoming** %199, align 8
  %200 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %201 = getelementptr inbounds %struct.rds_iw_incoming, %struct.rds_iw_incoming* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* @RDS_FLAG_CONG_BITMAP, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %195
  %209 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %210 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %211 = call i32 @rds_iw_cong_recv(%struct.rds_connection* %209, %struct.rds_iw_incoming* %210)
  br label %233

212:                                              ; preds = %195
  %213 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %214 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %215 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %218 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %221 = getelementptr inbounds %struct.rds_iw_incoming, %struct.rds_iw_incoming* %220, i32 0, i32 0
  %222 = load i32, i32* @GFP_ATOMIC, align 4
  %223 = load i32, i32* @KM_SOFTIRQ0, align 4
  %224 = call i32 @rds_recv_incoming(%struct.rds_connection* %213, i32 %216, i32 %219, %struct.TYPE_4__* %221, i32 %222, i32 %223)
  %225 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %226 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = call i8* @be64_to_cpu(i64 %227)
  %229 = load %struct.rds_iw_ack_state*, %struct.rds_iw_ack_state** %8, align 8
  %230 = getelementptr inbounds %struct.rds_iw_ack_state, %struct.rds_iw_ack_state* %229, i32 0, i32 3
  store i8* %228, i8** %230, align 8
  %231 = load %struct.rds_iw_ack_state*, %struct.rds_iw_ack_state** %8, align 8
  %232 = getelementptr inbounds %struct.rds_iw_ack_state, %struct.rds_iw_ack_state* %231, i32 0, i32 1
  store i32 1, i32* %232, align 4
  br label %233

233:                                              ; preds = %212, %208
  %234 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %235 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @RDS_FLAG_ACK_REQUIRED, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load i32, i32* @s_recv_ack_required, align 4
  %242 = call i32 @rds_stats_inc(i32 %241)
  %243 = load %struct.rds_iw_ack_state*, %struct.rds_iw_ack_state** %8, align 8
  %244 = getelementptr inbounds %struct.rds_iw_ack_state, %struct.rds_iw_ack_state* %243, i32 0, i32 2
  store i32 1, i32* %244, align 8
  br label %245

245:                                              ; preds = %240, %233
  %246 = load %struct.rds_iw_incoming*, %struct.rds_iw_incoming** %10, align 8
  %247 = getelementptr inbounds %struct.rds_iw_incoming, %struct.rds_iw_incoming* %246, i32 0, i32 0
  %248 = call i32 @rds_inc_put(%struct.TYPE_4__* %247)
  br label %249

249:                                              ; preds = %27, %52, %91, %166, %245, %185
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_iw_connection*, %struct.rds_iw_incoming*, %struct.rds_iw_recv_work*, i32) #1

declare dso_local i32 @rds_iw_conn_error(%struct.rds_connection*, i8*, ...) #1

declare dso_local i32 @rds_message_verify_checksum(%struct.rds_header*) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i8* @be64_to_cpu(i64) #1

declare dso_local i32 @rds_iw_send_add_credits(%struct.rds_connection*, i64) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local i32 @rds_iw_frag_drop_page(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(%struct.rds_header*, %struct.rds_header*, i32) #1

declare dso_local %struct.rds_iw_recv_work* @be32_to_cpu(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rds_iw_cong_recv(%struct.rds_connection*, %struct.rds_iw_incoming*) #1

declare dso_local i32 @rds_recv_incoming(%struct.rds_connection*, i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @rds_inc_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
