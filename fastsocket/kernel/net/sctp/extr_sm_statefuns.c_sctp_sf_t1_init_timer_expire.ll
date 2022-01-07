; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t1_init_timer_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t1_init_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_bind_addr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Timer T1 expired (INIT).\0A\00", align 1
@SCTP_MIB_T1_INIT_EXPIREDS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_CHOOSE_TRANSPORT = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Giving up on INIT, attempts: %d max_init_attempts: %d\0A\00", align 1
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_t1_init_timer_expire(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_bind_addr*, align 8
  %14 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %12, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %14, align 4
  %19 = call i32 (i8*, ...) @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @SCTP_MIB_T1_INIT_EXPIREDS, align 4
  %21 = call i32 @SCTP_INC_STATS(i32 %20)
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %24 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %5
  %28 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.sctp_bind_addr*
  store %struct.sctp_bind_addr* %31, %struct.sctp_bind_addr** %13, align 8
  %32 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %33 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %13, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association* %32, %struct.sctp_bind_addr* %33, i32 %34, i32 0)
  store %struct.sctp_chunk* %35, %struct.sctp_chunk** %12, align 8
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %37 = icmp ne %struct.sctp_chunk* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %39, i32* %6, align 4
  br label %75

40:                                               ; preds = %27
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @SCTP_CMD_INIT_CHOOSE_TRANSPORT, align 4
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %44 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %43)
  %45 = call i32 @sctp_add_cmd_sf(i32* %41, i32 %42, i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @SCTP_CMD_INIT_RESTART, align 4
  %48 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %49 = call i32 @SCTP_TO(i32 %48)
  %50 = call i32 @sctp_add_cmd_sf(i32* %46, i32 %47, i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %54 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %53)
  %55 = call i32 @sctp_add_cmd_sf(i32* %51, i32 %52, i32 %54)
  br label %73

56:                                               ; preds = %5
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %59 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = call i32 @SCTP_ERROR(i32 %64)
  %66 = call i32 @sctp_add_cmd_sf(i32* %62, i32 %63, i32 %65)
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* @SCTP_CMD_INIT_FAILED, align 4
  %69 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %70 = call i32 @SCTP_PERR(i32 %69)
  %71 = call i32 @sctp_add_cmd_sf(i32* %67, i32 %68, i32 %70)
  %72 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %72, i32* %6, align 4
  br label %75

73:                                               ; preds = %40
  %74 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %56, %38
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, ...) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association*, %struct.sctp_bind_addr*, i32, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
