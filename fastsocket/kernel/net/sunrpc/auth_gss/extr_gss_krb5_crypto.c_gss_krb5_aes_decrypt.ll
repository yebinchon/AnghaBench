; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_krb5_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_krb5_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { %struct.TYPE_4__*, i32*, %struct.crypto_blkcipher*, %struct.crypto_blkcipher*, i32*, %struct.crypto_blkcipher*, %struct.crypto_blkcipher*, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.crypto_blkcipher = type { i32 }
%struct.xdr_buf = type { i64 }
%struct.xdr_netobj = type { i32, i32* }
%struct.decryptor_desc = type { i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { %struct.crypto_blkcipher*, i64, i32 }

@GSS_KRB5_MAX_CKSUM_LEN = common dso_local global i32 0, align 4
@KG_USAGE_ACCEPTOR_SEAL = common dso_local global i32 0, align 4
@KG_USAGE_INITIATOR_SEAL = common dso_local global i32 0, align 4
@GSS_KRB5_TOK_HDR_LEN = common dso_local global i64 0, align 8
@decryptor = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_krb5_aes_decrypt(%struct.krb5_ctx* %0, i64 %1, %struct.xdr_buf* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.krb5_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.xdr_buf, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.crypto_blkcipher*, align 8
  %15 = alloca %struct.crypto_blkcipher*, align 8
  %16 = alloca %struct.xdr_netobj, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.decryptor_desc, align 8
  %24 = alloca i32, align 4
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.xdr_buf* %2, %struct.xdr_buf** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %12, align 8
  %25 = load i32, i32* @GSS_KRB5_MAX_CKSUM_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load i32, i32* @GSS_KRB5_MAX_CKSUM_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %5
  %37 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %37, i32 0, i32 6
  %39 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %38, align 8
  store %struct.crypto_blkcipher* %39, %struct.crypto_blkcipher** %14, align 8
  %40 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %40, i32 0, i32 5
  %42 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %41, align 8
  store %struct.crypto_blkcipher* %42, %struct.crypto_blkcipher** %15, align 8
  %43 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %13, align 8
  %46 = load i32, i32* @KG_USAGE_ACCEPTOR_SEAL, align 4
  store i32 %46, i32* %24, align 4
  br label %58

47:                                               ; preds = %5
  %48 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %48, i32 0, i32 3
  %50 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %49, align 8
  store %struct.crypto_blkcipher* %50, %struct.crypto_blkcipher** %14, align 8
  %51 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %51, i32 0, i32 2
  %53 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %52, align 8
  store %struct.crypto_blkcipher* %53, %struct.crypto_blkcipher** %15, align 8
  %54 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %13, align 8
  %57 = load i32, i32* @KG_USAGE_INITIATOR_SEAL, align 4
  store i32 %57, i32* %24, align 4
  br label %58

58:                                               ; preds = %47, %36
  %59 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %60 = call i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher* %59)
  store i32 %60, i32* %21, align 4
  %61 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @GSS_KRB5_TOK_HDR_LEN, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %66 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* @GSS_KRB5_TOK_HDR_LEN, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %71, %76
  %78 = call i32 @xdr_buf_subsegment(%struct.xdr_buf* %61, %struct.xdr_buf* %11, i64 %64, i64 %77)
  %79 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %21, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = sub nsw i64 %83, 1
  %85 = load i32, i32* %21, align 4
  %86 = sext i32 %85 to i64
  %87 = sdiv i64 %84, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp sgt i32 %89, 2
  br i1 %90, label %91, label %96

91:                                               ; preds = %58
  %92 = load i32, i32* %20, align 4
  %93 = sub nsw i32 %92, 2
  %94 = load i32, i32* %21, align 4
  %95 = mul nsw i32 %93, %94
  store i32 %95, i32* %22, align 4
  br label %96

96:                                               ; preds = %91, %58
  %97 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memset(i32 %98, i32 0, i32 4)
  %100 = load i32, i32* %22, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %15, align 8
  %112 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store %struct.crypto_blkcipher* %111, %struct.crypto_blkcipher** %113, align 8
  %114 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sg_init_table(i32 %115, i32 4)
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* @decryptor, align 4
  %119 = call i64 @xdr_process_buf(%struct.xdr_buf* %11, i32 0, i32 %117, i32 %118, %struct.decryptor_desc* %23)
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %12, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %102
  br label %191

123:                                              ; preds = %102
  br label %124

124:                                              ; preds = %123, %96
  %125 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %14, align 8
  %126 = load i32, i32* %22, align 4
  %127 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @gss_krb5_cts_crypt(%struct.crypto_blkcipher* %125, %struct.xdr_buf* %11, i32 %126, i32 %128, i32* null, i32 0)
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %191

133:                                              ; preds = %124
  %134 = mul nuw i64 4, %26
  %135 = trunc i64 %134 to i32
  %136 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %16, i32 0, i32 0
  store i32 %135, i32* %136, align 8
  %137 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %16, i32 0, i32 1
  store i32* %28, i32** %137, align 8
  %138 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = load i32, i32* %24, align 4
  %141 = call i64 @make_checksum_v2(%struct.krb5_ctx* %138, i32* null, i32 0, %struct.xdr_buf* %11, i32 0, i32* %139, i32 %140, %struct.xdr_netobj* %16)
  store i64 %141, i64* %12, align 8
  %142 = load i64, i64* %12, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %191

145:                                              ; preds = %133
  %146 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %147 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %148 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %151 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %149, %154
  %156 = trunc i64 %155 to i32
  %157 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %158 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i64 @read_bytes_from_xdr_buf(%struct.xdr_buf* %146, i32 %156, i32* %31, i32 %162)
  store i64 %163, i64* %12, align 8
  %164 = load i64, i64* %12, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %145
  br label %191

167:                                              ; preds = %145
  %168 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %169 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i64 @memcmp(i32* %31, i32* %28, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i64, i64* @GSS_S_BAD_SIG, align 8
  store i64 %177, i64* %12, align 8
  br label %191

178:                                              ; preds = %167
  %179 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %180 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %9, align 8
  store i64 %183, i64* %184, align 8
  %185 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %186 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %10, align 8
  store i64 %189, i64* %190, align 8
  br label %191

191:                                              ; preds = %178, %176, %166, %144, %132, %122
  %192 = load i64, i64* %12, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i64, i64* %12, align 8
  %196 = load i64, i64* @GSS_S_BAD_SIG, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %199, i64* %12, align 8
  br label %200

200:                                              ; preds = %198, %194, %191
  %201 = load i64, i64* %12, align 8
  %202 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %202)
  ret i64 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_blkcipher_blocksize(%struct.crypto_blkcipher*) #2

declare dso_local i32 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i64, i64) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @sg_init_table(i32, i32) #2

declare dso_local i64 @xdr_process_buf(%struct.xdr_buf*, i32, i32, i32, %struct.decryptor_desc*) #2

declare dso_local i64 @gss_krb5_cts_crypt(%struct.crypto_blkcipher*, %struct.xdr_buf*, i32, i32, i32*, i32) #2

declare dso_local i64 @make_checksum_v2(%struct.krb5_ctx*, i32*, i32, %struct.xdr_buf*, i32, i32*, i32, %struct.xdr_netobj*) #2

declare dso_local i64 @read_bytes_from_xdr_buf(%struct.xdr_buf*, i32, i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
