; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_x509_decoder.c_br_x509_decoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_x509_decoder.c_br_x509_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { void (i8*, i8*, i64)*, %struct.TYPE_7__, i32*, i32*, i8* }
%struct.TYPE_7__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_x509_decoder_init(%struct.TYPE_6__* %0, void (i8*, i8*, i64)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca void (i8*, i8*, i64)*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store void (i8*, i8*, i64)* %1, void (i8*, i8*, i64)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 48)
  %9 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store void (i8*, i8*, i64)* %9, void (i8*, i8*, i64)** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32* %18, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = call i32 @br_x509_decoder_init_main(%struct.TYPE_7__* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = call i32 @br_x509_decoder_run(%struct.TYPE_7__* %33)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @br_x509_decoder_init_main(%struct.TYPE_7__*) #1

declare dso_local i32 @br_x509_decoder_run(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
