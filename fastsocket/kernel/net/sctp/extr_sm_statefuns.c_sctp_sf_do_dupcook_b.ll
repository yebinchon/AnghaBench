; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_b.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.sctp_association = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_UPDATE_ASSOC = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_START = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_CHANGE = common dso_local global i32 0, align 4
@SCTP_COMM_UP = common dso_local global i32 0, align 4
@SCTP_CMD_ADAPTATION_IND = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i32*, %struct.sctp_association*)* @sctp_sf_do_dupcook_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_dupcook_b(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, i32* %3, %struct.sctp_association* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.sctp_association* %4, %struct.sctp_association** %11, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32* %21, i32** %12, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %25 = call i32 @sctp_source(%struct.sctp_chunk* %24)
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call i32 @sctp_process_init(%struct.sctp_association* %22, %struct.sctp_chunk* %23, i32 %25, i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %77

31:                                               ; preds = %5
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* @SCTP_CMD_UPDATE_ASSOC, align 4
  %34 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %35 = call i32 @SCTP_ASOC(%struct.sctp_association* %34)
  %36 = call i32 @sctp_add_cmd_sf(i32* %32, i32 %33, i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %39 = load i32, i32* @SCTP_STATE_ESTABLISHED, align 4
  %40 = call i32 @SCTP_STATE(i32 %39)
  %41 = call i32 @sctp_add_cmd_sf(i32* %37, i32 %38, i32 %40)
  %42 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %43 = call i32 @SCTP_INC_STATS(i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* @SCTP_CMD_HB_TIMERS_START, align 4
  %46 = call i32 (...) @SCTP_NULL()
  %47 = call i32 @sctp_add_cmd_sf(i32* %44, i32 %45, i32 %46)
  %48 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %50 = call %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association* %48, %struct.sctp_chunk* %49)
  store %struct.sctp_chunk* %50, %struct.sctp_chunk** %13, align 8
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %52 = icmp ne %struct.sctp_chunk* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %31
  br label %77

54:                                               ; preds = %31
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %57 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %58 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %57)
  %59 = call i32 @sctp_add_cmd_sf(i32* %55, i32 %56, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* @SCTP_CMD_ASSOC_CHANGE, align 4
  %62 = load i32, i32* @SCTP_COMM_UP, align 4
  %63 = call i32 @SCTP_U8(i32 %62)
  %64 = call i32 @sctp_add_cmd_sf(i32* %60, i32 %61, i32 %63)
  %65 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %54
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* @SCTP_CMD_ADAPTATION_IND, align 4
  %73 = call i32 (...) @SCTP_NULL()
  %74 = call i32 @sctp_add_cmd_sf(i32* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %54
  %76 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %76, i32* %6, align 4
  br label %79

77:                                               ; preds = %53, %30
  %78 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_U8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
