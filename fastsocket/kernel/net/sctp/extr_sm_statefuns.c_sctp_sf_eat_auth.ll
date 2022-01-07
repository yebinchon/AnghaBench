; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_authhdr = type { i32, i32 }
%struct.sctp_chunk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@SCTP_ERROR_UNSUP_HMAC = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_AUTH_NEWKEY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_eat_auth(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_authhdr*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %18, %struct.sctp_chunk** %13, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %5
  %25 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @sctp_sf_unk_chunk(%struct.sctp_endpoint* %25, %struct.sctp_association* %26, i32 %27, i8* %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %135

31:                                               ; preds = %5
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %34 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %32, %struct.sctp_association* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %39 = call i32 (...) @SCTP_NULL()
  %40 = call i32 @sctp_add_cmd_sf(i32* %37, i32 %38, i32 %39)
  %41 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %42 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %41, %struct.sctp_association* %42, i32 %43, i8* %44, i32* %45)
  store i32 %46, i32* %6, align 4
  br label %135

47:                                               ; preds = %31
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %49 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %48, i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %53 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %52, %struct.sctp_association* %53, i32 %54, i8* %55, i32* %56)
  store i32 %57, i32* %6, align 4
  br label %135

58:                                               ; preds = %47
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.sctp_authhdr*
  store %struct.sctp_authhdr* %64, %struct.sctp_authhdr** %12, align 8
  %65 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %66 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %69 = call i32 @sctp_sf_authenticate(%struct.sctp_endpoint* %65, %struct.sctp_association* %66, i32 %67, %struct.sctp_chunk* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  switch i32 %70, label %103 [
    i32 132, label %71
    i32 131, label %87
    i32 130, label %87
    i32 128, label %94
    i32 129, label %101
  ]

71:                                               ; preds = %58
  %72 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %74 = load i32, i32* @SCTP_ERROR_UNSUP_HMAC, align 4
  %75 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %12, align 8
  %76 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %75, i32 0, i32 1
  %77 = call %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %72, %struct.sctp_chunk* %73, i32 %74, i32* %76, i32 4, i32 0)
  store %struct.sctp_chunk* %77, %struct.sctp_chunk** %14, align 8
  %78 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %79 = icmp ne %struct.sctp_chunk* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %83 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %84 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %83)
  %85 = call i32 @sctp_add_cmd_sf(i32* %81, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %80, %71
  br label %87

87:                                               ; preds = %58, %58, %86
  %88 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %89 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %88, %struct.sctp_association* %89, i32 %90, i8* %91, i32* %92)
  store i32 %93, i32* %6, align 4
  br label %135

94:                                               ; preds = %58
  %95 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %96 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %95, %struct.sctp_association* %96, i32 %97, i8* %98, i32* %99)
  store i32 %100, i32* %6, align 4
  br label %135

101:                                              ; preds = %58
  %102 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %102, i32* %6, align 4
  br label %135

103:                                              ; preds = %58
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %106 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %12, align 8
  %109 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @ntohs(i32 %110)
  %112 = icmp ne i64 %107, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %104
  %114 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %115 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %12, align 8
  %116 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ntohs(i32 %117)
  %119 = load i32, i32* @SCTP_AUTH_NEWKEY, align 4
  %120 = load i32, i32* @GFP_ATOMIC, align 4
  %121 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association* %114, i64 %118, i32 %119, i32 %120)
  store %struct.sctp_ulpevent* %121, %struct.sctp_ulpevent** %16, align 8
  %122 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %123 = icmp ne %struct.sctp_ulpevent* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %113
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %135

127:                                              ; preds = %113
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %130 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %131 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %130)
  %132 = call i32 @sctp_add_cmd_sf(i32* %128, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %127, %104
  %134 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %133, %124, %101, %94, %87, %51, %36, %24
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @sctp_sf_unk_chunk(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_sf_authenticate(%struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association*, i64, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
