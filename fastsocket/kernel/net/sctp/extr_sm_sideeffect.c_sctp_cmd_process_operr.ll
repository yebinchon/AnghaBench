; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_process_operr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_process_operr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_chunk = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_errhdr = type { i32, i64 }
%struct.sctp_ulpevent = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_association*, %struct.sctp_chunk*)* @sctp_cmd_process_operr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_process_operr(i32* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_errhdr*, align 8
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %6, align 8
  br label %10

10:                                               ; preds = %69, %3
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %13, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %10
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.sctp_errhdr*
  store %struct.sctp_errhdr* %26, %struct.sctp_errhdr** %7, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_remote_error(%struct.sctp_association* %27, %struct.sctp_chunk* %28, i32 0, i32 %29)
  store %struct.sctp_ulpevent* %30, %struct.sctp_ulpevent** %8, align 8
  %31 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %32 = icmp ne %struct.sctp_ulpevent* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %70

34:                                               ; preds = %20
  %35 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 1
  %37 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %38 = call i32 @sctp_ulpq_tail_event(i32* %36, %struct.sctp_ulpevent* %37)
  %39 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %7, align 8
  %40 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %68 [
    i32 128, label %42
  ]

42:                                               ; preds = %34
  %43 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %7, align 8
  %44 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %9, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %66 [
    i32 129, label %50
  ]

50:                                               ; preds = %42
  %51 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %67

57:                                               ; preds = %50
  %58 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %59 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %63 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %64 = call i32 @SCTP_TO(i32 %63)
  %65 = call i32 @sctp_add_cmd_sf(i32* %61, i32 %62, i32 %64)
  br label %67

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %57, %56
  br label %69

68:                                               ; preds = %34
  br label %69

69:                                               ; preds = %68, %67
  br label %10

70:                                               ; preds = %33, %10
  ret void
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_remote_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_ulpq_tail_event(i32*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
