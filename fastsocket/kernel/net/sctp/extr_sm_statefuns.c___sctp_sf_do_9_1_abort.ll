; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c___sctp_sf_do_9_1_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c___sctp_sf_do_9_1_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__*, i64, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)* @__sctp_sf_do_9_1_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sctp_sf_do_9_1_abort(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %17, %struct.sctp_chunk** %12, align 8
  %18 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp uge i64 %26, 8
  br i1 %27, label %28, label %57

28:                                               ; preds = %5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %31 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call i32 @sctp_walk_errors(%struct.TYPE_6__* %29, %struct.TYPE_7__* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %35 = bitcast %struct.TYPE_6__* %34 to i8*
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = icmp ne i8* %35, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %42, %struct.sctp_association* %43, i32 %44, i8* %45, i32* %46)
  store i32 %47, i32* %6, align 4
  br label %73

48:                                               ; preds = %28
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %50 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %48, %5
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %60 = load i32, i32* @ECONNRESET, align 4
  %61 = call i32 @SCTP_ERROR(i32 %60)
  %62 = call i32 @sctp_add_cmd_sf(i32* %58, i32 %59, i32 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @SCTP_PERR(i32 %65)
  %67 = call i32 @sctp_add_cmd_sf(i32* %63, i32 %64, i32 %66)
  %68 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %69 = call i32 @SCTP_INC_STATS(i32 %68)
  %70 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %71 = call i32 @SCTP_DEC_STATS(i32 %70)
  %72 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %57, %41
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_walk_errors(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
