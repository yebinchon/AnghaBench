; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_nextword.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_nextword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worddest = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WORD_QUOTEMARK = common dso_local global i64 0, align 8
@WORD_WS_DELIMITED = common dso_local global i64 0, align 8
@EXP_GLOB = common dso_local global i32 0, align 4
@WORD_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, i32, i8*, %struct.worddest*)* @nextword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nextword(i8 signext %0, i32 %1, i8* %2, %struct.worddest* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.worddest*, align 8
  %9 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.worddest* %3, %struct.worddest** %8, align 8
  %10 = load i8, i8* %5, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br label %21

21:                                               ; preds = %17, %13, %4
  %22 = phi i1 [ true, %13 ], [ true, %4 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* (...) @stackblock()
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %46, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.worddest*, %struct.worddest** %8, align 8
  %32 = getelementptr inbounds %struct.worddest, %struct.worddest* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WORD_QUOTEMARK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %46, label %42

36:                                               ; preds = %27
  %37 = load %struct.worddest*, %struct.worddest** %8, align 8
  %38 = getelementptr inbounds %struct.worddest, %struct.worddest* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WORD_WS_DELIMITED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %36, %30
  %43 = load i8, i8* %5, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %42, %36, %30, %21
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @STPUTC(i8 signext 0, i8* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EXP_GLOB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = call i32* @grabstackstr(i8* %54)
  %56 = load %struct.worddest*, %struct.worddest** %8, align 8
  %57 = getelementptr inbounds %struct.worddest, %struct.worddest* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @expandmeta(i32* %55, %struct.TYPE_3__* %58)
  br label %67

60:                                               ; preds = %46
  %61 = load %struct.worddest*, %struct.worddest** %8, align 8
  %62 = getelementptr inbounds %struct.worddest, %struct.worddest* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32* @grabstackstr(i8* %64)
  %66 = call i32 @appendarglist(%struct.TYPE_3__* %63, i32* %65)
  br label %67

67:                                               ; preds = %60, %53
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* @WORD_WS_DELIMITED, align 8
  br label %74

72:                                               ; preds = %67
  %73 = load i64, i64* @WORD_IDLE, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i64 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.worddest*, %struct.worddest** %8, align 8
  %77 = getelementptr inbounds %struct.worddest, %struct.worddest* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %92

78:                                               ; preds = %42
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load %struct.worddest*, %struct.worddest** %8, align 8
  %83 = getelementptr inbounds %struct.worddest, %struct.worddest* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WORD_WS_DELIMITED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i64, i64* @WORD_IDLE, align 8
  %89 = load %struct.worddest*, %struct.worddest** %8, align 8
  %90 = getelementptr inbounds %struct.worddest, %struct.worddest* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %81, %78
  br label %92

92:                                               ; preds = %91, %74
  %93 = load %struct.worddest*, %struct.worddest** %8, align 8
  %94 = getelementptr inbounds %struct.worddest, %struct.worddest* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = call i32 @appendarglist(%struct.TYPE_3__* %95, i32* null)
  %97 = load %struct.worddest*, %struct.worddest** %8, align 8
  %98 = getelementptr inbounds %struct.worddest, %struct.worddest* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @STARTSTACKSTR(i8* %103)
  %105 = load i8*, i8** %7, align 8
  ret i8* %105
}

declare dso_local i8* @stackblock(...) #1

declare dso_local i32 @STPUTC(i8 signext, i8*) #1

declare dso_local i32 @expandmeta(i32*, %struct.TYPE_3__*) #1

declare dso_local i32* @grabstackstr(i8*) #1

declare dso_local i32 @appendarglist(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @STARTSTACKSTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
