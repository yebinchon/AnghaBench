; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_is_json.c_json_parse_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_is_json.c_json_parse_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Parse number: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Bad number: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Good number: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @json_parse_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_parse_number(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %141

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @json_isdigit(i8 zeroext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %27

41:                                               ; preds = %36, %27
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %124

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @json_isdigit(i8 zeroext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  br label %55

69:                                               ; preds = %64, %55
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %124

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %123

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 101
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 69
  br i1 %86, label %87, label %123

87:                                               ; preds = %82, %77
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %124

94:                                               ; preds = %87
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 43
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 45
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %94
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = icmp ult i8* %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i8*, i8** %6, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @json_isdigit(i8 zeroext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %122

118:                                              ; preds = %112
  store i32 1, i32* %7, align 4
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %6, align 8
  br label %108

122:                                              ; preds = %117, %108
  br label %123

123:                                              ; preds = %122, %82, %74
  br label %124

124:                                              ; preds = %123, %93, %73, %45
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = load i8*, i8** %6, align 8
  %129 = load i8**, i8*** %4, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %128, i8* %130)
  br label %137

132:                                              ; preds = %124
  %133 = load i8*, i8** %6, align 8
  %134 = load i8**, i8*** %4, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %133, i8* %135)
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i8*, i8** %6, align 8
  %139 = load i8**, i8*** %4, align 8
  store i8* %138, i8** %139, align 8
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %17
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @DPRINTF(i8*, i8*, i8*) #1

declare dso_local i32 @json_isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
