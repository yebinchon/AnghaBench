; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t2_timer_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t2_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, i64, i32, i64, i32 }
%struct.sctp_chunk = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Timer T2 expired.\0A\00", align 1
@SCTP_MIB_T2_SHUTDOWN_EXPIREDS = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_CMD_STRIKE = common dso_local global i32 0, align 4
@SCTP_CMD_SETUP_T2 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_t2_timer_expire(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
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
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %12, align 8
  %13 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @SCTP_MIB_T2_SHUTDOWN_EXPIREDS, align 4
  %15 = call i32 @SCTP_INC_STATS(i32 %14)
  %16 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %24 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %5
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = call i32 @SCTP_ERROR(i32 %30)
  %32 = call i32 @sctp_add_cmd_sf(i32* %28, i32 %29, i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %35 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %36 = call i32 @SCTP_PERR(i32 %35)
  %37 = call i32 @sctp_add_cmd_sf(i32* %33, i32 %34, i32 %36)
  %38 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %39 = call i32 @SCTP_INC_STATS(i32 %38)
  %40 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %41 = call i32 @SCTP_DEC_STATS(i32 %40)
  %42 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %42, i32* %6, align 4
  br label %91

43:                                               ; preds = %5
  %44 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %45 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %53 [
    i32 128, label %47
    i32 129, label %50
  ]

47:                                               ; preds = %43
  %48 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %49 = call %struct.sctp_chunk* @sctp_make_shutdown(%struct.sctp_association* %48, i32* null)
  store %struct.sctp_chunk* %49, %struct.sctp_chunk** %12, align 8
  br label %55

50:                                               ; preds = %43
  %51 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %52 = call %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association* %51, i32* null)
  store %struct.sctp_chunk* %52, %struct.sctp_chunk** %12, align 8
  br label %55

53:                                               ; preds = %43
  %54 = call i32 (...) @BUG()
  br label %55

55:                                               ; preds = %53, %50, %47
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %57 = icmp ne %struct.sctp_chunk* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %89

59:                                               ; preds = %55
  %60 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %61 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* @SCTP_CMD_STRIKE, align 4
  %67 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @SCTP_TRANSPORT(i64 %69)
  %71 = call i32 @sctp_add_cmd_sf(i32* %65, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %64, %59
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @SCTP_CMD_SETUP_T2, align 4
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %76 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %75)
  %77 = call i32 @sctp_add_cmd_sf(i32* %73, i32 %74, i32 %76)
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %80 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %81 = call i32 @SCTP_TO(i32 %80)
  %82 = call i32 @sctp_add_cmd_sf(i32* %78, i32 %79, i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %85 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %86 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %85)
  %87 = call i32 @sctp_add_cmd_sf(i32* %83, i32 %84, i32 %86)
  %88 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %88, i32* %6, align 4
  br label %91

89:                                               ; preds = %58
  %90 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %72, %27
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown(%struct.sctp_association*, i32*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association*, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @SCTP_TRANSPORT(i64) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
