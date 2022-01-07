; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_reshutack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_reshutack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_SETUP_T2 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_reshutack(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %15, %struct.sctp_chunk** %12, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %17 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %5
  %20 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %20, %struct.sctp_association* %21, i32 %22, i8* %23, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %5
  %27 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %29 = call %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association* %27, %struct.sctp_chunk* %28)
  store %struct.sctp_chunk* %29, %struct.sctp_chunk** %13, align 8
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %31 = icmp eq %struct.sctp_chunk* null, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %50

33:                                               ; preds = %26
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @SCTP_CMD_SETUP_T2, align 4
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %37 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %36)
  %38 = call i32 @sctp_add_cmd_sf(i32* %34, i32 %35, i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %41 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %42 = call i32 @SCTP_TO(i32 %41)
  %43 = call i32 @sctp_add_cmd_sf(i32* %39, i32 %40, i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %47 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %46)
  %48 = call i32 @sctp_add_cmd_sf(i32* %44, i32 %45, i32 %47)
  %49 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %49, i32* %6, align 4
  br label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %33, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
