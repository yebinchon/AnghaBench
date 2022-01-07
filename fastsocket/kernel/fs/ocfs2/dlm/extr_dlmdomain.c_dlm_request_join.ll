; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_request_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_request_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dlm_query_join_request = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.dlm_query_join_packet = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"querying node %d\0A\00", align 1
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@DLM_QUERY_JOIN_MSG = common dso_local global i32 0, align 4
@DLM_MOD_KEY = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@JOIN_OK_NO_MAP = common dso_local global i32 0, align 4
@JOIN_DISALLOW = common dso_local global i32 0, align 4
@JOIN_PROTOCOL_MISMATCH = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [170 x i8] c"This node requested DLM locking protocol %u.%u and filesystem locking protocol %u.%u.  At least one of the protocol versions on node %d is not compatible, disconnecting\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@JOIN_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [88 x i8] c"Node %d responds JOIN_OK with DLM locking protocol %u.%u and fs locking protocol %u.%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"invalid response %d from node %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"status %d, node %d response is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, i32, i32*)* @dlm_request_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_request_join(%struct.dlm_ctxt* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_query_join_request, align 4
  %9 = alloca %struct.dlm_query_join_packet, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @memset(%struct.dlm_query_join_request* %8, i32 0, i32 32)
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %24, i32 %27, i32 %29)
  %31 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 2
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 1
  %34 = bitcast %struct.TYPE_3__* %31 to i8*
  %35 = bitcast %struct.TYPE_3__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 1
  %37 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %38 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %37, i32 0, i32 0
  %39 = bitcast %struct.TYPE_4__* %36 to i8*
  %40 = bitcast %struct.TYPE_4__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %44 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @O2NM_MAX_NODES, align 4
  %47 = call i32 @byte_copymap(i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* @DLM_QUERY_JOIN_MSG, align 4
  %49 = load i32, i32* @DLM_MOD_KEY, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @o2net_send_message(i32 %48, i32 %49, %struct.dlm_query_join_request* %8, i32 32, i32 %50, i32* %10)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %3
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ENOPROTOOPT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %170

62:                                               ; preds = %54, %3
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @dlm_query_join_wire_to_packet(i32 %63, %struct.dlm_query_join_packet* %9)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @ENOPROTOOPT, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  %70 = load i32, i32* @JOIN_OK_NO_MAP, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %164

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @JOIN_DISALLOW, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @JOIN_OK_NO_MAP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %72
  %83 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %163

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @JOIN_PROTOCOL_MISMATCH, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %86
  %92 = load i32, i32* @ML_NOTICE, align 4
  %93 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %94 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %98 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %102 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %106 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 (i32, i8*, i32, ...) @mlog(i32 %92, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %100, i32 %104, i32 %108, i32 %109)
  %111 = load i32, i32* @EPROTO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  %113 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %6, align 8
  store i32 %114, i32* %115, align 4
  br label %162

116:                                              ; preds = %86
  %117 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @JOIN_OK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  %125 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %128 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %133 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %137 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %141 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %145 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %149 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %139, i32 %143, i32 %147, i32 %151)
  br label %161

153:                                              ; preds = %116
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* @ML_ERROR, align 4
  %157 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i32, i8*, i32, ...) @mlog(i32 %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %153, %121
  br label %162

162:                                              ; preds = %161, %91
  br label %163

163:                                              ; preds = %162, %82
  br label %164

164:                                              ; preds = %163, %69
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %165, i32 %166, i32 %168)
  br label %170

170:                                              ; preds = %164, %59
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.dlm_query_join_request*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @byte_copymap(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_query_join_request*, i32, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_query_join_wire_to_packet(i32, %struct.dlm_query_join_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
