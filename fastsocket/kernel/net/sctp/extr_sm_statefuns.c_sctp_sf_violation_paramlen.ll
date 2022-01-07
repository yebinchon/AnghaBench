; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_violation_paramlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_violation_paramlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_paramhdr = type { i32 }

@SCTP_CID_ABORT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_PROTO_VIOLATION = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i8*, i32*)* @sctp_sf_violation_paramlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_violation_paramlen(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_paramhdr*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %8, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %18, %struct.sctp_chunk** %14, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = bitcast i8* %19 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %20, %struct.sctp_paramhdr** %15, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %16, align 8
  %21 = load i32, i32* @SCTP_CID_ABORT, align 4
  %22 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %23 = call i64 @sctp_auth_recv_cid(i32 %21, %struct.sctp_association* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %56

26:                                               ; preds = %6
  %27 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %29 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %15, align 8
  %30 = call %struct.sctp_chunk* @sctp_make_violation_paramlen(%struct.sctp_association* %27, %struct.sctp_chunk* %28, %struct.sctp_paramhdr* %29)
  store %struct.sctp_chunk* %30, %struct.sctp_chunk** %16, align 8
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %32 = icmp ne %struct.sctp_chunk* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %64

34:                                               ; preds = %26
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %38 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %37)
  %39 = call i32 @sctp_add_cmd_sf(i32* %35, i32 %36, i32 %38)
  %40 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %41 = call i32 @SCTP_INC_STATS(i32 %40)
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %44 = load i32, i32* @ECONNABORTED, align 4
  %45 = call i32 @SCTP_ERROR(i32 %44)
  %46 = call i32 @sctp_add_cmd_sf(i32* %42, i32 %43, i32 %45)
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %49 = load i32, i32* @SCTP_ERROR_PROTO_VIOLATION, align 4
  %50 = call i32 @SCTP_PERR(i32 %49)
  %51 = call i32 @sctp_add_cmd_sf(i32* %47, i32 %48, i32 %50)
  %52 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %53 = call i32 @SCTP_DEC_STATS(i32 %52)
  %54 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %55 = call i32 @SCTP_INC_STATS(i32 %54)
  br label %56

56:                                               ; preds = %34, %25
  %57 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %58 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %59 = call i32 @SCTP_ST_CHUNK(i32 0)
  %60 = load i8*, i8** %11, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %57, %struct.sctp_association* %58, i32 %59, i8* %60, i32* %61)
  %63 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %63, i32* %7, align 4
  br label %66

64:                                               ; preds = %33
  %65 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %56
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i64 @sctp_auth_recv_cid(i32, %struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_violation_paramlen(%struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_paramhdr*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @SCTP_ST_CHUNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
