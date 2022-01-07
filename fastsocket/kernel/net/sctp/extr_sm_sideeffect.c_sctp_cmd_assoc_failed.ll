; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_assoc_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_assoc_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_ulpevent = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_EVENT_T_CHUNK = common dso_local global i64 0, align 8
@SCTP_CID_ABORT = common dso_local global i64 0, align 8
@SCTP_COMM_LOST = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_association*, i64, i64, %struct.sctp_chunk*, i32)* @sctp_cmd_assoc_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_assoc_failed(i32* %0, %struct.sctp_association* %1, i64 %2, i64 %3, %struct.sctp_chunk* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_ulpevent*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %3, i64* %15, align 8
  store i32* %0, i32** %8, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.sctp_chunk* %4, %struct.sctp_chunk** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 3
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i32 @sctp_ulpq_abort_pd(i32* %17, i32 %18)
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @SCTP_EVENT_T_CHUNK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SCTP_CID_ABORT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %30 = load i32, i32* @SCTP_COMM_LOST, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %29, i32 0, i32 %30, i32 %31, i32 0, i32 0, %struct.sctp_chunk* %32, i32 %33)
  store %struct.sctp_ulpevent* %34, %struct.sctp_ulpevent** %13, align 8
  br label %41

35:                                               ; preds = %23, %6
  %36 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %37 = load i32, i32* @SCTP_COMM_LOST, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %36, i32 0, i32 %37, i32 %38, i32 0, i32 0, %struct.sctp_chunk* null, i32 %39)
  store %struct.sctp_ulpevent* %40, %struct.sctp_ulpevent** %13, align 8
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %43 = icmp ne %struct.sctp_ulpevent* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %47 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %48 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %47)
  %49 = call i32 @sctp_add_cmd_sf(i32* %45, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %55 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %60 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %61 = call %struct.sctp_chunk* @sctp_make_violation_max_retrans(%struct.sctp_association* %59, %struct.sctp_chunk* %60)
  store %struct.sctp_chunk* %61, %struct.sctp_chunk** %14, align 8
  %62 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %63 = icmp ne %struct.sctp_chunk* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %68 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %67)
  %69 = call i32 @sctp_add_cmd_sf(i32* %65, i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %74 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %75 = call i32 @SCTP_STATE(i32 %74)
  %76 = call i32 @sctp_add_cmd_sf(i32* %72, i32 %73, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %79 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %83 = call i32 (...) @SCTP_NULL()
  %84 = call i32 @sctp_add_cmd_sf(i32* %81, i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @sctp_ulpq_abort_pd(i32*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_violation_max_retrans(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
