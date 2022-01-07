; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_decryptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_decryptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i64 }
%struct.decryptor_desc = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i8*)* @decryptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decryptor(%struct.scatterlist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.decryptor_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.decryptor_desc*
  store %struct.decryptor_desc* %11, %struct.decryptor_desc** %6, align 8
  %12 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %13 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %16 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %20 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 3
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %26 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %29 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %34 = call i32 @sg_page(%struct.scatterlist* %33)
  %35 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @sg_set_page(i32* %32, i32 %34, i32 %37, i64 %40)
  %42 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %43 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %50 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %55 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @crypto_blkcipher_blocksize(i32 %57)
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %53, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

67:                                               ; preds = %2
  %68 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %69 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %72 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = call i32 @sg_mark_end(i32* %76)
  %78 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %79 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %78, i32 0, i32 3
  %80 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %81 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %84 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @crypto_blkcipher_decrypt_iv(%struct.TYPE_2__* %79, i32* %82, i32* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %67
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %130

92:                                               ; preds = %67
  %93 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %94 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @sg_init_table(i32* %95, i32 4)
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %92
  %100 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %101 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %105 = call i32 @sg_page(%struct.scatterlist* %104)
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %108 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %111 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %109, %113
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %114, %116
  %118 = call i32 @sg_set_page(i32* %103, i32 %105, i32 %106, i64 %117)
  %119 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %120 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %123 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %129

124:                                              ; preds = %92
  %125 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %126 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %128 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  br label %129

129:                                              ; preds = %124, %99
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %90, %66
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sg_set_page(i32*, i32, i32, i64) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @crypto_blkcipher_blocksize(i32) #1

declare dso_local i32 @sg_mark_end(i32*) #1

declare dso_local i32 @crypto_blkcipher_decrypt_iv(%struct.TYPE_2__*, i32*, i32*, i32) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
