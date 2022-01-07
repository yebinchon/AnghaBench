; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t1_cookie_timer_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_t1_cookie_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32, i32 }
%struct.sctp_chunk = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Timer T1 expired (COOKIE-ECHO).\0A\00", align 1
@SCTP_MIB_T1_COOKIE_EXPIREDS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_CHOOSE_TRANSPORT = common dso_local global i32 0, align 4
@SCTP_CMD_COOKIEECHO_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_t1_cookie_timer_expire(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %12, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %13, align 4
  %18 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @SCTP_MIB_T1_COOKIE_EXPIREDS, align 4
  %20 = call i32 @SCTP_INC_STATS(i32 %19)
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %5
  %27 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %28 = call %struct.sctp_chunk* @sctp_make_cookie_echo(%struct.sctp_association* %27, i32* null)
  store %struct.sctp_chunk* %28, %struct.sctp_chunk** %12, align 8
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %30 = icmp ne %struct.sctp_chunk* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %32, i32* %6, align 4
  br label %63

33:                                               ; preds = %26
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @SCTP_CMD_INIT_CHOOSE_TRANSPORT, align 4
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %37 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %36)
  %38 = call i32 @sctp_add_cmd_sf(i32* %34, i32 %35, i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @SCTP_CMD_COOKIEECHO_RESTART, align 4
  %41 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 4
  %42 = call i32 @SCTP_TO(i32 %41)
  %43 = call i32 @sctp_add_cmd_sf(i32* %39, i32 %40, i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %47 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %46)
  %48 = call i32 @sctp_add_cmd_sf(i32* %44, i32 %45, i32 %47)
  br label %61

49:                                               ; preds = %5
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = call i32 @SCTP_ERROR(i32 %52)
  %54 = call i32 @sctp_add_cmd_sf(i32* %50, i32 %51, i32 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @SCTP_CMD_INIT_FAILED, align 4
  %57 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %58 = call i32 @SCTP_PERR(i32 %57)
  %59 = call i32 @sctp_add_cmd_sf(i32* %55, i32 %56, i32 %58)
  %60 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %60, i32* %6, align 4
  br label %63

61:                                               ; preds = %33
  %62 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %49, %31
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_cookie_echo(%struct.sctp_association*, i32*) #1

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
