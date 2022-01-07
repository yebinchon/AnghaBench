; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_process_asconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_process_asconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%union.sctp_addr_param = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }

@SCTP_ERROR_NO_ERROR = common dso_local global i64 0, align 8
@SCTP_ERROR_RSRC_LOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_process_asconf(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %union.sctp_addr_param*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %13, align 4
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohs(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %5, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohl(i32 %31)
  store i32 %32, i32* %12, align 4
  store i32 4, i32* %10, align 4
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = inttoptr i64 %40 to %union.sctp_addr_param*
  store %union.sctp_addr_param* %41, %union.sctp_addr_param** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load %union.sctp_addr_param*, %union.sctp_addr_param** %6, align 8
  %46 = bitcast %union.sctp_addr_param* %45 to %struct.TYPE_14__*
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %union.sctp_addr_param*, %union.sctp_addr_param** %6, align 8
  %52 = bitcast %union.sctp_addr_param* %51 to i8*
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = bitcast i8* %55 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %62, 4
  %64 = call %struct.sctp_chunk* @sctp_make_asconf_ack(%struct.sctp_association* %60, i32 %61, i32 %63)
  store %struct.sctp_chunk* %64, %struct.sctp_chunk** %8, align 8
  %65 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %66 = icmp ne %struct.sctp_chunk* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %2
  br label %113

68:                                               ; preds = %2
  br label %69

69:                                               ; preds = %97, %68
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %112

72:                                               ; preds = %69
  %73 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %74 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %76 = call i64 @sctp_process_asconf_param(%struct.sctp_association* %73, %struct.sctp_chunk* %74, %struct.TYPE_18__* %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* @SCTP_ERROR_NO_ERROR, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %72
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = call i32 @sctp_add_asconf_response(%struct.sctp_chunk* %85, i32 %88, i64 %89, %struct.TYPE_18__* %90)
  br label %92

92:                                               ; preds = %84, %81
  %93 = load i64, i64* @SCTP_ERROR_RSRC_LOW, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %113

97:                                               ; preds = %92
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ntohs(i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = bitcast %struct.TYPE_18__* %103 to i8*
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr i8, i8* %104, i64 %106
  %108 = bitcast i8* %107 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %69

112:                                              ; preds = %69
  br label %113

113:                                              ; preds = %112, %96, %67
  %114 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %115 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %120 = icmp ne %struct.sctp_chunk* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %123 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %122)
  %124 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %125 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %124, i32 0, i32 0
  %126 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %127 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %126, i32 0, i32 0
  %128 = call i32 @list_add_tail(i32* %125, i32* %127)
  br label %129

129:                                              ; preds = %121, %113
  %130 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  ret %struct.sctp_chunk* %130
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_asconf_ack(%struct.sctp_association*, i32, i32) #1

declare dso_local i64 @sctp_process_asconf_param(%struct.sctp_association*, %struct.sctp_chunk*, %struct.TYPE_18__*) #1

declare dso_local i32 @sctp_add_asconf_response(%struct.sctp_chunk*, i32, i64, %struct.TYPE_18__*) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
