; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_ccm.c_ccm_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_ccm.c_ccm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32, i32, i8*, i64*)* @ccm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ccm_encrypt(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [12 x i8], align 1
  %14 = alloca [13 x i8], align 1
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %15, align 8
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @memcpy(i8* %19, i8* %22, i32 8)
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @br_enc64be(i8* %25, i32 %28)
  %30 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = call i32 @br_enc64be(i8* %30, i32 %33)
  %36 = load i32, i32* %7, align 4
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 8
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 9
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = call i32 @br_enc16be(i8* %40, i64 %42)
  %44 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 11
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @br_enc16be(i8* %45, i64 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @br_ccm_init(i32* %11, i32* %50)
  %52 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %53 = load i64, i64* %15, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @br_ccm_reset(i32* %11, i8* %52, i32 12, i32 13, i64 %53, i32 %56)
  %58 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %59 = call i32 @br_ccm_aad_inject(i32* %11, i8* %58, i32 13)
  %60 = call i32 @br_ccm_flip(i32* %11)
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @br_ccm_run(i32* %11, i32 1, i8* %61, i64 %62)
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = call i32 @br_ccm_get_tag(i32* %11, i8* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 8, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %15, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %15, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -13
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 5
  %79 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = call i32 @memcpy(i8* %78, i8* %80, i32 8)
  %82 = load i32, i32* %7, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 %83, i8* %85, align 1
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = call i32 @br_enc16be(i8* %87, i64 %89)
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i64, i64* %15, align 8
  %94 = call i32 @br_enc16be(i8* %92, i64 %93)
  %95 = load i64, i64* %15, align 8
  %96 = add i64 %95, 5
  %97 = load i64*, i64** %10, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i8*, i8** %12, align 8
  ret i8* %98
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @br_enc64be(i8*, i32) #1

declare dso_local i32 @br_enc16be(i8*, i64) #1

declare dso_local i32 @br_ccm_init(i32*, i32*) #1

declare dso_local i32 @br_ccm_reset(i32*, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @br_ccm_aad_inject(i32*, i8*, i32) #1

declare dso_local i32 @br_ccm_flip(i32*) #1

declare dso_local i32 @br_ccm_run(i32*, i32, i8*, i64) #1

declare dso_local i32 @br_ccm_get_tag(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
