; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_utils.c_in4_pton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_utils.c_in4_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN6PTON_DIGIT = common dso_local global i32 0, align 4
@IN6PTON_DOT = common dso_local global i32 0, align 4
@IN6PTON_DELIM = common dso_local global i32 0, align 4
@IN6PTON_COLON_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in4_pton(i8* %0, i32 %1, i32* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %11, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32* %25, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %23, %96
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @xdigit2bin(i8 signext %36, i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @IN6PTON_DIGIT, align 4
  %41 = load i32, i32* @IN6PTON_DOT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IN6PTON_DELIM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IN6PTON_COLON_MASK, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %39, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %105

50:                                               ; preds = %34
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @IN6PTON_DOT, align 4
  %53 = load i32, i32* @IN6PTON_DELIM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @IN6PTON_COLON_MASK, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %50
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %105

63:                                               ; preds = %59
  %64 = load i32, i32* %16, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %16, align 4
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @IN6PTON_DELIM, align 4
  %72 = load i32, i32* @IN6PTON_COLON_MASK, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 4
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %105

80:                                               ; preds = %76
  br label %101

81:                                               ; preds = %63
  br label %92

82:                                               ; preds = %50
  %83 = load i32, i32* %16, align 4
  %84 = mul nsw i32 %83, 10
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = and i32 %87, 65535
  %89 = icmp sgt i32 %88, 255
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %105

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %81
  %93 = load i32, i32* %15, align 4
  %94 = icmp sge i32 %93, 4
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %105

96:                                               ; preds = %92
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %7, align 4
  br label %26

101:                                              ; preds = %80
  store i32 1, i32* %14, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %104 = call i32 @memcpy(i32* %102, i32* %103, i32 16)
  br label %105

105:                                              ; preds = %101, %95, %90, %79, %62, %49
  %106 = load i8**, i8*** %10, align 8
  %107 = icmp ne i8** %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %11, align 8
  %110 = load i8**, i8*** %10, align 8
  store i8* %109, i8** %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %14, align 4
  ret i32 %112
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xdigit2bin(i8 signext, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
