; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_wrap_kerberos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_wrap_kerberos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_ctx = type { %struct.krb5_ctx* }
%struct.krb5_ctx = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_wrap_kerberos(%struct.gss_ctx* %0, i32 %1, %struct.xdr_buf* %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gss_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.krb5_ctx*, align 8
  store %struct.gss_ctx* %0, %struct.gss_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdr_buf* %2, %struct.xdr_buf** %8, align 8
  store %struct.page** %3, %struct.page*** %9, align 8
  %11 = load %struct.gss_ctx*, %struct.gss_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %11, i32 0, i32 0
  %13 = load %struct.krb5_ctx*, %struct.krb5_ctx** %12, align 8
  store %struct.krb5_ctx* %13, %struct.krb5_ctx** %10, align 8
  %14 = load %struct.krb5_ctx*, %struct.krb5_ctx** %10, align 8
  %15 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 128, label %19
    i32 129, label %19
    i32 130, label %19
    i32 132, label %25
    i32 131, label %25
  ]

17:                                               ; preds = %4
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %4, %4, %4, %17
  %20 = load %struct.krb5_ctx*, %struct.krb5_ctx** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %23 = load %struct.page**, %struct.page*** %9, align 8
  %24 = call i32 @gss_wrap_kerberos_v1(%struct.krb5_ctx* %20, i32 %21, %struct.xdr_buf* %22, %struct.page** %23)
  store i32 %24, i32* %5, align 4
  br label %31

25:                                               ; preds = %4, %4
  %26 = load %struct.krb5_ctx*, %struct.krb5_ctx** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %29 = load %struct.page**, %struct.page*** %9, align 8
  %30 = call i32 @gss_wrap_kerberos_v2(%struct.krb5_ctx* %26, i32 %27, %struct.xdr_buf* %28, %struct.page** %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @gss_wrap_kerberos_v1(%struct.krb5_ctx*, i32, %struct.xdr_buf*, %struct.page**) #1

declare dso_local i32 @gss_wrap_kerberos_v2(%struct.krb5_ctx*, i32, %struct.xdr_buf*, %struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
