; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_unk_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_unk_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Processing the unknown chunk id %d.\0A\00", align 1
@SCTP_CID_ACTION_MASK = common dso_local global i32 0, align 4
@SCTP_ERROR_UNKNOWN_CHUNK = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_unk_chunk(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %2, i32* %15, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %8, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %17, %struct.sctp_chunk** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %23 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %21, %struct.sctp_association* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %5
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %26, %struct.sctp_association* %27, i32 %31, i8* %28, i32* %29)
  store i32 %32, i32* %6, align 4
  br label %118

33:                                               ; preds = %5
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %35 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %34, i32 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %39 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %38, %struct.sctp_association* %39, i32 %43, i8* %40, i32* %41)
  store i32 %44, i32* %6, align 4
  br label %118

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SCTP_CID_ACTION_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %115 [
    i32 131, label %50
    i32 130, label %58
    i32 129, label %89
    i32 128, label %91
  ]

50:                                               ; preds = %45
  %51 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %52 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %51, %struct.sctp_association* %52, i32 %56, i8* %53, i32* %54)
  store i32 %57, i32* %6, align 4
  br label %118

58:                                               ; preds = %45
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %14, align 8
  %62 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %64 = load i32, i32* @SCTP_ERROR_UNKNOWN_CHUNK, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntohs(i32 %68)
  %70 = call i32 @WORD_ROUND(i32 %69)
  %71 = call %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %62, %struct.sctp_chunk* %63, i32 %64, %struct.TYPE_8__* %65, i32 %70, i32 0)
  store %struct.sctp_chunk* %71, %struct.sctp_chunk** %13, align 8
  %72 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %73 = icmp ne %struct.sctp_chunk* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %58
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %77 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %78 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %77)
  %79 = call i32 @sctp_add_cmd_sf(i32* %75, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %74, %58
  %81 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %82 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %81, %struct.sctp_association* %82, i32 %86, i8* %83, i32* %84)
  %88 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %88, i32* %6, align 4
  br label %118

89:                                               ; preds = %45
  %90 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %90, i32* %6, align 4
  br label %118

91:                                               ; preds = %45
  %92 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %93 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %14, align 8
  %95 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %96 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %97 = load i32, i32* @SCTP_ERROR_UNKNOWN_CHUNK, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ntohs(i32 %101)
  %103 = call i32 @WORD_ROUND(i32 %102)
  %104 = call %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %95, %struct.sctp_chunk* %96, i32 %97, %struct.TYPE_8__* %98, i32 %103, i32 0)
  store %struct.sctp_chunk* %104, %struct.sctp_chunk** %13, align 8
  %105 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %106 = icmp ne %struct.sctp_chunk* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %91
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %110 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %111 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %110)
  %112 = call i32 @sctp_add_cmd_sf(i32* %108, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %107, %91
  %114 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %114, i32* %6, align 4
  br label %118

115:                                              ; preds = %45
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %113, %89, %80, %50, %37, %25
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, i32) #1

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @WORD_ROUND(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
