; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_init_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_init_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_CANT_STR_ASSOC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_association*, i32)* @sctp_cmd_init_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_init_failed(i32* %0, %struct.sctp_association* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_ulpevent*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %9 = load i32, i32* @SCTP_CANT_STR_ASSOC, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %8, i32 0, i32 %9, i32 %10, i32 0, i32 0, i32* null, i32 %11)
  store %struct.sctp_ulpevent* %12, %struct.sctp_ulpevent** %7, align 8
  %13 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  %14 = icmp ne %struct.sctp_ulpevent* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %18 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  %19 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %18)
  %20 = call i32 @sctp_add_cmd_sf(i32* %16, i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %15, %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %24 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %25 = call i32 @SCTP_STATE(i32 %24)
  %26 = call i32 @sctp_add_cmd_sf(i32* %22, i32 %23, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %33 = call i32 (...) @SCTP_NULL()
  %34 = call i32 @sctp_add_cmd_sf(i32* %31, i32 %32, i32 %33)
  ret void
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
