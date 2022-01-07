; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun2amd.c_sun2amd_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun2amd.c_sun2amd_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFO_MAX_LINE_LEN = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"map line %d has no entry\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"parse error on line %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"can't write to output stream: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @sun2amd_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun2amd_convert(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @INFO_MAX_LINE_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %17 = trunc i64 %14 to i32
  %18 = call i32 @memset(i8* %16, i32 0, i32 %17)
  br label %19

19:                                               ; preds = %115, %56, %2
  %20 = trunc i64 %14 to i32
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @file_read_line(i8* %16, i32 %20, i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %118

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %16, i64 %29
  store i8 0, i8* %30, align 1
  %31 = call i8* @strchr(i8* %16, i8 signext 35)
  store i8* %31, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %24
  store i8* %16, i8** %8, align 8
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isspace(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  br label %36

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %19

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %71, %57
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @isspace(i8 zeroext %66)
  %68 = icmp eq i64 %67, 0
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i1 [ false, %59 ], [ %68, %64 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  br label %59

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @XLOG_ERROR, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @plog(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %119

83:                                               ; preds = %74
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  store i8 0, i8* %84, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @XLOG_ERROR, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @plog(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %119

94:                                               ; preds = %83
  %95 = load i8*, i8** %7, align 8
  store i8* %95, i8** %9, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i8* @sun_entry2amd(i8* %96, i8* %97)
  store i8* %98, i8** %7, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @XLOG_ERROR, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @plog(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %119

104:                                              ; preds = %94
  %105 = load i32*, i32** %4, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i64 @fprintf(i32* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %106, i8* %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32, i32* @XLOG_ERROR, align 4
  %112 = load i32, i32* @errno, align 4
  %113 = call i32 @strerror(i32 %112)
  %114 = call i32 @plog(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %119

115:                                              ; preds = %104
  %116 = trunc i64 %14 to i32
  %117 = call i32 @memset(i8* %16, i32 0, i32 %116)
  br label %19

118:                                              ; preds = %19
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %110, %100, %90, %79
  %120 = load i32, i32* %12, align 4
  %121 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %121)
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @file_read_line(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @plog(i32, i8*, i32) #2

declare dso_local i8* @sun_entry2amd(i8*, i8*) #2

declare dso_local i64 @fprintf(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
