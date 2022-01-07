; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/mac/extr_hmac.c_br_hmac_key_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/mac/extr_hmac.c_br_hmac_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__**, i8*)*, i32 (%struct.TYPE_14__**, i8*, i64)*, i32 (%struct.TYPE_14__**)* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_hmac_key_init(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca [64 x i8], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %13, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = call i64 @block_size(%struct.TYPE_14__* %17)
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load i32 (%struct.TYPE_14__**)*, i32 (%struct.TYPE_14__**)** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %25 = call i32 %23(%struct.TYPE_14__** %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_14__**, i8*, i64)*, i32 (%struct.TYPE_14__**, i8*, i64)** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 %28(%struct.TYPE_14__** %29, i8* %30, i64 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_14__**, i8*)*, i32 (%struct.TYPE_14__**, i8*)** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %38 = call i32 %35(%struct.TYPE_14__** %36, i8* %37)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %39, i8** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = call i64 @br_digest_size(%struct.TYPE_14__* %40)
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %20, %4
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @process_key(%struct.TYPE_14__** %43, i32 %46, i8* %47, i64 %48, i32 54)
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @process_key(%struct.TYPE_14__** %50, i32 %53, i8* %54, i64 %55, i32 92)
  ret void
}

declare dso_local i64 @block_size(%struct.TYPE_14__*) #1

declare dso_local i64 @br_digest_size(%struct.TYPE_14__*) #1

declare dso_local i32 @process_key(%struct.TYPE_14__**, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
