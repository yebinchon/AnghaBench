; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_do_KAT_PRF.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_do_KAT_PRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"TLS PRF KAT 1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"TLS PRF KAT 2\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"TLS PRF KAT 3\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"TLS PRF KAT 4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)*, i8*, i8*, i8*, i8*)* @do_KAT_PRF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_KAT_PRF(i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca [500 x i8], align 16
  %14 = alloca [500 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [2 x %struct.TYPE_4__], align 16
  store i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)* %0, i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @hextobin(i8* %19, i8* %20)
  store i64 %21, i64* %15, align 8
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @hextobin(i8* %22, i8* %23)
  store i64 %24, i64* %16, align 8
  %25 = getelementptr inbounds [500 x i8], [500 x i8]* %13, i64 0, i64 0
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @hextobin(i8* %25, i8* %26)
  store i64 %27, i64* %17, align 8
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %29 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 16
  %31 = load i64, i64* %16, align 8
  %32 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)*, i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)** %6, align 8
  %35 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %36 = load i64, i64* %17, align 8
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %38 = load i64, i64* %15, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %41 = call i32 %34(i8* %35, i64 %36, i8* %37, i64 %38, i8* %39, i32 1, %struct.TYPE_4__* %40)
  %42 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %43 = getelementptr inbounds [500 x i8], [500 x i8]* %13, i64 0, i64 0
  %44 = load i64, i64* %17, align 8
  %45 = call i32 @check_equals(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43, i64 %44)
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %47 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 16
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i8* null, i8** %53, align 16
  %54 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)*, i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)** %6, align 8
  %57 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %58 = load i64, i64* %17, align 8
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %60 = load i64, i64* %15, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %63 = call i32 %56(i8* %57, i64 %58, i8* %59, i64 %60, i8* %61, i32 2, %struct.TYPE_4__* %62)
  %64 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %65 = getelementptr inbounds [500 x i8], [500 x i8]* %13, i64 0, i64 0
  %66 = load i64, i64* %17, align 8
  %67 = call i32 @check_equals(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %65, i64 %66)
  %68 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* null, i8** %69, align 16
  %70 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %73 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 16
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)*, i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)** %6, align 8
  %79 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %80 = load i64, i64* %17, align 8
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %82 = load i64, i64* %15, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %85 = call i32 %78(i8* %79, i64 %80, i8* %81, i64 %82, i8* %83, i32 2, %struct.TYPE_4__* %84)
  %86 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %87 = getelementptr inbounds [500 x i8], [500 x i8]* %13, i64 0, i64 0
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @check_equals(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %86, i8* %87, i64 %88)
  %90 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %91 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 16
  %93 = load i64, i64* %16, align 8
  %94 = lshr i64 %93, 1
  %95 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %98 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 16
  %104 = load i64, i64* %16, align 8
  %105 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %104, %107
  %109 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)*, i32 (i8*, i64, i8*, i64, i8*, i32, %struct.TYPE_4__*)** %6, align 8
  %112 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %113 = load i64, i64* %17, align 8
  %114 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %115 = load i64, i64* %15, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %18, i64 0, i64 0
  %118 = call i32 %111(i8* %112, i64 %113, i8* %114, i64 %115, i8* %116, i32 2, %struct.TYPE_4__* %117)
  %119 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %120 = getelementptr inbounds [500 x i8], [500 x i8]* %13, i64 0, i64 0
  %121 = load i64, i64* %17, align 8
  %122 = call i32 @check_equals(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %119, i8* %120, i64 %121)
  ret void
}

declare dso_local i64 @hextobin(i8*, i8*) #1

declare dso_local i32 @check_equals(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
