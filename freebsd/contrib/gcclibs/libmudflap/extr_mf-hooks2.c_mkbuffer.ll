; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-hooks2.c_mkbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-hooks2.c_mkbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mf_filebuffer = type { i8*, %struct.mf_filebuffer*, i32* }

@BUFSIZ = common dso_local global i64 0, align 8
@mf_filebuffers = common dso_local global %struct.mf_filebuffer* null, align 8
@_IONBF = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@_IOFBF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mkbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkbuffer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mf_filebuffer*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i64, i64* @BUFSIZ, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i8* @malloc(i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = call i8* @malloc(i32 24)
  %13 = bitcast i8* %12 to %struct.mf_filebuffer*
  store %struct.mf_filebuffer* %13, %struct.mf_filebuffer** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %7, align 8
  %18 = icmp ne %struct.mf_filebuffer* %17, null
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i1 [ false, %1 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %7, align 8
  %25 = getelementptr inbounds %struct.mf_filebuffer, %struct.mf_filebuffer* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %7, align 8
  %28 = getelementptr inbounds %struct.mf_filebuffer, %struct.mf_filebuffer* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** @mf_filebuffers, align 8
  %30 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %7, align 8
  %31 = getelementptr inbounds %struct.mf_filebuffer, %struct.mf_filebuffer* %30, i32 0, i32 1
  store %struct.mf_filebuffer* %29, %struct.mf_filebuffer** %31, align 8
  %32 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %7, align 8
  store %struct.mf_filebuffer* %32, %struct.mf_filebuffer** @mf_filebuffers, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @fileno(i32* %33)
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* @_IONBF, align 4
  br label %49

38:                                               ; preds = %19
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @fileno(i32* %39)
  %41 = call i64 @isatty(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @_IOLBF, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @_IOFBF, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %36
  %50 = phi i32 [ %37, %36 ], [ %48, %47 ]
  store i32 %50, i32* %5, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @setvbuf(i32* %51, i8* %52, i32 %53, i64 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @setvbuf(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
