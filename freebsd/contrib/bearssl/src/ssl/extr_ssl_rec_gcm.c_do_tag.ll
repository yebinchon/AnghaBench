; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_gcm.c_do_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_gcm.c_do_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i8*, i32, i8*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*, i64, i8*)* @do_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tag(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [13 x i8], align 1
  %14 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = call i32 @br_enc64be(i8* %15, i32 %18)
  %21 = load i32, i32* %8, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 8
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 9
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = call i32 @br_enc16be(i8* %25, i64 %27)
  %29 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 11
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @br_enc16be(i8* %30, i64 %31)
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %34 = call i32 @br_enc64be(i8* %33, i32 104)
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = load i64, i64* %11, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 3
  %40 = call i32 @br_enc64be(i8* %36, i32 %39)
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @memset(i8* %41, i32 0, i32 16)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %44, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [13 x i8], [13 x i8]* %13, i64 0, i64 0
  %51 = call i32 %45(i8* %46, i32 %49, i8* %50, i32 13)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %53, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 %54(i8* %55, i32 %58, i8* %59, i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %64, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %71 = call i32 %65(i8* %66, i32 %69, i8* %70, i32 16)
  ret void
}

declare dso_local i32 @br_enc64be(i8*, i32) #1

declare dso_local i32 @br_enc16be(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
