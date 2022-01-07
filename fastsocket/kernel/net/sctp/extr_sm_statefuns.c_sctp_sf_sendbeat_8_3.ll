; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_sendbeat_8_3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_sendbeat_8_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, i64 }
%struct.sctp_transport = type { i32 }

@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i64 0, align 8
@SPP_HB_ENABLE = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i64 0, align 8
@SCTP_CMD_TRANSPORT_HB_SENT = common dso_local global i32 0, align 4
@SCTP_CMD_TRANSPORT_IDLE = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMER_UPDATE = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_sf_sendbeat_8_3(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.sctp_transport*
  store %struct.sctp_transport* %14, %struct.sctp_transport** %12, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %5
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = call i32 @SCTP_ERROR(i32 %25)
  %27 = call i32 @sctp_add_cmd_sf(i32* %23, i32 %24, i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %30 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %31 = call i32 @SCTP_PERR(i32 %30)
  %32 = call i32 @sctp_add_cmd_sf(i32* %28, i32 %29, i32 %31)
  %33 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %34 = call i32 @SCTP_INC_STATS(i32 %33)
  %35 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %36 = call i32 @SCTP_DEC_STATS(i32 %35)
  %37 = load i64, i64* @SCTP_DISPOSITION_DELETE_TCB, align 8
  store i64 %37, i64* %6, align 8
  br label %74

38:                                               ; preds = %5
  %39 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %40 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SPP_HB_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  %47 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i64 @sctp_sf_heartbeat(%struct.sctp_endpoint* %47, %struct.sctp_association* %48, i32 %49, i8* %50, i32* %51)
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  store i64 %55, i64* %6, align 8
  br label %74

56:                                               ; preds = %45
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* @SCTP_CMD_TRANSPORT_HB_SENT, align 4
  %59 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %60 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %59)
  %61 = call i32 @sctp_add_cmd_sf(i32* %57, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %56, %38
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @SCTP_CMD_TRANSPORT_IDLE, align 4
  %65 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %66 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %65)
  %67 = call i32 @sctp_add_cmd_sf(i32* %63, i32 %64, i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* @SCTP_CMD_HB_TIMER_UPDATE, align 4
  %70 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %71 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %70)
  %72 = call i32 @sctp_add_cmd_sf(i32* %68, i32 %69, i32 %71)
  %73 = load i64, i64* @SCTP_DISPOSITION_CONSUME, align 8
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %62, %54, %22
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local i64 @sctp_sf_heartbeat(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @SCTP_TRANSPORT(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
