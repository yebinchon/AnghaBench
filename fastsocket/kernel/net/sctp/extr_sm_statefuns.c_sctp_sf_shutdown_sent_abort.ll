; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_shutdown_sent_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_shutdown_sent_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_ADDR_DEL = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_shutdown_sent_abort(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %14, %struct.sctp_chunk** %12, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %16 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %17 = call i32 @sctp_vtag_verify_either(%struct.sctp_chunk* %15, %struct.sctp_association* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %5
  %20 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %20, %struct.sctp_association* %21, i32 %22, i8* %23, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %70

26:                                               ; preds = %5
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %28 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %27, i32 4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %32 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %31, %struct.sctp_association* %32, i32 %33, i8* %34, i32* %35)
  store i32 %36, i32* %6, align 4
  br label %70

37:                                               ; preds = %26
  %38 = load i64, i64* @SCTP_ADDR_DEL, align 8
  %39 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %40 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %43 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %42, i32 0, i32 0
  %44 = call i64 @sctp_bind_addr_state(i32* %41, i32* %43)
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @sctp_sf_discard_chunk(%struct.sctp_endpoint* %47, %struct.sctp_association* %48, i32 %49, i8* %50, i32* %51)
  store i32 %52, i32* %6, align 4
  br label %70

53:                                               ; preds = %37
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %56 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %57 = call i32 @SCTP_TO(i32 %56)
  %58 = call i32 @sctp_add_cmd_sf(i32* %54, i32 %55, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %61 = load i32, i32* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 4
  %62 = call i32 @SCTP_TO(i32 %61)
  %63 = call i32 @sctp_add_cmd_sf(i32* %59, i32 %60, i32 %62)
  %64 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %65 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @__sctp_sf_do_9_1_abort(%struct.sctp_endpoint* %64, %struct.sctp_association* %65, i32 %66, i8* %67, i32* %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %53, %46, %30, %19
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @sctp_vtag_verify_either(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_bind_addr_state(i32*, i32*) #1

declare dso_local i32 @sctp_sf_discard_chunk(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @__sctp_sf_do_9_1_abort(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
