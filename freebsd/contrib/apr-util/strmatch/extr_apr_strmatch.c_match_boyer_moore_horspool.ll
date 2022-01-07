; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/strmatch/extr_apr_strmatch.c_match_boyer_moore_horspool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/strmatch/extr_apr_strmatch.c_match_boyer_moore_horspool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*, i32)* @match_boyer_moore_horspool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match_boyer_moore_horspool(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  store i8* %29, i8** %10, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  store i8* %39, i8** %12, align 8
  br label %40

40:                                               ; preds = %66, %3
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %12, align 8
  store i8* %46, i8** %14, align 8
  br label %47

47:                                               ; preds = %63, %44
  %48 = load i8*, i8** %13, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8*, i8** %14, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i8*, i8** %13, align 8
  store i8* %62, i8** %4, align 8
  br label %78

63:                                               ; preds = %55
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %13, align 8
  br label %47

66:                                               ; preds = %47
  %67 = load i32*, i32** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %10, align 8
  br label %40

77:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
