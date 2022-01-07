; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_encryptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_encryptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i64 }
%struct.encryptor_desc = type { i32, i32, i32, i32*, i32*, %struct.TYPE_4__, %struct.page**, %struct.xdr_buf* }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.xdr_buf = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i8*)* @encryptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encryptor(%struct.scatterlist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.encryptor_desc*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.encryptor_desc*
  store %struct.encryptor_desc* %15, %struct.encryptor_desc** %6, align 8
  %16 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %17 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %16, i32 0, i32 7
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %17, align 8
  store %struct.xdr_buf* %18, %struct.xdr_buf** %7, align 8
  %19 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %20 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %23 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %27 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 3
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %33 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %36 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %34, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %2
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %47 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %53 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %59 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %58, i32 0, i32 6
  %60 = load %struct.page**, %struct.page*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.page*, %struct.page** %60, i64 %62
  %64 = load %struct.page*, %struct.page** %63, align 8
  store %struct.page* %64, %struct.page** %8, align 8
  br label %68

65:                                               ; preds = %44, %2
  %66 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %67 = call %struct.page* @sg_page(%struct.scatterlist* %66)
  store %struct.page* %67, %struct.page** %8, align 8
  br label %68

68:                                               ; preds = %65, %50
  %69 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %70 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %73 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load %struct.page*, %struct.page** %8, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %82 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @sg_set_page(i32* %76, %struct.page* %77, i32 %80, i64 %83)
  %85 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %86 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %89 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %94 = call %struct.page* @sg_page(%struct.scatterlist* %93)
  %95 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %96 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %99 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @sg_set_page(i32* %92, %struct.page* %94, i32 %97, i64 %100)
  %102 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %103 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %107 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %110 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %114 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %117 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %122 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @crypto_blkcipher_blocksize(i32 %124)
  %126 = sub nsw i32 %125, 1
  %127 = and i32 %120, %126
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %68
  store i32 0, i32* %3, align 4
  br label %226

134:                                              ; preds = %68
  %135 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %136 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %139 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = call i32 @sg_mark_end(i32* %143)
  %145 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %146 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %149 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = call i32 @sg_mark_end(i32* %153)
  %155 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %156 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %155, i32 0, i32 5
  %157 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %158 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %161 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @crypto_blkcipher_encrypt_iv(%struct.TYPE_4__* %156, i32* %159, i32* %162, i32 %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %134
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %3, align 4
  br label %226

169:                                              ; preds = %134
  %170 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %171 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @sg_init_table(i32* %172, i32 4)
  %174 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %175 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @sg_init_table(i32* %176, i32 4)
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %220

180:                                              ; preds = %169
  %181 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %182 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %186 = call %struct.page* @sg_page(%struct.scatterlist* %185)
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %189 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %192 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %190, %194
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 %195, %197
  %199 = call i32 @sg_set_page(i32* %184, %struct.page* %186, i32 %187, i64 %198)
  %200 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %201 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %206 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %204, i32* %208, align 4
  %209 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %210 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load %struct.page*, %struct.page** %8, align 8
  %214 = call i32 @sg_assign_page(i32* %212, %struct.page* %213)
  %215 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %216 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %215, i32 0, i32 1
  store i32 1, i32* %216, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %219 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  br label %225

220:                                              ; preds = %169
  %221 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %222 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %221, i32 0, i32 1
  store i32 0, i32* %222, align 4
  %223 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %224 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %223, i32 0, i32 0
  store i32 0, i32* %224, align 8
  br label %225

225:                                              ; preds = %220, %180
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %167, %133
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i64) #1

declare dso_local i32 @crypto_blkcipher_blocksize(i32) #1

declare dso_local i32 @sg_mark_end(i32*) #1

declare dso_local i32 @crypto_blkcipher_encrypt_iv(%struct.TYPE_4__*, i32*, i32*, i32) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @sg_assign_page(i32*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
