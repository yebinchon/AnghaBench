; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_data_fast_4_4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_data_fast_4_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@SCTP_CMD_GEN_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_GEN_SACK = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_eat_data_fast_4_4(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
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
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %15, %struct.sctp_chunk** %12, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %18 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %16, %struct.sctp_association* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %23 = call i32 (...) @SCTP_NULL()
  %24 = call i32 @sctp_add_cmd_sf(i32* %21, i32 %22, i32 %23)
  %25 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %25, %struct.sctp_association* %26, i32 %27, i8* %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %85

31:                                               ; preds = %5
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %33 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %37 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %36, %struct.sctp_association* %37, i32 %38, i8* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  br label %85

42:                                               ; preds = %31
  %43 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @sctp_eat_data(%struct.sctp_association* %43, %struct.sctp_chunk* %44, i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  switch i32 %47, label %61 [
    i32 129, label %48
    i32 132, label %48
    i32 133, label %48
    i32 131, label %48
    i32 134, label %48
    i32 130, label %49
    i32 128, label %50
  ]

48:                                               ; preds = %42, %42, %42, %42, %42
  br label %63

49:                                               ; preds = %42
  br label %83

50:                                               ; preds = %42
  %51 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %52 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %56 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @sctp_sf_abort_violation(%struct.sctp_endpoint* %51, %struct.sctp_association* %52, %struct.sctp_chunk* %53, i32* %54, i32* %59, i32 4)
  store i32 %60, i32* %6, align 4
  br label %85

61:                                               ; preds = %42
  %62 = call i32 (...) @BUG()
  br label %63

63:                                               ; preds = %61, %48
  %64 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %65 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @SCTP_CMD_GEN_SHUTDOWN, align 4
  %71 = call i32 (...) @SCTP_NULL()
  %72 = call i32 @sctp_add_cmd_sf(i32* %69, i32 %70, i32 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @SCTP_CMD_GEN_SACK, align 4
  %75 = call i32 (...) @SCTP_FORCE()
  %76 = call i32 @sctp_add_cmd_sf(i32* %73, i32 %74, i32 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %79 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %80 = call i32 @SCTP_TO(i32 %79)
  %81 = call i32 @sctp_add_cmd_sf(i32* %77, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %68, %63
  br label %83

83:                                               ; preds = %82, %49
  %84 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %50, %35, %20
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_eat_data(%struct.sctp_association*, %struct.sctp_chunk*, i32*) #1

declare dso_local i32 @sctp_sf_abort_violation(%struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i32*, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @SCTP_FORCE(...) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
