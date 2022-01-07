; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/mac/extr_hmac.c_process_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/mac/extr_hmac.c_process_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__**, i8*)*, i32 (%struct.TYPE_7__**, i8*, i64)*, i32 (%struct.TYPE_7__**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__**, i8*, i8*, i64, i32)* @process_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_key(%struct.TYPE_7__** %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = call i64 @block_size(%struct.TYPE_7__* %15)
  store i64 %16, i64* %12, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @memcpy(i8* %17, i8* %18, i64 %19)
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %35, %5
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = trunc i32 %26 to i8
  %28 = zext i8 %27 to i32
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %32, %28
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %30, align 1
  br label %35

35:                                               ; preds = %25
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %13, align 8
  br label %21

38:                                               ; preds = %21
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @memset(i8* %41, i32 %42, i64 %45)
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32 (%struct.TYPE_7__**)*, i32 (%struct.TYPE_7__**)** %49, align 8
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %52 = call i32 %50(%struct.TYPE_7__** %51)
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_7__**, i8*, i64)*, i32 (%struct.TYPE_7__**, i8*, i64)** %55, align 8
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 %56(%struct.TYPE_7__** %57, i8* %58, i64 %59)
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_7__**, i8*)*, i32 (%struct.TYPE_7__**, i8*)** %63, align 8
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 %64(%struct.TYPE_7__** %65, i8* %66)
  ret void
}

declare dso_local i64 @block_size(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
