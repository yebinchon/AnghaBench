; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_beat_8_3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_beat_8_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_beat_8_3(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca i64, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %17, %struct.sctp_chunk** %13, align 8
  store i64 0, i64* %15, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %20 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %18, %struct.sctp_association* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %23, %struct.sctp_association* %24, i32 %25, i8* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %102

29:                                               ; preds = %5
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %31 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %30, i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %35 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %34, %struct.sctp_association* %35, i32 %36, i8* %37, i32* %38)
  store i32 %39, i32* %6, align 4
  br label %102

40:                                               ; preds = %29
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %42 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %48 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %51 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %12, align 8
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %56 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ntohs(i32 %59)
  %61 = sub i64 %60, 4
  store i64 %61, i64* %15, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ntohs(i32 %64)
  %66 = load i64, i64* %15, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %40
  %69 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %70 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @sctp_sf_violation_paramlen(%struct.sctp_endpoint* %69, %struct.sctp_association* %70, i32 %71, i8* %72, %struct.TYPE_9__* %73, i32* %74)
  store i32 %75, i32* %6, align 4
  br label %102

76:                                               ; preds = %40
  %77 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %78 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @pskb_pull(%struct.TYPE_10__* %79, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %100

84:                                               ; preds = %76
  %85 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %86 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call %struct.sctp_chunk* @sctp_make_heartbeat_ack(%struct.sctp_association* %85, %struct.sctp_chunk* %86, %struct.TYPE_9__* %87, i64 %88)
  store %struct.sctp_chunk* %89, %struct.sctp_chunk** %14, align 8
  %90 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %91 = icmp ne %struct.sctp_chunk* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  br label %100

93:                                               ; preds = %84
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %96 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %97 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %96)
  %98 = call i32 @sctp_add_cmd_sf(i32* %94, i32 %95, i32 %97)
  %99 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %99, i32* %6, align 4
  br label %102

100:                                              ; preds = %92, %83
  %101 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %93, %68, %33, %22
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sctp_sf_violation_paramlen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @pskb_pull(%struct.TYPE_10__*, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_heartbeat_ack(%struct.sctp_association*, %struct.sctp_chunk*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
