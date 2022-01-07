; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__get_comm_tgid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__get_comm_tgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/%d/status\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"couldn't open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"couldn't get COMM and pgid, malformed %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Tgid:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @perf_event__get_comm_tgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__get_comm_tgid(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @BUFSIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %24 = trunc i64 %18 to i32
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @snprintf(i8* %20, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %118

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %113, %32
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i1 [ true, %33 ], [ %40, %38 ]
  br i1 %42, label %43, label %114

43:                                               ; preds = %41
  %44 = trunc i64 %22 to i32
  %45 = load i32*, i32** %11, align 8
  %46 = call i32* @fgets(i8* %23, i32 %44, i32* %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  br label %114

50:                                               ; preds = %43
  %51 = call i64 @memcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, i8* %23, i64 5
  store i8* %54, i8** %15, align 8
  br label %55

55:                                               ; preds = %67, %53
  %56 = load i8*, i8** %15, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %15, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @isspace(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %15, align 8
  br label %55

70:                                               ; preds = %65
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, 1
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @memcpy(i8* %82, i8* %83, i64 %84)
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 0, i8* %88, align 1
  br label %113

89:                                               ; preds = %50
  %90 = call i64 @memcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, i8* %23, i64 5
  store i8* %93, i8** %16, align 8
  br label %94

94:                                               ; preds = %106, %92
  %95 = load i8*, i8** %16, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i8*, i8** %16, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @isspace(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i1 [ false, %94 ], [ %103, %99 ]
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i8*, i8** %16, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %16, align 8
  br label %94

109:                                              ; preds = %104
  %110 = load i8*, i8** %16, align 8
  %111 = call i32 @atoi(i8* %110)
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %109, %89
  br label %113

113:                                              ; preds = %112, %81
  br label %33

114:                                              ; preds = %48, %41
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @fclose(i32* %115)
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %118

118:                                              ; preds = %114, %30
  %119 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @pr_warning(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
