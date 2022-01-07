; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_prm_asoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_prm_asoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_WAIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_ASOC = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_CHOOSE_TRANSPORT = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_prm_asoc(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %16 = load i32, i32* @SCTP_STATE_COOKIE_WAIT, align 4
  %17 = call i32 @SCTP_STATE(i32 %16)
  %18 = call i32 @sctp_add_cmd_sf(i32* %14, i32 %15, i32 %17)
  %19 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association* %19, i32* %22, i32 %23, i32 0)
  store %struct.sctp_chunk* %24, %struct.sctp_chunk** %12, align 8
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %26 = icmp ne %struct.sctp_chunk* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %51

28:                                               ; preds = %5
  %29 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  store %struct.sctp_association* %29, %struct.sctp_association** %13, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* @SCTP_CMD_NEW_ASOC, align 4
  %32 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %33 = call i32 @SCTP_ASOC(%struct.sctp_association* %32)
  %34 = call i32 @sctp_add_cmd_sf(i32* %30, i32 %31, i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @SCTP_CMD_INIT_CHOOSE_TRANSPORT, align 4
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %38 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %37)
  %39 = call i32 @sctp_add_cmd_sf(i32* %35, i32 %36, i32 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %42 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %43 = call i32 @SCTP_TO(i32 %42)
  %44 = call i32 @sctp_add_cmd_sf(i32* %40, i32 %41, i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %48 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %47)
  %49 = call i32 @sctp_add_cmd_sf(i32* %45, i32 %46, i32 %48)
  %50 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %27
  %52 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %28
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association*, i32*, i32, i32) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
