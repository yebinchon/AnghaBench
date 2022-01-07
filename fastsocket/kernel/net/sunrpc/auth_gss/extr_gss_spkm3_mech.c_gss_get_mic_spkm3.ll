; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_mech.c_gss_get_mic_spkm3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_mech.c_gss_get_mic_spkm3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_ctx = type { %struct.spkm3_ctx* }
%struct.spkm3_ctx = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i32 }

@SPKM_MIC_TOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RPC:       gss_get_mic_spkm3 returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gss_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*)* @gss_get_mic_spkm3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_get_mic_spkm3(%struct.gss_ctx* %0, %struct.xdr_buf* %1, %struct.xdr_netobj* %2) #0 {
  %4 = alloca %struct.gss_ctx*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca %struct.xdr_netobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spkm3_ctx*, align 8
  store %struct.gss_ctx* %0, %struct.gss_ctx** %4, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %5, align 8
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.gss_ctx*, %struct.gss_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %9, i32 0, i32 0
  %11 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %10, align 8
  store %struct.spkm3_ctx* %11, %struct.spkm3_ctx** %8, align 8
  %12 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %8, align 8
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %14 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %15 = load i32, i32* @SPKM_MIC_TOK, align 4
  %16 = call i32 @spkm3_make_token(%struct.spkm3_ctx* %12, %struct.xdr_buf* %13, %struct.xdr_netobj* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

declare dso_local i32 @spkm3_make_token(%struct.spkm3_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
