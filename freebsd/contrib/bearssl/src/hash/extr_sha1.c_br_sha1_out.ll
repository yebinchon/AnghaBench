; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_sha1.c_br_sha1_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_sha1.c_br_sha1_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_sha1_out(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca [5 x i8], align 1
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = and i64 %11, 63
  store i64 %12, i64* %7, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memcpy(i8* %13, i32 %16, i32 %18)
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i8* %20, i32 %23, i32 5)
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %25
  store i8 -128, i8* %27, align 1
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %28, 56
  br i1 %29, label %30, label %43

30:                                               ; preds = %2
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 64, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i8* %33, i32 0, i32 %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %40 = call i32 @br_sha1_round(i8* %38, i8* %39)
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i32 0, i32 56)
  br label %51

43:                                               ; preds = %2
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 56, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memset(i8* %46, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %43, %30
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %53 = getelementptr inbounds i8, i8* %52, i64 56
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 3
  %58 = call i32 @br_enc64be(i8* %53, i32 %57)
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %61 = call i32 @br_sha1_round(i8* %59, i8* %60)
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %64 = call i32 @br_range_enc32be(i8* %62, i8* %63, i32 5)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @br_sha1_round(i8*, i8*) #1

declare dso_local i32 @br_enc64be(i8*, i32) #1

declare dso_local i32 @br_range_enc32be(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
