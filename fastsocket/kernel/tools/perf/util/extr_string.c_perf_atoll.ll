; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_string.c_perf_atoll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_string.c_perf_atoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_atoll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = call i32 @isdigit(i8 signext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %154

12:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %146, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %149

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %135 [
    i32 66, label %25
    i32 98, label %25
    i32 75, label %26
    i32 107, label %37
    i32 77, label %50
    i32 109, label %61
    i32 71, label %76
    i32 103, label %87
    i32 84, label %104
    i32 116, label %115
    i32 0, label %134
  ]

25:                                               ; preds = %18, %18
  br label %145

26:                                               ; preds = %18
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 66
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %154

36:                                               ; preds = %26
  br label %48

37:                                               ; preds = %18
  %38 = load i8*, i8** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 98
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %154

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* @K, align 4
  store i32 %49, i32* %5, align 4
  br label %145

50:                                               ; preds = %18
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 66
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %154

60:                                               ; preds = %50
  br label %72

61:                                               ; preds = %18
  %62 = load i8*, i8** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 98
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %154

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* @K, align 4
  %74 = load i32, i32* @K, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %5, align 4
  br label %145

76:                                               ; preds = %18
  %77 = load i8*, i8** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = add i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 66
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %154

86:                                               ; preds = %76
  br label %98

87:                                               ; preds = %18
  %88 = load i8*, i8** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = add i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 98
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %154

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %86
  %99 = load i32, i32* @K, align 4
  %100 = load i32, i32* @K, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* @K, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %5, align 4
  br label %145

104:                                              ; preds = %18
  %105 = load i8*, i8** %2, align 8
  %106 = load i32, i32* %3, align 4
  %107 = add i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 66
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %154

114:                                              ; preds = %104
  br label %126

115:                                              ; preds = %18
  %116 = load i8*, i8** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = add i32 %117, 1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 98
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %154

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %114
  %127 = load i32, i32* @K, align 4
  %128 = load i32, i32* @K, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* @K, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* @K, align 4
  %133 = mul nsw i32 %131, %132
  store i32 %133, i32* %5, align 4
  br label %145

134:                                              ; preds = %18
  store i32 1, i32* %5, align 4
  br label %145

135:                                              ; preds = %18
  %136 = load i8*, i8** %2, align 8
  %137 = load i32, i32* %3, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @isdigit(i8 signext %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %135
  br label %154

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %134, %126, %98, %72, %48, %25
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %3, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %3, align 4
  br label %13

149:                                              ; preds = %13
  %150 = load i8*, i8** %2, align 8
  %151 = call i32 @atoll(i8* %150)
  %152 = load i32, i32* %5, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* %4, align 4
  br label %155

154:                                              ; preds = %143, %124, %113, %96, %85, %70, %59, %46, %35, %11
  store i32 -1, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %149
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atoll(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
