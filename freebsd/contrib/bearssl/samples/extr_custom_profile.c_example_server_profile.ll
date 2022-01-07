; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_custom_profile.c_example_server_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_custom_profile.c_example_server_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@example_server_profile.suites = internal constant [14 x i32] [i32 138, i32 135, i32 139, i32 136, i32 140, i32 137, i32 131, i32 128, i32 132, i32 129, i32 133, i32 130, i32 141, i32 134], align 16
@BR_TLS10 = common dso_local global i32 0, align 4
@BR_TLS12 = common dso_local global i32 0, align 4
@br_tls10_prf = common dso_local global i32 0, align 4
@br_tls12_sha256_prf = common dso_local global i32 0, align 4
@br_tls12_sha384_prf = common dso_local global i32 0, align 4
@br_md5_ID = common dso_local global i32 0, align 4
@br_md5_vtable = common dso_local global i32 0, align 4
@br_sha1_ID = common dso_local global i32 0, align 4
@br_sha1_vtable = common dso_local global i32 0, align 4
@br_sha224_ID = common dso_local global i32 0, align 4
@br_sha224_vtable = common dso_local global i32 0, align 4
@br_sha256_ID = common dso_local global i32 0, align 4
@br_sha256_vtable = common dso_local global i32 0, align 4
@br_sha384_ID = common dso_local global i32 0, align 4
@br_sha384_vtable = common dso_local global i32 0, align 4
@br_sha512_ID = common dso_local global i32 0, align 4
@br_sha512_vtable = common dso_local global i32 0, align 4
@br_ec_prime_i31 = common dso_local global i32 0, align 4
@BR_KEYTYPE_KEYX = common dso_local global i32 0, align 4
@BR_KEYTYPE_SIGN = common dso_local global i32 0, align 4
@br_rsa_i31_private = common dso_local global i32 0, align 4
@br_rsa_i31_pkcs1_sign = common dso_local global i32 0, align 4
@br_sslrec_in_cbc_vtable = common dso_local global i32 0, align 4
@br_sslrec_out_cbc_vtable = common dso_local global i32 0, align 4
@br_sslrec_in_gcm_vtable = common dso_local global i32 0, align 4
@br_sslrec_out_gcm_vtable = common dso_local global i32 0, align 4
@br_aes_ct_cbcenc_vtable = common dso_local global i32 0, align 4
@br_aes_ct_cbcdec_vtable = common dso_local global i32 0, align 4
@br_aes_ct_ctr_vtable = common dso_local global i32 0, align 4
@br_des_ct_cbcenc_vtable = common dso_local global i32 0, align 4
@br_des_ct_cbcdec_vtable = common dso_local global i32 0, align 4
@br_ghash_ctmul = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @example_server_profile(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32* %3) #0 {
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
  %13 = load i32, i32* @BR_TLS10, align 4
  %14 = load i32, i32* @BR_TLS12, align 4
  %15 = call i32 @br_ssl_engine_set_versions(i32* %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @br_ssl_engine_set_prf10(i32* %17, i32* @br_tls10_prf)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @br_ssl_engine_set_prf_sha256(i32* %20, i32* @br_tls12_sha256_prf)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @br_ssl_engine_set_prf_sha384(i32* %23, i32* @br_tls12_sha384_prf)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* @br_md5_ID, align 4
  %28 = call i32 @br_ssl_engine_set_hash(i32* %26, i32 %27, i32* @br_md5_vtable)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* @br_sha1_ID, align 4
  %32 = call i32 @br_ssl_engine_set_hash(i32* %30, i32 %31, i32* @br_sha1_vtable)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* @br_sha224_ID, align 4
  %36 = call i32 @br_ssl_engine_set_hash(i32* %34, i32 %35, i32* @br_sha224_vtable)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* @br_sha256_ID, align 4
  %40 = call i32 @br_ssl_engine_set_hash(i32* %38, i32 %39, i32* @br_sha256_vtable)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* @br_sha384_ID, align 4
  %44 = call i32 @br_ssl_engine_set_hash(i32* %42, i32 %43, i32* @br_sha384_vtable)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* @br_sha512_ID, align 4
  %48 = call i32 @br_ssl_engine_set_hash(i32* %46, i32 %47, i32* @br_sha512_vtable)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @br_ssl_engine_set_suites(i32* %50, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @example_server_profile.suites, i64 0, i64 0), i32 14)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @br_ssl_engine_set_ec(i32* %53, i32* @br_ec_prime_i31)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @BR_KEYTYPE_KEYX, align 4
  %60 = load i32, i32* @BR_KEYTYPE_SIGN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @br_rsa_i31_private, align 4
  %63 = load i32, i32* @br_rsa_i31_pkcs1_sign, align 4
  %64 = call i32 @br_ssl_server_set_single_rsa(%struct.TYPE_5__* %55, i32* %56, i64 %57, i32* %58, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = call i32 @br_ssl_engine_set_cbc(i32* %66, i32* @br_sslrec_in_cbc_vtable, i32* @br_sslrec_out_cbc_vtable)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @br_ssl_engine_set_gcm(i32* %69, i32* @br_sslrec_in_gcm_vtable, i32* @br_sslrec_out_gcm_vtable)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @br_ssl_engine_set_aes_cbc(i32* %72, i32* @br_aes_ct_cbcenc_vtable, i32* @br_aes_ct_cbcdec_vtable)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = call i32 @br_ssl_engine_set_aes_ctr(i32* %75, i32* @br_aes_ct_ctr_vtable)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @br_ssl_engine_set_des_cbc(i32* %78, i32* @br_des_ct_cbcenc_vtable, i32* @br_des_ct_cbcdec_vtable)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @br_ssl_engine_set_ghash(i32* %81, i32* @br_ghash_ctmul)
  ret void
}

declare dso_local i32 @br_ssl_server_zero(%struct.TYPE_5__*) #1

declare dso_local i32 @br_ssl_engine_set_versions(i32*, i32, i32) #1

declare dso_local i32 @br_ssl_engine_set_prf10(i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_prf_sha256(i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_prf_sha384(i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_hash(i32*, i32, i32*) #1

declare dso_local i32 @br_ssl_engine_set_suites(i32*, i32*, i32) #1

declare dso_local i32 @br_ssl_engine_set_ec(i32*, i32*) #1

declare dso_local i32 @br_ssl_server_set_single_rsa(%struct.TYPE_5__*, i32*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @br_ssl_engine_set_cbc(i32*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_gcm(i32*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_aes_cbc(i32*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_aes_ctr(i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_des_cbc(i32*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_ghash(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
