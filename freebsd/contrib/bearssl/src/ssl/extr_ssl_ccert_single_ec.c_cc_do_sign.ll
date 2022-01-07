; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_ccert_single_ec.c_cc_do_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_ccert_single_ec.c_cc_do_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32*, i8*, i32, i8*)*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, i32, i64, i8*, i64)* @cc_do_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cc_do_sign(i32** %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = bitcast i32** %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %12, align 8
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @memcpy(i8* %17, i8* %18, i64 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32* @br_multihash_getimpl(i32 %23, i32 %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %47

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = icmp ult i64 %30, 139
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i64 0, i64* %6, align 8
  br label %47

33:                                               ; preds = %29
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64 (i32, i32*, i8*, i32, i8*)*, i64 (i32, i32*, i8*, i32, i8*)** %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 %36(i32 %39, i32* %40, i8* %41, i32 %44, i8* %45)
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %33, %32, %28
  %48 = load i64, i64* %6, align 8
  ret i64 %48
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @br_multihash_getimpl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
