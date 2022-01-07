; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_prm_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_prm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }

@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_prm_shutdown(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.sctp_endpoint*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %6, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %14 = load i32, i32* @SCTP_STATE_SHUTDOWN_PENDING, align 4
  %15 = call i32 @SCTP_STATE(i32 %14)
  %16 = call i32 @sctp_add_cmd_sf(i32* %12, i32 %13, i32 %15)
  %17 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 0
  %20 = call i64 @sctp_outq_is_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @sctp_sf_do_9_2_start_shutdown(%struct.sctp_endpoint* %23, %struct.sctp_association* %24, i32 %25, i8* %26, i32* %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %22, %5
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i64 @sctp_outq_is_empty(i32*) #1

declare dso_local i32 @sctp_sf_do_9_2_start_shutdown(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
