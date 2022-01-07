; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_asconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_asconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sctp_chunk = type { i32, i32, i32*, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_paramhdr = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%union.sctp_addr_param = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@sctp_addip_noauth = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_asconf(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sctp_paramhdr*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %union.sctp_addr_param*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %12, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %13, align 8
  store %struct.sctp_paramhdr* null, %struct.sctp_paramhdr** %14, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %23 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %21, %struct.sctp_association* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %5
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %28 = call i32 (...) @SCTP_NULL()
  %29 = call i32 @sctp_add_cmd_sf(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %31 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %30, %struct.sctp_association* %31, i32 %32, i8* %33, i32* %34)
  store i32 %35, i32* %6, align 4
  br label %178

36:                                               ; preds = %5
  %37 = load i32, i32* @sctp_addip_noauth, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %41 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %46 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @sctp_sf_discard_chunk(%struct.sctp_endpoint* %45, %struct.sctp_association* %46, i32 %47, i8* %48, i32* %49)
  store i32 %50, i32* %6, align 4
  br label %178

51:                                               ; preds = %39, %36
  %52 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %53 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %52, i32 4)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %57 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %56, %struct.sctp_association* %57, i32 %58, i8* %59, i32* %60)
  store i32 %61, i32* %6, align 4
  br label %178

62:                                               ; preds = %51
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %64 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %63, i32 0, i32 5
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %15, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ntohl(i32 %71)
  store i64 %72, i64* %17, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %union.sctp_addr_param*
  store %union.sctp_addr_param* %76, %union.sctp_addr_param** %16, align 8
  %77 = load %union.sctp_addr_param*, %union.sctp_addr_param** %16, align 8
  %78 = bitcast %union.sctp_addr_param* %77 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohs(i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %83, 4
  br i1 %84, label %85, label %94

85:                                               ; preds = %62
  %86 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %87 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i8*, i8** %10, align 8
  %90 = load %union.sctp_addr_param*, %union.sctp_addr_param** %16, align 8
  %91 = bitcast %union.sctp_addr_param* %90 to i8*
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @sctp_sf_violation_paramlen(%struct.sctp_endpoint* %86, %struct.sctp_association* %87, i32 %88, i8* %89, i8* %91, i32* %92)
  store i32 %93, i32* %6, align 4
  br label %178

94:                                               ; preds = %62
  %95 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %96 = load %union.sctp_addr_param*, %union.sctp_addr_param** %16, align 8
  %97 = bitcast %union.sctp_addr_param* %96 to i8*
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr i8, i8* %97, i64 %99
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %103 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @sctp_verify_asconf(%struct.sctp_association* %95, i32* %101, i8* %105, %struct.sctp_paramhdr** %14)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %94
  %109 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %110 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %114 = bitcast %struct.sctp_paramhdr* %113 to i8*
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @sctp_sf_violation_paramlen(%struct.sctp_endpoint* %109, %struct.sctp_association* %110, i32 %111, i8* %112, i8* %114, i32* %115)
  store i32 %116, i32* %6, align 4
  br label %178

117:                                              ; preds = %94
  %118 = load i64, i64* %17, align 8
  %119 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %120 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  %124 = icmp eq i64 %118, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %117
  %126 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %127 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %132 = call i32 @sctp_assoc_clean_asconf_ack_cache(%struct.sctp_association* %131)
  br label %133

133:                                              ; preds = %130, %125
  %134 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %135 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %136 = call %struct.sctp_chunk* @sctp_process_asconf(%struct.sctp_association* %134, %struct.sctp_chunk* %135)
  store %struct.sctp_chunk* %136, %struct.sctp_chunk** %13, align 8
  %137 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %138 = icmp ne %struct.sctp_chunk* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %140, i32* %6, align 4
  br label %178

141:                                              ; preds = %133
  br label %166

142:                                              ; preds = %117
  %143 = load i64, i64* %17, align 8
  %144 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %145 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  %149 = icmp slt i64 %143, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %142
  %151 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call %struct.sctp_chunk* @sctp_assoc_lookup_asconf_ack(%struct.sctp_association* %151, i32 %154)
  store %struct.sctp_chunk* %155, %struct.sctp_chunk** %13, align 8
  %156 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %157 = icmp ne %struct.sctp_chunk* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %159, i32* %6, align 4
  br label %178

160:                                              ; preds = %150
  %161 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %162 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %161, i32 0, i32 2
  store i32* null, i32** %162, align 8
  br label %165

163:                                              ; preds = %142
  %164 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %164, i32* %6, align 4
  br label %178

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %141
  %167 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %168 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %171 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %174 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %175 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %174)
  %176 = call i32 @sctp_add_cmd_sf(i32* %172, i32 %173, i32 %175)
  %177 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %166, %163, %158, %139, %108, %85, %55, %44, %25
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_sf_discard_chunk(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_sf_violation_paramlen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @sctp_verify_asconf(%struct.sctp_association*, i32*, i8*, %struct.sctp_paramhdr**) #1

declare dso_local i32 @sctp_assoc_clean_asconf_ack_cache(%struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_process_asconf(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_assoc_lookup_asconf_ack(%struct.sctp_association*, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
