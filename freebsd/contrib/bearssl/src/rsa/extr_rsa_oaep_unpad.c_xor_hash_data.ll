; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_oaep_unpad.c_xor_hash_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_oaep_unpad.c_xor_hash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__**, i8*)*, i32 (%struct.TYPE_9__**, i8*, i64)*, i32 (%struct.TYPE_9__**)* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i8*, i64)* @xor_hash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xor_hash_data(%struct.TYPE_9__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load i32 (%struct.TYPE_9__**)*, i32 (%struct.TYPE_9__**)** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %20 = call i32 %18(%struct.TYPE_9__** %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_9__**, i8*, i64)*, i32 (%struct.TYPE_9__**, i8*, i64)** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 %23(%struct.TYPE_9__** %24, i8* %25, i64 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_9__**, i8*)*, i32 (%struct.TYPE_9__**, i8*)** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %33 = call i32 %30(%struct.TYPE_9__** %31, i8* %32)
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %11, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = call i64 @br_digest_size(%struct.TYPE_9__* %35)
  store i64 %36, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %53, %4
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = xor i32 %50, %45
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %48, align 1
  br label %53

53:                                               ; preds = %41
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %37

56:                                               ; preds = %37
  ret void
}

declare dso_local i64 @br_digest_size(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
