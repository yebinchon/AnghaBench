; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_tblcmp.c_cmptmps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_tblcmp.c_cmptmps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSIZE = common dso_local global i32 0, align 4
@numtemps = common dso_local global i32 0, align 4
@numecs = common dso_local global i32 0, align 4
@tblend = common dso_local global i64 0, align 8
@peakpairs = common dso_local global i64 0, align 8
@usemecs = common dso_local global i64 0, align 8
@tecfwd = common dso_local global i32 0, align 4
@tecbck = common dso_local global i64* null, align 8
@nummecs = common dso_local global i32 0, align 4
@lastdfa = common dso_local global i64 0, align 8
@current_max_dfas = common dso_local global i64 0, align 8
@tnxt = common dso_local global i32* null, align 8
@JAMSTATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmptmps() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @CSIZE, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  store i32* %12, i32** %3, align 8
  %13 = load i32, i32* @numtemps, align 4
  %14 = load i32, i32* @numecs, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @tblend, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* @peakpairs, align 8
  %19 = load i64, i64* @usemecs, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %0
  %22 = load i32, i32* @tecfwd, align 4
  %23 = load i64*, i64** @tecbck, align 8
  %24 = load i32, i32* @numecs, align 4
  %25 = call i32 @cre8ecs(i32 %22, i64* %23, i32 %24)
  store i32 %25, i32* @nummecs, align 4
  br label %28

26:                                               ; preds = %0
  %27 = load i32, i32* @numecs, align 4
  store i32 %27, i32* @nummecs, align 4
  br label %28

28:                                               ; preds = %26, %21
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i64, i64* @lastdfa, align 8
  %31 = load i32, i32* @numtemps, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = add nsw i64 %33, 1
  %35 = load i64, i64* @current_max_dfas, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 (...) @increase_max_dfas()
  br label %29

39:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %111, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @numtemps, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %97, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @numecs, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %100

49:                                               ; preds = %45
  %50 = load i32*, i32** @tnxt, align 8
  %51 = load i32, i32* @numecs, align 4
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %50, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load i64, i64* @usemecs, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %49
  %62 = load i64*, i64** @tecbck, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load i64*, i64** @tecbck, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 %69, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %68
  br label %83

83:                                               ; preds = %82, %61
  br label %96

84:                                               ; preds = %49
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %84
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %45

100:                                              ; preds = %45
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* @nummecs, align 4
  %103 = load i64, i64* @lastdfa, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = add nsw i64 %106, 1
  %108 = load i32, i32* @JAMSTATE, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @mkentry(i32* %101, i32 %102, i64 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %40

114:                                              ; preds = %40
  %115 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %115)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cre8ecs(i32, i64*, i32) #2

declare dso_local i32 @increase_max_dfas(...) #2

declare dso_local i32 @mkentry(i32*, i32, i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
