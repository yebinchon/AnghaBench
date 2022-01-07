; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_2_6_stale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_2_6_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sctp_bind_addr = type { i32 }

@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_STALE_COOKIE = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_PARAM_COOKIE_PRESERVATIVE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_CLEAR_INIT_TAG = common dso_local global i32 0, align 4
@SCTP_CMD_T3_RTX_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_DEL_NON_PRIMARY = common dso_local global i32 0, align 4
@SCTP_CMD_T1_RETRAN = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_COUNTER_INC = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_WAIT = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)* @sctp_sf_do_5_2_6_stale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_5_2_6_stale(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca %struct.sctp_bind_addr*, align 8
  %18 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %12, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %5
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = call i32 @SCTP_ERROR(i32 %33)
  %35 = call i32 @sctp_add_cmd_sf(i32* %31, i32 %32, i32 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @SCTP_CMD_INIT_FAILED, align 4
  %38 = load i32, i32* @SCTP_ERROR_STALE_COOKIE, align 4
  %39 = call i32 @SCTP_PERR(i32 %38)
  %40 = call i32 @sctp_add_cmd_sf(i32* %36, i32 %37, i32 %39)
  %41 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %41, i32* %6, align 4
  br label %130

42:                                               ; preds = %5
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %44 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohl(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = mul nsw i32 %53, 2
  %55 = sdiv i32 %54, 1000
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @SCTP_PARAM_COOKIE_PRESERVATIVE, align 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = call i32 @htons(i32 12)
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @htonl(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = bitcast i32* %67 to %struct.sctp_bind_addr*
  store %struct.sctp_bind_addr* %68, %struct.sctp_bind_addr** %17, align 8
  %69 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %70 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %17, align 8
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association* %69, %struct.sctp_bind_addr* %70, i32 %71, i32 12)
  store %struct.sctp_chunk* %72, %struct.sctp_chunk** %16, align 8
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %74 = icmp ne %struct.sctp_chunk* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %42
  br label %128

76:                                               ; preds = %42
  %77 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %78 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %77, i32 12, %struct.TYPE_11__* %14)
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @SCTP_CMD_CLEAR_INIT_TAG, align 4
  %81 = call i32 (...) @SCTP_NULL()
  %82 = call i32 @sctp_add_cmd_sf(i32* %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* @SCTP_CMD_T3_RTX_TIMERS_STOP, align 4
  %85 = call i32 (...) @SCTP_NULL()
  %86 = call i32 @sctp_add_cmd_sf(i32* %83, i32 %84, i32 %85)
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* @SCTP_CMD_HB_TIMERS_STOP, align 4
  %89 = call i32 (...) @SCTP_NULL()
  %90 = call i32 @sctp_add_cmd_sf(i32* %87, i32 %88, i32 %89)
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* @SCTP_CMD_DEL_NON_PRIMARY, align 4
  %93 = call i32 (...) @SCTP_NULL()
  %94 = call i32 @sctp_add_cmd_sf(i32* %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* @SCTP_CMD_T1_RETRAN, align 4
  %97 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %98 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @SCTP_TRANSPORT(i32 %100)
  %102 = call i32 @sctp_add_cmd_sf(i32* %95, i32 %96, i32 %101)
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* @SCTP_CMD_INIT_COUNTER_INC, align 4
  %105 = call i32 (...) @SCTP_NULL()
  %106 = call i32 @sctp_add_cmd_sf(i32* %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %109 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 4
  %110 = call i32 @SCTP_TO(i32 %109)
  %111 = call i32 @sctp_add_cmd_sf(i32* %107, i32 %108, i32 %110)
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %114 = load i32, i32* @SCTP_STATE_COOKIE_WAIT, align 4
  %115 = call i32 @SCTP_STATE(i32 %114)
  %116 = call i32 @sctp_add_cmd_sf(i32* %112, i32 %113, i32 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %119 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %120 = call i32 @SCTP_TO(i32 %119)
  %121 = call i32 @sctp_add_cmd_sf(i32* %117, i32 %118, i32 %120)
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %124 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %125 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %124)
  %126 = call i32 @sctp_add_cmd_sf(i32* %122, i32 %123, i32 %125)
  %127 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %127, i32* %6, align 4
  br label %130

128:                                              ; preds = %75
  %129 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %76, %30
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association*, %struct.sctp_bind_addr*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @SCTP_TRANSPORT(i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
