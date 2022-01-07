; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_getsubopt1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_getsubopt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getsubopt1.delim = internal constant i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c",\09 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i8**, i8**)* @getsubopt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsubopt1(i8** %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %11, align 8
  br label %15

15:                                               ; preds = %27, %4
  %16 = load i8*, i8** %11, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 signext %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %30

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %11, align 8
  br label %15

30:                                               ; preds = %25, %15
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  store i32 -1, i32* %5, align 4
  br label %125

38:                                               ; preds = %30
  %39 = load i8*, i8** %11, align 8
  %40 = load i8**, i8*** %9, align 8
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %58, %38
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 signext %49)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 61
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  br label %59

58:                                               ; preds = %52
  br label %41

59:                                               ; preds = %57, %41
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %59
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 61
  br i1 %68, label %69, label %98

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %11, align 8
  store i8 0, i8* %70, align 1
  %72 = load i8*, i8** %11, align 8
  %73 = load i8**, i8*** %8, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %86, %69
  %75 = load i8*, i8** %11, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %11, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 signext %81)
  %83 = icmp eq i32* %82, null
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %11, align 8
  br label %74

89:                                               ; preds = %84
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %11, align 8
  store i8 0, i8* %95, align 1
  br label %97

97:                                               ; preds = %94, %89
  br label %101

98:                                               ; preds = %64
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %11, align 8
  store i8 0, i8* %99, align 1
  br label %101

101:                                              ; preds = %98, %97
  br label %102

102:                                              ; preds = %101, %59
  %103 = load i8*, i8** %11, align 8
  %104 = load i8**, i8*** %6, align 8
  store i8* %103, i8** %104, align 8
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %119, %102
  %106 = load i8**, i8*** %7, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i8**, i8*** %9, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i8**, i8*** %7, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* %111, i8* %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %125

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  %120 = load i8**, i8*** %7, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i32 1
  store i8** %121, i8*** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %105

124:                                              ; preds = %105
  store i32 -1, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %116, %35
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
