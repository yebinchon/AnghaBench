; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_authenticate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64 }
%struct.sctp_chunk = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { %struct.sctp_authhdr* }
%struct.sctp_authhdr = type { i32*, i32, i32 }
%struct.sctp_hmac = type { i32 }
%struct.sctp_auth_chunk = type { i32 }

@SCTP_IERROR_AUTH_BAD_HMAC = common dso_local global i32 0, align 4
@SCTP_IERROR_AUTH_BAD_KEYID = common dso_local global i32 0, align 4
@SCTP_IERROR_PROTO_VIOLATION = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_IERROR_BAD_SIG = common dso_local global i32 0, align 4
@SCTP_IERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_IERROR_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_chunk*)* @sctp_sf_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_authenticate(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, %struct.sctp_chunk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_endpoint*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca %struct.sctp_authhdr*, align 8
  %11 = alloca %struct.sctp_hmac*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %6, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %9, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.sctp_authhdr*
  store %struct.sctp_authhdr* %21, %struct.sctp_authhdr** %10, align 8
  %22 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %10, align 8
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %24 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.sctp_authhdr* %22, %struct.sctp_authhdr** %25, align 8
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %27 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i32 @skb_pull(%struct.TYPE_7__* %28, i32 16)
  %30 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %31 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %10, align 8
  %32 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sctp_auth_asoc_verify_hmac_id(%struct.sctp_association* %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @SCTP_IERROR_AUTH_BAD_HMAC, align 4
  store i32 %37, i32* %5, align 4
  br label %123

38:                                               ; preds = %4
  %39 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %10, align 8
  %40 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ntohs(i32 %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %45 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @sctp_auth_get_shkey(%struct.sctp_association* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @SCTP_IERROR_AUTH_BAD_KEYID, align 4
  store i32 %54, i32* %5, align 4
  br label %123

55:                                               ; preds = %48, %38
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %57 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ntohs(i32 %60)
  %62 = sub i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %10, align 8
  %65 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ntohs(i32 %66)
  %68 = call %struct.sctp_hmac* @sctp_auth_get_hmac(i64 %67)
  store %struct.sctp_hmac* %68, %struct.sctp_hmac** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.sctp_hmac*, %struct.sctp_hmac** %11, align 8
  %71 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %55
  %75 = load i32, i32* @SCTP_IERROR_PROTO_VIOLATION, align 4
  store i32 %75, i32* %5, align 4
  br label %123

76:                                               ; preds = %55
  %77 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %10, align 8
  %78 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %15, align 8
  %80 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %81 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @skb_pull(%struct.TYPE_7__* %82, i32 %83)
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call i32* @kmemdup(i32* %85, i32 %86, i32 %87)
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %76
  br label %121

92:                                               ; preds = %76
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @memset(i32* %93, i32 0, i32 %94)
  %96 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %97 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %98 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %101 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = bitcast %struct.TYPE_6__* %102 to %struct.sctp_auth_chunk*
  %104 = load i32, i32* @GFP_ATOMIC, align 4
  %105 = call i32 @sctp_auth_calculate_hmac(%struct.sctp_association* %96, %struct.TYPE_7__* %99, %struct.sctp_auth_chunk* %103, i32 %104)
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @memcmp(i32* %106, i32* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %92
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 @kfree(i32* %112)
  %114 = load i32, i32* @SCTP_IERROR_BAD_SIG, align 4
  store i32 %114, i32* %5, align 4
  br label %123

115:                                              ; preds = %92
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %119 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @SCTP_IERROR_NO_ERROR, align 4
  store i32 %120, i32* %5, align 4
  br label %123

121:                                              ; preds = %91
  %122 = load i32, i32* @SCTP_IERROR_NOMEM, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %115, %111, %74, %53, %36
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @skb_pull(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sctp_auth_asoc_verify_hmac_id(%struct.sctp_association*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sctp_auth_get_shkey(%struct.sctp_association*, i64) #1

declare dso_local %struct.sctp_hmac* @sctp_auth_get_hmac(i64) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sctp_auth_calculate_hmac(%struct.sctp_association*, %struct.TYPE_7__*, %struct.sctp_auth_chunk*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
