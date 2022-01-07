; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_custom_profile.c_example_client_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_custom_profile.c_example_client_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__ }

@example_client_profile.suites = internal constant [37 x i32] [i32 157, i32 149, i32 161, i32 153, i32 158, i32 150, i32 162, i32 154, i32 159, i32 151, i32 163, i32 155, i32 160, i32 152, i32 145, i32 138, i32 142, i32 135, i32 146, i32 139, i32 143, i32 136, i32 147, i32 140, i32 144, i32 137, i32 131, i32 128, i32 132, i32 129, i32 133, i32 130, i32 164, i32 156, i32 148, i32 141, i32 134], align 16
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
@br_sslrec_in_cbc_vtable = common dso_local global i32 0, align 4
@br_sslrec_out_cbc_vtable = common dso_local global i32 0, align 4
@br_sslrec_in_gcm_vtable = common dso_local global i32 0, align 4
@br_sslrec_out_gcm_vtable = common dso_local global i32 0, align 4
@br_sslrec_in_chapol_vtable = common dso_local global i32 0, align 4
@br_sslrec_out_chapol_vtable = common dso_local global i32 0, align 4
@br_aes_ct_cbcenc_vtable = common dso_local global i32 0, align 4
@br_aes_ct_cbcdec_vtable = common dso_local global i32 0, align 4
@br_aes_ct_ctr_vtable = common dso_local global i32 0, align 4
@br_des_ct_cbcenc_vtable = common dso_local global i32 0, align 4
@br_des_ct_cbcdec_vtable = common dso_local global i32 0, align 4
@br_ghash_ctmul = common dso_local global i32 0, align 4
@br_ec_prime_i31 = common dso_local global i32 0, align 4
@br_ecdsa_i31_vrfy_asn1 = common dso_local global i32 0, align 4
@br_rsa_i31_pkcs1_vrfy = common dso_local global i32 0, align 4
@trust_anchors = common dso_local global i32 0, align 4
@trust_anchors_num = common dso_local global i32 0, align 4
@xc = common dso_local global %struct.TYPE_26__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @example_client_profile(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %3 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %4 = call i32 @br_ssl_client_zero(%struct.TYPE_25__* %3)
  %5 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %7 = load i32, i32* @BR_TLS10, align 4
  %8 = load i32, i32* @BR_TLS12, align 4
  %9 = call i32 @br_ssl_engine_set_versions(%struct.TYPE_26__* %6, i32 %7, i32 %8)
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %12 = call i32 @br_ssl_engine_set_prf10(%struct.TYPE_26__* %11, i32* @br_tls10_prf)
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = call i32 @br_ssl_engine_set_prf_sha256(%struct.TYPE_26__* %14, i32* @br_tls12_sha256_prf)
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = call i32 @br_ssl_engine_set_prf_sha384(%struct.TYPE_26__* %17, i32* @br_tls12_sha384_prf)
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i32, i32* @br_md5_ID, align 4
  %22 = call i32 @br_ssl_engine_set_hash(%struct.TYPE_26__* %20, i32 %21, i32* @br_md5_vtable)
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i32, i32* @br_sha1_ID, align 4
  %26 = call i32 @br_ssl_engine_set_hash(%struct.TYPE_26__* %24, i32 %25, i32* @br_sha1_vtable)
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i32, i32* @br_sha224_ID, align 4
  %30 = call i32 @br_ssl_engine_set_hash(%struct.TYPE_26__* %28, i32 %29, i32* @br_sha224_vtable)
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i32, i32* @br_sha256_ID, align 4
  %34 = call i32 @br_ssl_engine_set_hash(%struct.TYPE_26__* %32, i32 %33, i32* @br_sha256_vtable)
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* @br_sha384_ID, align 4
  %38 = call i32 @br_ssl_engine_set_hash(%struct.TYPE_26__* %36, i32 %37, i32* @br_sha384_vtable)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load i32, i32* @br_sha512_ID, align 4
  %42 = call i32 @br_ssl_engine_set_hash(%struct.TYPE_26__* %40, i32 %41, i32* @br_sha512_vtable)
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = call i32 @br_ssl_engine_set_suites(%struct.TYPE_26__* %44, i32* getelementptr inbounds ([37 x i32], [37 x i32]* @example_client_profile.suites, i64 0, i64 0), i32 37)
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %47 = call i32 @br_ssl_client_set_default_rsapub(%struct.TYPE_25__* %46)
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = call i32 @br_ssl_engine_set_default_rsavrfy(%struct.TYPE_26__* %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = call i32 @br_ssl_engine_set_default_ecdsa(%struct.TYPE_26__* %52)
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = call i32 @br_ssl_engine_set_cbc(%struct.TYPE_26__* %55, i32* @br_sslrec_in_cbc_vtable, i32* @br_sslrec_out_cbc_vtable)
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = call i32 @br_ssl_engine_set_gcm(%struct.TYPE_26__* %58, i32* @br_sslrec_in_gcm_vtable, i32* @br_sslrec_out_gcm_vtable)
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = call i32 @br_ssl_engine_set_chapol(%struct.TYPE_26__* %61, i32* @br_sslrec_in_chapol_vtable, i32* @br_sslrec_out_chapol_vtable)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = call i32 @br_ssl_engine_set_aes_cbc(%struct.TYPE_26__* %64, i32* @br_aes_ct_cbcenc_vtable, i32* @br_aes_ct_cbcdec_vtable)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = call i32 @br_ssl_engine_set_aes_ctr(%struct.TYPE_26__* %67, i32* @br_aes_ct_ctr_vtable)
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = call i32 @br_ssl_engine_set_des_cbc(%struct.TYPE_26__* %70, i32* @br_des_ct_cbcenc_vtable, i32* @br_des_ct_cbcdec_vtable)
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = call i32 @br_ssl_engine_set_ghash(%struct.TYPE_26__* %73, i32* @br_ghash_ctmul)
  ret void
}

declare dso_local i32 @br_ssl_client_zero(%struct.TYPE_25__*) #1

declare dso_local i32 @br_ssl_engine_set_versions(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @br_ssl_engine_set_prf10(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_prf_sha256(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_prf_sha384(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_hash(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @br_ssl_engine_set_suites(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @br_ssl_client_set_default_rsapub(%struct.TYPE_25__*) #1

declare dso_local i32 @br_ssl_engine_set_default_rsavrfy(%struct.TYPE_26__*) #1

declare dso_local i32 @br_ssl_engine_set_default_ecdsa(%struct.TYPE_26__*) #1

declare dso_local i32 @br_ssl_engine_set_cbc(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_gcm(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_chapol(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_aes_cbc(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_aes_ctr(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_des_cbc(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @br_ssl_engine_set_ghash(%struct.TYPE_26__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
