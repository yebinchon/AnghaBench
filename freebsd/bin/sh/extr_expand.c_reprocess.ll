; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_reprocess.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_reprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worddest = type { i32 }

@reprocess.buf = internal global i8* null, align 8
@reprocess.buflen = internal global i64 0, align 8
@expdest = common dso_local global i8* null, align 8
@SIZE_MAX = common dso_local global i32 0, align 4
@PTRDIFF_MAX = common dso_local global i64 0, align 8
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@EXP_SPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.worddest*)* @reprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprocess(i32 %0, i32 %1, i32 %2, i32 %3, %struct.worddest* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.worddest*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.worddest* %4, %struct.worddest** %10, align 8
  %15 = call i8* (...) @stackblock()
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** @expdest, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* @SIZE_MAX, align 4
  %26 = sdiv i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @PTRDIFF_MAX, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %5
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %29
  %36 = load i32, i32* @INTOFF, align 4
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @reprocess.buflen, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** @reprocess.buf, align 8
  %42 = call i32 @ckfree(i8* %41)
  store i8* null, i8** @reprocess.buf, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i64, i64* @reprocess.buflen, align 8
  %45 = icmp ult i64 %44, 128
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i64 128, i64* @reprocess.buflen, align 8
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %52, %47
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @reprocess.buflen, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* @reprocess.buflen, align 8
  %54 = shl i64 %53, 1
  store i64 %54, i64* @reprocess.buflen, align 8
  br label %48

55:                                               ; preds = %48
  %56 = load i8*, i8** @reprocess.buf, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* @reprocess.buflen, align 8
  %60 = call i8* @ckmalloc(i64 %59)
  store i8* %60, i8** @reprocess.buf, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @INTON, align 4
  %63 = load i8*, i8** @reprocess.buf, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @memcpy(i8* %63, i8* %64, i64 %65)
  %67 = load i8*, i8** @reprocess.buf, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i64, i64* %12, align 8
  %71 = trunc i64 %70 to i32
  %72 = sub nsw i32 0, %71
  %73 = load i8*, i8** @expdest, align 8
  %74 = call i32 @STADJUST(i32 %72, i8* %73)
  store i64 0, i64* %13, align 8
  br label %75

75:                                               ; preds = %117, %61
  %76 = load i8*, i8** @reprocess.buf, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = call i64 @strlen(i8* %78)
  store i64 %79, i64* %14, align 8
  %80 = load i8*, i8** @reprocess.buf, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.worddest*, %struct.worddest** %10, align 8
  %87 = call i32 @strtodest(i8* %82, i32 %83, i32 %84, i32 %85, %struct.worddest* %86)
  %88 = load i64, i64* %14, align 8
  %89 = add i64 %88, 1
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %75
  br label %118

97:                                               ; preds = %75
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @EXP_SPLIT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %14, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %12, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108, %102
  %113 = load i32, i32* %7, align 4
  %114 = load i8*, i8** @expdest, align 8
  %115 = load %struct.worddest*, %struct.worddest** %10, align 8
  %116 = call i32 @NEXTWORD(i8 signext 0, i32 %113, i8* %114, %struct.worddest* %115)
  br label %117

117:                                              ; preds = %112, %108, %105, %97
  br label %75

118:                                              ; preds = %96
  ret void
}

declare dso_local i8* @stackblock(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ckfree(i8*) #1

declare dso_local i8* @ckmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @STADJUST(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strtodest(i8*, i32, i32, i32, %struct.worddest*) #1

declare dso_local i32 @NEXTWORD(i8 signext, i32, i8*, %struct.worddest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
