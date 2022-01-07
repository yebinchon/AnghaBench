; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_server_mine2g.c_br_ssl_server_init_mine2g.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_server_mine2g.c_br_ssl_server_init_mine2g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@br_ssl_server_init_mine2g.suites = internal constant [1 x i32] [i32 128], align 4
@BR_TLS12 = common dso_local global i32 0, align 4
@br_ec_all_m15 = common dso_local global i32 0, align 4
@BR_KEYTYPE_SIGN = common dso_local global i32 0, align 4
@br_rsa_i31_pkcs1_sign = common dso_local global i32 0, align 4
@br_sha256_ID = common dso_local global i32 0, align 4
@br_sha256_vtable = common dso_local global i32 0, align 4
@br_tls12_sha256_prf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ssl_server_init_mine2g(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = call i32 @br_ssl_server_zero(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* @BR_TLS12, align 4
  %14 = load i32, i32* @BR_TLS12, align 4
  %15 = call i32 @br_ssl_engine_set_versions(i32* %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @br_ssl_engine_set_suites(i32* %17, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @br_ssl_server_init_mine2g.suites, i64 0, i64 0), i32 1)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @br_ssl_engine_set_ec(i32* %20, i32* @br_ec_all_m15)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @BR_KEYTYPE_SIGN, align 4
  %27 = load i32, i32* @br_rsa_i31_pkcs1_sign, align 4
  %28 = call i32 @br_ssl_server_set_single_rsa(%struct.TYPE_5__* %22, i32* %23, i64 %24, i32* %25, i32 %26, i32 0, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* @br_sha256_ID, align 4
  %32 = call i32 @br_ssl_engine_set_hash(i32* %30, i32 %31, i32* @br_sha256_vtable)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @br_ssl_engine_set_prf_sha256(i32* %34, i32* @br_tls12_sha256_prf)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @br_ssl_engine_set_default_aes_gcm(i32* %37)
  ret void
}

declare dso_local i32 @br_ssl_server_zero(%struct.TYPE_5__*) #1

declare dso_local i32 @br_ssl_engine_set_versions(i32*, i32, i32) #1

declare dso_local i32 @br_ssl_engine_set_suites(i32*, i32*, i32) #1

declare dso_local i32 @br_ssl_engine_set_ec(i32*, i32*) #1

declare dso_local i32 @br_ssl_server_set_single_rsa(%struct.TYPE_5__*, i32*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @br_ssl_engine_set_hash(i32*, i32, i32*) #1

declare dso_local i32 @br_ssl_engine_set_prf_sha256(i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_default_aes_gcm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
