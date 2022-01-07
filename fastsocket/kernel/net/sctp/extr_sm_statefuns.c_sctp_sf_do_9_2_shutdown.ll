; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32, i32, i32 }
%struct.sctp_chunk = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sctp_ulpevent = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ctsn %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ctsn_ack_point %x\0A\00", align 1
@SCTP_DISPOSITION_DISCARD = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i64 0, align 8
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i64 0, align 8
@SCTP_CMD_PROCESS_CTSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_sf_do_9_2_shutdown(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sctp_ulpevent*, align 8
  %16 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %18, %struct.sctp_chunk** %12, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %19, %struct.sctp_association* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i64 @sctp_sf_pdiscard(%struct.sctp_endpoint* %24, %struct.sctp_association* %25, i32 %26, i8* %27, i32* %28)
  store i64 %29, i64* %6, align 8
  br label %137

30:                                               ; preds = %5
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %32 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %31, i32 4)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %36 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %35, %struct.sctp_association* %36, i32 %37, i8* %38, i32* %39)
  store i64 %40, i64* %6, align 8
  br label %137

41:                                               ; preds = %30
  %42 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %43 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %13, align 8
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %49 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @skb_pull(%struct.TYPE_6__* %50, i32 4)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %54 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @TSN_lt(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %41
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i64, i64* @SCTP_DISPOSITION_DISCARD, align 8
  store i64 %73, i64* %6, align 8
  br label %137

74:                                               ; preds = %41
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %77 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @TSN_lt(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %83 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i64 @sctp_sf_violation_ctsn(%struct.sctp_endpoint* %82, %struct.sctp_association* %83, i32 %84, i8* %85, i32* %86)
  store i64 %87, i64* %6, align 8
  br label %137

88:                                               ; preds = %74
  %89 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_shutdown_event(%struct.sctp_association* %89, i32 0, i32 %90)
  store %struct.sctp_ulpevent* %91, %struct.sctp_ulpevent** %15, align 8
  %92 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %93 = icmp ne %struct.sctp_ulpevent* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  store i64 %95, i64* %14, align 8
  br label %135

96:                                               ; preds = %88
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %99 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %100 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %99)
  %101 = call i32 @sctp_add_cmd_sf(i32* %97, i32 %98, i32 %100)
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %104 = load i32, i32* @SCTP_STATE_SHUTDOWN_RECEIVED, align 4
  %105 = call i32 @SCTP_STATE(i32 %104)
  %106 = call i32 @sctp_add_cmd_sf(i32* %102, i32 %103, i32 %105)
  %107 = load i64, i64* @SCTP_DISPOSITION_CONSUME, align 8
  store i64 %107, i64* %14, align 8
  %108 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %109 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %108, i32 0, i32 0
  %110 = call i64 @sctp_outq_is_empty(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %96
  %113 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %114 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i64 @sctp_sf_do_9_2_shutdown_ack(%struct.sctp_endpoint* %113, %struct.sctp_association* %114, i32 %115, i8* %116, i32* %117)
  store i64 %118, i64* %14, align 8
  br label %119

119:                                              ; preds = %112, %96
  %120 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %135

124:                                              ; preds = %119
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* @SCTP_CMD_PROCESS_CTSN, align 4
  %127 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %128 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @SCTP_BE32(i32 %132)
  %134 = call i32 @sctp_add_cmd_sf(i32* %125, i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %124, %123, %94
  %136 = load i64, i64* %14, align 8
  store i64 %136, i64* %6, align 8
  br label %137

137:                                              ; preds = %135, %81, %66, %34, %23
  %138 = load i64, i64* %6, align 8
  ret i64 %138
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i64 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @TSN_lt(i32, i32) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, i32) #1

declare dso_local i64 @sctp_sf_violation_ctsn(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_shutdown_event(%struct.sctp_association*, i32, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i64 @sctp_outq_is_empty(i32*) #1

declare dso_local i64 @sctp_sf_do_9_2_shutdown_ack(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @SCTP_BE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
