; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_gcm.c_gcm_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_gcm.c_gcm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32, i32, i8*, i64*)* @gcm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gcm_encrypt(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [16 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i64*, i64** %10, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 16)
  %20 = load i8*, i8** %11, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @br_enc64be(i8* %21, i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 -8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %32 = call i32 @do_ctr(%struct.TYPE_5__* %26, i8* %28, i8* %29, i64 %30, i8* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = call i32 @do_tag(%struct.TYPE_5__* %33, i32 %34, i32 %35, i8* %36, i64 %37, i8* %40)
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %59, %5
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %43, 16
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %51, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, %49
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %59

59:                                               ; preds = %45
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %42

62:                                               ; preds = %42
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, 24
  store i64 %64, i64* %13, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -13
  store i8* %66, i8** %11, align 8
  %67 = load i32, i32* %7, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %68, i8* %70, align 1
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = call i32 @br_enc16be(i8* %72, i64 %74)
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @br_enc16be(i8* %77, i64 %78)
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 5
  %82 = load i64*, i64** %10, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i8*, i8** %11, align 8
  ret i8* %83
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @br_enc64be(i8*, i32) #1

declare dso_local i32 @do_ctr(%struct.TYPE_5__*, i8*, i8*, i64, i8*) #1

declare dso_local i32 @do_tag(%struct.TYPE_5__*, i32, i32, i8*, i64, i8*) #1

declare dso_local i32 @br_enc16be(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
