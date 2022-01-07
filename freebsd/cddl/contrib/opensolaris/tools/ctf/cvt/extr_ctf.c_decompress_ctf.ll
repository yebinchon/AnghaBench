; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_decompress_ctf.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_decompress_ctf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32*, i32, i32*, i64, i64, i64 }

@Z_OK = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CTF decompress zlib error %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"reflated %lu bytes to %lu, pointer at %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64)* @decompress_ctf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decompress_ctf(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32* %16, i32** %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i32* %21, i32** %22, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = call i32 @inflateInit(%struct.TYPE_5__* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @Z_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @Z_NO_FLUSH, align 4
  %30 = call i32 @inflate(%struct.TYPE_5__* %10, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @Z_STREAM_END, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = call i32 @inflateEnd(%struct.TYPE_5__* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @Z_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %28, %4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @zError(i32 %38)
  %40 = call i32 @warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i64 0, i64* %5, align 8
  br label %54

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = ptrtoint i32* %47 to i64
  %49 = load i64, i64* %6, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call i32 @debug(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %45, i64 %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %41, %37
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local i32 @inflateInit(%struct.TYPE_5__*) #1

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @zError(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
