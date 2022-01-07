; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_seal.c_gss_get_mic_kerberos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_seal.c_gss_get_mic_kerberos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_ctx = type { %struct.krb5_ctx* }
%struct.krb5_ctx = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_get_mic_kerberos(%struct.gss_ctx* %0, %struct.xdr_buf* %1, %struct.xdr_netobj* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gss_ctx*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca %struct.xdr_netobj*, align 8
  %8 = alloca %struct.krb5_ctx*, align 8
  store %struct.gss_ctx* %0, %struct.gss_ctx** %5, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %6, align 8
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %7, align 8
  %9 = load %struct.gss_ctx*, %struct.gss_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %9, i32 0, i32 0
  %11 = load %struct.krb5_ctx*, %struct.krb5_ctx** %10, align 8
  store %struct.krb5_ctx* %11, %struct.krb5_ctx** %8, align 8
  %12 = load %struct.krb5_ctx*, %struct.krb5_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %15 [
    i32 128, label %17
    i32 129, label %17
    i32 130, label %17
    i32 132, label %22
    i32 131, label %22
  ]

15:                                               ; preds = %3
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %3, %3, %3, %15
  %18 = load %struct.krb5_ctx*, %struct.krb5_ctx** %8, align 8
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %20 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %21 = call i32 @gss_get_mic_v1(%struct.krb5_ctx* %18, %struct.xdr_buf* %19, %struct.xdr_netobj* %20)
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %3, %3
  %23 = load %struct.krb5_ctx*, %struct.krb5_ctx** %8, align 8
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %25 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %26 = call i32 @gss_get_mic_v2(%struct.krb5_ctx* %23, %struct.xdr_buf* %24, %struct.xdr_netobj* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @gss_get_mic_v1(%struct.krb5_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*) #1

declare dso_local i32 @gss_get_mic_v2(%struct.krb5_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
