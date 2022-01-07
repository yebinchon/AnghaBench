; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzlib.c_bzopen_or_bzdopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzlib.c_bzopen_or_bzdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BZ_MAX_UNUSED = common dso_local global i32 0, align 4
@BZ_HDR_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*, i32)* @bzopen_or_bzdopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bzopen_or_bzdopen(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [10 x i8], align 1
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* @BZ_MAX_UNUSED, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  store i32 9, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = bitcast [10 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %27, i8 0, i64 10, i1 false)
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 30, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  store i32 1, i32* %22, align 4
  br label %141

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %43 [
    i32 114, label %40
    i32 119, label %41
    i32 115, label %42
  ]

40:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %56

41:                                               ; preds = %36
  store i32 1, i32* %14, align 4
  br label %56

42:                                               ; preds = %36
  store i32 1, i32* %20, align 4
  br label %56

43:                                               ; preds = %36
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 @isdigit(i32 %46) #5
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* @BZ_HDR_0, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %42, %41, %40
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  br label %32

59:                                               ; preds = %32
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %65 = call i32 @strcat(i8* %60, i8* %64)
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %67 = call i32 @strcat(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %59
  %71 = load i8*, i8** %6, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32*, i32** @stdout, align 8
  br label %84

82:                                               ; preds = %77
  %83 = load i32*, i32** @stdin, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32* [ %81, %80 ], [ %83, %82 ]
  store i32* %85, i32** %16, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 @SET_BINARY_MODE(i32* %86)
  br label %92

88:                                               ; preds = %73
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %91 = call i32* @fopen(i8* %89, i8* %90)
  store i32* %91, i32** %16, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %97

93:                                               ; preds = %59
  %94 = load i32, i32* %7, align 4
  %95 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %96 = call i32* @fdopen(i32 %94, i8* %95)
  store i32* %96, i32** %16, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = load i32*, i32** %16, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32* null, i32** %5, align 8
  store i32 1, i32* %22, align 4
  br label %141

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %107, %104
  %109 = load i32, i32* %13, align 4
  %110 = icmp sgt i32 %109, 9
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 9, i32* %13, align 4
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %19, align 4
  %117 = call i32* @BZ2_bzWriteOpen(i32* %10, i32* %113, i32 %114, i32 %115, i32 %116)
  store i32* %117, i32** %17, align 8
  br label %124

118:                                              ; preds = %101
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %21, align 4
  %123 = call i32* @BZ2_bzReadOpen(i32* %10, i32* %119, i32 %120, i32 %121, i8* %26, i32 %122)
  store i32* %123, i32** %17, align 8
  br label %124

124:                                              ; preds = %118, %112
  %125 = load i32*, i32** %17, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load i32*, i32** %16, align 8
  %129 = load i32*, i32** @stdin, align 8
  %130 = icmp ne i32* %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32*, i32** %16, align 8
  %133 = load i32*, i32** @stdout, align 8
  %134 = icmp ne i32* %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32*, i32** %16, align 8
  %137 = call i32 @fclose(i32* %136)
  br label %138

138:                                              ; preds = %135, %131, %127
  store i32* null, i32** %5, align 8
  store i32 1, i32* %22, align 4
  br label %141

139:                                              ; preds = %124
  %140 = load i32*, i32** %17, align 8
  store i32* %140, i32** %5, align 8
  store i32 1, i32* %22, align 4
  br label %141

141:                                              ; preds = %139, %138, %100, %30
  %142 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32*, i32** %5, align 8
  ret i32* %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #3

declare dso_local i32 @strcat(i8*, i8*) #4

declare dso_local i64 @strcmp(i8*, i8*) #4

declare dso_local i32 @SET_BINARY_MODE(i32*) #4

declare dso_local i32* @fopen(i8*, i8*) #4

declare dso_local i32* @fdopen(i32, i8*) #4

declare dso_local i32* @BZ2_bzWriteOpen(i32*, i32*, i32, i32, i32) #4

declare dso_local i32* @BZ2_bzReadOpen(i32*, i32*, i32, i32, i8*, i32) #4

declare dso_local i32 @fclose(i32*) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
