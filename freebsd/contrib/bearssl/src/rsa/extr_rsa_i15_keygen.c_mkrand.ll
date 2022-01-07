; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_keygen.c_mkrand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_keygen.c_mkrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__**, i32*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, i32*, i32)* @mkrand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkrand(%struct.TYPE_4__** %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 15
  %12 = ashr i32 %11, 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_4__**, i32*, i64)*, i32 (%struct.TYPE_4__**, i32*, i64)** %16, align 8
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i64, i64* %8, align 8
  %22 = mul i64 %21, 4
  %23 = call i32 %17(%struct.TYPE_4__** %18, i32* %20, i64 %22)
  store i64 1, i64* %7, align 8
  br label %24

24:                                               ; preds = %34, %3
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 32767
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %24

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 15
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 32767
  store i32 %47, i32* %45, align 4
  br label %57

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = sub i32 15, %49
  %51 = ashr i32 32767, %50
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %48, %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
