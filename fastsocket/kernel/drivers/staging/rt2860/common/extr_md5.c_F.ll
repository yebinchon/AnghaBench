; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_md5.c_F.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_md5.c_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [36 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %18 = load i32, i32* @SHA_DIGEST_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 0
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @memcpy(i8* %22, i8* %23, i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 %31
  store i8 %29, i8* %32, align 1
  %33 = load i32, i32* %11, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 %39
  store i8 %36, i8* %40, align 1
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 %47
  store i8 %44, i8* %48, align 1
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 %54
  store i8 %51, i8* %55, align 1
  %56 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 0
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = trunc i64 %61 to i32
  %63 = call i32 @HMAC_SHA1(i8* %56, i32 %58, i8* %59, i32 %62, i8* %21)
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* @SHA_DIGEST_LEN, align 4
  %66 = call i32 @memcpy(i8* %64, i8* %21, i32 %65)
  store i32 1, i32* %16, align 4
  br label %67

67:                                               ; preds = %104, %6
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %67
  %72 = load i32, i32* @SHA_DIGEST_LEN, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 0
  %78 = call i32 @HMAC_SHA1(i8* %21, i32 %72, i8* %73, i32 %76, i8* %77)
  %79 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 0
  %80 = load i32, i32* @SHA_DIGEST_LEN, align 4
  %81 = call i32 @memcpy(i8* %21, i8* %79, i32 %80)
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %100, %71
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @SHA_DIGEST_LEN, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = xor i32 %97, %91
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %95, align 1
  br label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %82

103:                                              ; preds = %82
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %67

107:                                              ; preds = %67
  %108 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @HMAC_SHA1(i8*, i32, i8*, i32, i8*) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
