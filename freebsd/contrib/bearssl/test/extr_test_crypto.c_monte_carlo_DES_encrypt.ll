; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_monte_carlo_DES_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_monte_carlo_DES_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i8*, i8*, i32)*, i32 (i8*, i8*, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"9ec2372c86379df4\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ad7ac4464f73805d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"20c4f87564527c91\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"b624d6bd41783ab1\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"eafd97b190b167fe\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"MC DES encrypt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @monte_carlo_DES_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monte_carlo_DES_encrypt(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [24 x i8], align 16
  %13 = alloca [8 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %14 = bitcast i32* %10 to i8*
  store i8* %14, i8** %11, align 8
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %16 = call i32 @hextobin(i8* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %18 = call i32 @hextobin(i8* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %20 = call i32 @hextobin(i8* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %22 = call i32 @hextobin(i8* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %24 = call i32 @hextobin(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %80, %1
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 400
  br i1 %27, label %28, label %83

28:                                               ; preds = %25
  %29 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %31 = call i32 @memcpy(i8* %29, i8* %30, i32 8)
  %32 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %35 = call i32 @memcpy(i8* %33, i8* %34, i32 8)
  %36 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 16
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %39 = call i32 @memcpy(i8* %37, i8* %38, i32 8)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %41, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %45 = call i32 %42(i8* %43, i8* %44, i32 24)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %73, %28
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 10000
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %51 = call i32 @memset(i8* %50, i32 0, i32 8)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (i8*, i8*, i8*, i32)*, i32 (i8*, i8*, i8*, i32)** %53, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %58 = call i32 %54(i8* %55, i8* %56, i8* %57, i32 8)
  %59 = load i32, i32* %9, align 4
  switch i32 %59, label %72 [
    i32 9997, label %60
    i32 9998, label %64
    i32 9999, label %68
  ]

60:                                               ; preds = %49
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %63 = call i32 @xor_buf(i8* %61, i8* %62, i32 8)
  br label %72

64:                                               ; preds = %49
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %67 = call i32 @xor_buf(i8* %65, i8* %66, i32 8)
  br label %72

68:                                               ; preds = %49
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %71 = call i32 @xor_buf(i8* %69, i8* %70, i32 8)
  br label %72

72:                                               ; preds = %49, %68, %64, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %46

76:                                               ; preds = %46
  %77 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @fflush(i32 %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %25

83:                                               ; preds = %25
  %84 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* @stdout, align 4
  %86 = call i32 @fflush(i32 %85)
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %89 = call i32 @check_equals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %87, i8* %88, i32 8)
  ret void
}

declare dso_local i32 @hextobin(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @xor_buf(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @check_equals(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
