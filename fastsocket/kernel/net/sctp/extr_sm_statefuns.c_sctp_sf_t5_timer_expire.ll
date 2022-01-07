; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t5_timer_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t5_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Timer T5 expired.\0A\00", align 1
@SCTP_MIB_T5_SHUTDOWN_GUARD_EXPIREDS = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_t5_timer_expire(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
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
  %14 = load i32, i32* @SCTP_MIB_T5_SHUTDOWN_GUARD_EXPIREDS, align 4
  %15 = call i32 @SCTP_INC_STATS(i32 %14)
  %16 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %17 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %16, i32* null, i32 0)
  store %struct.sctp_chunk* %17, %struct.sctp_chunk** %12, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %19 = icmp ne %struct.sctp_chunk* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %42

21:                                               ; preds = %5
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %25 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %24)
  %26 = call i32 @sctp_add_cmd_sf(i32* %22, i32 %23, i32 %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = call i32 @SCTP_ERROR(i32 %29)
  %31 = call i32 @sctp_add_cmd_sf(i32* %27, i32 %28, i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %34 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %35 = call i32 @SCTP_PERR(i32 %34)
  %36 = call i32 @sctp_add_cmd_sf(i32* %32, i32 %33, i32 %35)
  %37 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %38 = call i32 @SCTP_INC_STATS(i32 %37)
  %39 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %40 = call i32 @SCTP_DEC_STATS(i32 %39)
  %41 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %41, i32* %6, align 4
  br label %44

42:                                               ; preds = %20
  %43 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, i32*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
