; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }

@ROSE_RR = common dso_local global i8 0, align 1
@ROSE_RNR = common dso_local global i8 0, align 1
@ROSE_DATA = common dso_local global i8 0, align 1
@ROSE_Q_BIT = common dso_local global i8 0, align 1
@ROSE_D_BIT = common dso_local global i8 0, align 1
@ROSE_M_BIT = common dso_local global i8 0, align 1
@ROSE_ILLEGAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rose_decode(%struct.sk_buff* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i32*, i32** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %12, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %10, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  switch i32 %26, label %32 [
    i32 132, label %27
    i32 133, label %27
    i32 130, label %27
    i32 131, label %27
    i32 128, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %6, %6, %6, %6, %6, %6
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %128

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 31
  %39 = load i8, i8* @ROSE_RR, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 31
  %48 = load i8, i8* @ROSE_RNR, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %42, %33
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = ashr i32 %55, 5
  %57 = and i32 %56, 7
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 31
  store i32 %63, i32* %7, align 4
  br label %128

64:                                               ; preds = %42
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 1
  %70 = load i8, i8* @ROSE_DATA, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %126

73:                                               ; preds = %64
  %74 = load i8*, i8** %14, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @ROSE_Q_BIT, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = load i8, i8* @ROSE_Q_BIT, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  %84 = zext i1 %83 to i32
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @ROSE_D_BIT, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %89, %91
  %93 = load i8, i8* @ROSE_D_BIT, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %12, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @ROSE_M_BIT, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %101, %103
  %105 = load i8, i8* @ROSE_M_BIT, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  %108 = zext i1 %107 to i32
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = ashr i32 %113, 5
  %115 = and i32 %114, 7
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i8*, i8** %14, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = ashr i32 %120, 1
  %122 = and i32 %121, 7
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i8, i8* @ROSE_DATA, align 1
  %125 = zext i8 %124 to i32
  store i32 %125, i32* %7, align 4
  br label %128

126:                                              ; preds = %64
  %127 = load i32, i32* @ROSE_ILLEGAL, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %73, %51, %27
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
