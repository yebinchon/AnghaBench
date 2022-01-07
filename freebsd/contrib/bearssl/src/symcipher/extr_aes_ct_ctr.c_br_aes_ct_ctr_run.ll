; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctr.c_br_aes_ct_ctr_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctr.c_br_aes_ct_ctr_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_aes_ct_ctr_run(%struct.TYPE_3__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [120 x i64], align 16
  %17 = alloca [8 x i64], align 16
  %18 = alloca [32 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = getelementptr inbounds [120 x i64], [120 x i64]* %16, i64 0, i64 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @br_aes_ct_skey_expand(i64* %19, i32 %22, i32 %25)
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i64 @br_dec32le(i8* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = call i64 @br_dec32le(i8* %31)
  store i64 %32, i64* %14, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  %35 = call i64 @br_dec32le(i8* %34)
  store i64 %35, i64* %15, align 8
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %122, %5
  %38 = load i64, i64* %10, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %132

40:                                               ; preds = %37
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 0
  store i64 %41, i64* %43, align 16
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 3
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 2
  store i64 %44, i64* %46, align 16
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 5
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 4
  store i64 %47, i64* %49, align 16
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @br_swap32(i64 %50)
  %52 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 6
  store i64 %51, i64* %52, align 16
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i64 @br_swap32(i64 %54)
  %56 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 7
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 0
  %58 = call i32 @br_aes_ct_ortho(i64* %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [120 x i64], [120 x i64]* %16, i64 0, i64 0
  %63 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 0
  %64 = call i32 @br_aes_ct_bitslice_encrypt(i32 %61, i64* %62, i64* %63)
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 0
  %66 = call i32 @br_aes_ct_ortho(i64* %65)
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %68 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 0
  %69 = load i64, i64* %68, align 16
  %70 = call i32 @br_enc32le(i8* %67, i64 %69)
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 2
  %74 = load i64, i64* %73, align 16
  %75 = call i32 @br_enc32le(i8* %72, i64 %74)
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %77 = getelementptr inbounds i8, i8* %76, i64 8
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 4
  %79 = load i64, i64* %78, align 16
  %80 = call i32 @br_enc32le(i8* %77, i64 %79)
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %82 = getelementptr inbounds i8, i8* %81, i64 12
  %83 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 6
  %84 = load i64, i64* %83, align 16
  %85 = call i32 @br_enc32le(i8* %82, i64 %84)
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %87 = getelementptr inbounds i8, i8* %86, i64 16
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @br_enc32le(i8* %87, i64 %89)
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %92 = getelementptr inbounds i8, i8* %91, i64 20
  %93 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @br_enc32le(i8* %92, i64 %94)
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %97 = getelementptr inbounds i8, i8* %96, i64 24
  %98 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 5
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @br_enc32le(i8* %97, i64 %99)
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %102 = getelementptr inbounds i8, i8* %101, i64 28
  %103 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 7
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @br_enc32le(i8* %102, i64 %104)
  %106 = load i64, i64* %10, align 8
  %107 = icmp ule i64 %106, 32
  br i1 %107, label %108, label %122

108:                                              ; preds = %40
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %111 = load i64, i64* %10, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @xorbuf(i8* %109, i8* %110, i32 %112)
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp ugt i64 %116, 16
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load i64, i64* %8, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %118, %108
  br label %132

122:                                              ; preds = %40
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %125 = call i32 @xorbuf(i8* %123, i8* %124, i32 32)
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 32
  store i8* %127, i8** %11, align 8
  %128 = load i64, i64* %10, align 8
  %129 = sub i64 %128, 32
  store i64 %129, i64* %10, align 8
  %130 = load i64, i64* %8, align 8
  %131 = add nsw i64 %130, 2
  store i64 %131, i64* %8, align 8
  br label %37

132:                                              ; preds = %121, %37
  %133 = load i64, i64* %8, align 8
  ret i64 %133
}

declare dso_local i32 @br_aes_ct_skey_expand(i64*, i32, i32) #1

declare dso_local i64 @br_dec32le(i8*) #1

declare dso_local i64 @br_swap32(i64) #1

declare dso_local i32 @br_aes_ct_ortho(i64*) #1

declare dso_local i32 @br_aes_ct_bitslice_encrypt(i32, i64*, i64*) #1

declare dso_local i32 @br_enc32le(i8*, i64) #1

declare dso_local i32 @xorbuf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
