; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_crypto.c_hmac_md5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_crypto.c_hmac_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hmac_md5(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [65 x i8], align 16
  %13 = alloca [65 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 64
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = call i32 @MD5_Init(i32* %16)
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @MD5_Update(i32* %16, i8* %21, i32 %22)
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %25 = call i32 @MD5_Final(i8* %24, i32* %16)
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  store i8* %26, i8** %8, align 8
  store i32 16, i32* %9, align 4
  br label %27

27:                                               ; preds = %19, %5
  %28 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 0
  %29 = call i32 @bzero(i8* %28, i32 65)
  %30 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 0
  %31 = call i32 @bzero(i8* %30, i32 65)
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @bcopy(i8* %32, i8* %33, i32 %34)
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 0
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @bcopy(i8* %36, i8* %37, i32 %38)
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %58, %27
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 64
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %48, 54
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 1
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, 92
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %40

61:                                               ; preds = %40
  %62 = call i32 @MD5_Init(i32* %11)
  %63 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 0
  %64 = call i32 @MD5_Update(i32* %11, i8* %63, i32 64)
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @MD5_Update(i32* %11, i8* %65, i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @MD5_Final(i8* %68, i32* %11)
  %70 = call i32 @MD5_Init(i32* %11)
  %71 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 0
  %72 = call i32 @MD5_Update(i32* %11, i8* %71, i32 64)
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @MD5_Update(i32* %11, i8* %73, i32 16)
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @MD5_Final(i8* %75, i32* %11)
  ret void
}

declare dso_local i32 @MD5_Init(i32*) #1

declare dso_local i32 @MD5_Update(i32*, i8*, i32) #1

declare dso_local i32 @MD5_Final(i8*, i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
