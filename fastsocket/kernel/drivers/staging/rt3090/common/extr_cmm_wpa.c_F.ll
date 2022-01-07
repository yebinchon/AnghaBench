; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/common/extr_cmm_wpa.c_F.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/common/extr_cmm_wpa.c_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, i8*)* @F to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @F(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
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
  %18 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
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
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 0
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 4
  %63 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %64 = call i32 @HMAC_SHA1(i8* %56, i32 %59, i8* %60, i32 %62, i8* %21, i32 %63)
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %67 = call i32 @memcpy(i8* %65, i8* %21, i32 %66)
  store i32 1, i32* %16, align 4
  br label %68

68:                                               ; preds = %106, %6
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %78 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 0
  %79 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %80 = call i32 @HMAC_SHA1(i8* %73, i32 %76, i8* %21, i32 %77, i8* %78, i32 %79)
  %81 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 0
  %82 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %83 = call i32 @memcpy(i8* %21, i8* %81, i32 %82)
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %102, %72
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [36 x i8], [36 x i8]* %13, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = xor i32 %99, %93
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %17, align 4
  br label %84

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %68

109:                                              ; preds = %68
  %110 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %110)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @HMAC_SHA1(i8*, i32, i8*, i32, i8*, i32) #2

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
