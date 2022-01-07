; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_hex2hex.c_loadhex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_hex2hex.c_loadhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"File format error\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"File too large\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Line checksum error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @loadhex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadhex(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %120, %61, %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @getc(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @EOF, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %121

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 58
  br i1 %20, label %21, label %120

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @fscanf(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @ABANDON(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %8, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %10, align 1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @fscanf(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @ABANDON(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %11, align 4
  %37 = sdiv i32 %36, 256
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %10, align 1
  %42 = load i32, i32* %11, align 4
  %43 = srem i32 %42, 256
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, %43
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %10, align 1
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @fscanf(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %12)
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = call i32 @ABANDON(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %35
  %54 = load i32, i32* %12, align 4
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %10, align 1
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %13

62:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %98, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %63
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @fscanf(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 @ABANDON(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @MAX_SIZE, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @ABANDON(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* %6, align 4
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8 %81, i8* %86, align 1
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %79
  %93 = load i32, i32* %6, align 4
  %94 = load i8, i8* %10, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 %95, %93
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %10, align 1
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %63

101:                                              ; preds = %63
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @fscanf(i32* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %9)
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @ABANDON(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i8, i8* %10, align 1
  %109 = zext i8 %108 to i32
  %110 = xor i32 %109, -1
  %111 = add nsw i32 %110, 1
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %10, align 1
  %113 = load i32, i32* %9, align 4
  %114 = load i8, i8* %10, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = call i32 @ABANDON(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %107
  br label %120

120:                                              ; preds = %119, %18
  br label %13

121:                                              ; preds = %13
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @ABANDON(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
