; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_sha2big.c_sha2big_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_sha2big.c_sha2big_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @sha2big_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha2big_out(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca [8 x i8], align 1
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 127
  store i64 %14, i64* %9, align 8
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %9, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memcpy(i8* %15, i32 %18, i32 %20)
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i8* %22, i32 %25, i32 8)
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %9, align 8
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %27
  store i8 -128, i8* %29, align 1
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %30, 112
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 128, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i8* %35, i32 0, i32 %38)
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %42 = call i32 @sha2big_round(i8* %40, i8* %41)
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %44 = call i32 @memset(i8* %43, i32 0, i32 112)
  br label %53

45:                                               ; preds = %3
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 112, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i8* %48, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %45, %32
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 112
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 61
  %60 = call i32 @br_enc64be(i8* %55, i32 %59)
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 120
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 3
  %67 = call i32 @br_enc64be(i8* %62, i32 %66)
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %70 = call i32 @sha2big_round(i8* %68, i8* %69)
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @br_range_enc64be(i8* %71, i8* %72, i32 %73)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sha2big_round(i8*, i8*) #1

declare dso_local i32 @br_enc64be(i8*, i32) #1

declare dso_local i32 @br_range_enc64be(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
