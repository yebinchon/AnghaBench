; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_ccm.c_ccm_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_ccm.c_ccm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32, i32, i8*, i64*)* @ccm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ccm_decrypt(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [12 x i8], align 1
  %15 = alloca [13 x i8], align 1
  %16 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  store i8* %18, i8** %13, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 8, %23
  %25 = sext i32 %24 to i64
  %26 = sub i64 %20, %25
  store i64 %26, i64* %16, align 8
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @memcpy(i8* %27, i8* %30, i32 8)
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @memcpy(i8* %33, i8* %34, i32 8)
  %36 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = call i32 @br_enc64be(i8* %36, i32 %39)
  %42 = load i32, i32* %8, align 4
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 8
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 0
  %46 = getelementptr inbounds i8, i8* %45, i64 9
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = call i32 @br_enc16be(i8* %46, i64 %48)
  %50 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 0
  %51 = getelementptr inbounds i8, i8* %50, i64 11
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @br_enc16be(i8* %51, i64 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @br_ccm_init(i32* %12, i32* %56)
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  %59 = load i64, i64* %16, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @br_ccm_reset(i32* %12, i8* %58, i32 12, i32 13, i64 %59, i32 %62)
  %64 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 0
  %65 = call i32 @br_ccm_aad_inject(i32* %12, i8* %64, i32 13)
  %66 = call i32 @br_ccm_flip(i32* %12)
  %67 = load i8*, i8** %13, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @br_ccm_run(i32* %12, i32 0, i8* %67, i64 %68)
  %70 = load i8*, i8** %13, align 8
  %71 = load i64, i64* %16, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = call i32 @br_ccm_check_tag(i32* %12, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %80

76:                                               ; preds = %5
  %77 = load i64, i64* %16, align 8
  %78 = load i64*, i64** %11, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i8*, i8** %13, align 8
  store i8* %79, i8** %6, align 8
  br label %80

80:                                               ; preds = %76, %75
  %81 = load i8*, i8** %6, align 8
  ret i8* %81
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @br_enc64be(i8*, i32) #1

declare dso_local i32 @br_enc16be(i8*, i64) #1

declare dso_local i32 @br_ccm_init(i32*, i32*) #1

declare dso_local i32 @br_ccm_reset(i32*, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @br_ccm_aad_inject(i32*, i8*, i32) #1

declare dso_local i32 @br_ccm_flip(i32*) #1

declare dso_local i32 @br_ccm_run(i32*, i32, i8*, i64) #1

declare dso_local i32 @br_ccm_check_tag(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
