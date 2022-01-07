; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_fixdep.c_parse_config_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_fixdep.c_parse_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_CONF = common dso_local global i32 0, align 4
@INT_ONFI = common dso_local global i32 0, align 4
@INT_NFIG = common dso_local global i32 0, align 4
@INT_FIG_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_MODULE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @parse_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_config_file(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %122, %2
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ult i32* %17, %18
  br i1 %19, label %20, label %125

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INT_CONF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %7, align 8
  br label %56

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @INT_ONFI, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  store i8* %36, i8** %7, align 8
  br label %56

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INT_NFIG, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 -2
  store i8* %45, i8** %7, align 8
  br label %56

46:                                               ; preds = %37
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @INT_FIG_, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = getelementptr inbounds i8, i8* %53, i64 -3
  store i8* %54, i8** %7, align 8
  br label %56

55:                                               ; preds = %46
  br label %122

56:                                               ; preds = %51, %42, %33, %25
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 -7
  %62 = icmp ugt i8* %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %122

64:                                               ; preds = %56
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @memcmp(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %122

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 7
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %90, %69
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = icmp ult i8* %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isalnum(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 95
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %94

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  br label %72

93:                                               ; preds = %72
  br label %122

94:                                               ; preds = %88
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -7
  %97 = call i64 @memcmp(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 -7
  store i8* %101, i8** %8, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sub nsw i64 %107, 7
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %122

111:                                              ; preds = %102
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 7
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub nsw i64 %118, 7
  %120 = trunc i64 %119 to i32
  %121 = call i32 @use_config(i8* %113, i32 %120)
  br label %122

122:                                              ; preds = %111, %110, %93, %68, %63, %55
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %6, align 8
  br label %16

125:                                              ; preds = %16
  ret void
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32 @use_config(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
