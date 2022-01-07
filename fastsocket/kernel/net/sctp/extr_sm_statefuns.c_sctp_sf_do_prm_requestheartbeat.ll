; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_prm_requestheartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_prm_requestheartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32 }

@SCTP_DISPOSITION_NOMEM = common dso_local global i64 0, align 8
@SCTP_CMD_TRANSPORT_HB_SENT = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_sf_do_prm_requestheartbeat(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  %13 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.sctp_transport*
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @sctp_sf_heartbeat(%struct.sctp_endpoint* %13, %struct.sctp_association* %14, i32 %15, %struct.sctp_transport* %17, i32* %18)
  %20 = icmp eq i64 %12, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  store i64 %22, i64* %6, align 8
  br label %30

23:                                               ; preds = %5
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @SCTP_CMD_TRANSPORT_HB_SENT, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @SCTP_TRANSPORT(i8* %26)
  %28 = call i32 @sctp_add_cmd_sf(i32* %24, i32 %25, i32 %27)
  %29 = load i64, i64* @SCTP_DISPOSITION_CONSUME, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i64, i64* %6, align 8
  ret i64 %31
}

declare dso_local i64 @sctp_sf_heartbeat(%struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_transport*, i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TRANSPORT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
