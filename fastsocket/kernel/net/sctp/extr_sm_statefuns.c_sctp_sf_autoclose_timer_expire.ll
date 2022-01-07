; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_autoclose_timer_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_autoclose_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }

@SCTP_MIB_AUTOCLOSE_EXPIREDS = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_autoclose_timer_expire(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
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
  %12 = load i32, i32* @SCTP_MIB_AUTOCLOSE_EXPIREDS, align 4
  %13 = call i32 @SCTP_INC_STATS(i32 %12)
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %16 = load i32, i32* @SCTP_STATE_SHUTDOWN_PENDING, align 4
  %17 = call i32 @SCTP_STATE(i32 %16)
  %18 = call i32 @sctp_add_cmd_sf(i32* %14, i32 %15, i32 %17)
  %19 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 0
  %22 = call i64 @sctp_outq_is_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @sctp_sf_do_9_2_start_shutdown(%struct.sctp_endpoint* %25, %struct.sctp_association* %26, i32 %27, i8* %28, i32* %29)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %24, %5
  %32 = load i32, i32* %11, align 4
  ret i32 %32
}

declare dso_local i32 @SCTP_INC_STATS(i32) #1

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
