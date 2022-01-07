; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_chapol.c_gen_chapol_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_chapol.c_gen_chapol_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 (i32, i8*, i8*, i64, i8*, i32, i8*, i32, i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*, i64, i8*, i32)* @gen_chapol_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_chapol_process(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [13 x i8], align 1
  %16 = alloca [12 x i8], align 1
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  %23 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 0
  %24 = load i32, i32* %17, align 4
  %25 = call i32 @br_enc64be(i8* %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 8
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 9
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = call i32 @br_enc16be(i8* %30, i64 %32)
  %34 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 11
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @br_enc16be(i8* %35, i64 %36)
  %38 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memcpy(i8* %38, i32 %41, i32 12)
  store i64 0, i64* %18, align 8
  br label %43

43:                                               ; preds = %59, %7
  %44 = load i64, i64* %18, align 8
  %45 = icmp ult i64 %44, 8
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32, i32* %17, align 4
  %48 = trunc i32 %47 to i8
  %49 = zext i8 %48 to i32
  %50 = load i64, i64* %18, align 8
  %51 = sub i64 11, %50
  %52 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, %49
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  %57 = load i32, i32* %17, align 4
  %58 = ashr i32 %57, 8
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i64, i64* %18, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %18, align 8
  br label %43

62:                                               ; preds = %43
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32 (i32, i8*, i8*, i64, i8*, i32, i8*, i32, i32)*, i32 (i32, i8*, i8*, i64, i8*, i32, i8*, i32, i32)** %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %70 = load i8*, i8** %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds [13 x i8], [13 x i8]* %15, i64 0, i64 0
  %73 = load i8*, i8** %13, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 %65(i32 %68, i8* %69, i8* %70, i64 %71, i8* %72, i32 13, i8* %73, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @br_enc64be(i8*, i32) #1

declare dso_local i32 @br_enc16be(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
