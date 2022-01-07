; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_path_matches_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_path_matches_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_path_info = type { i8*, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_path_matches_pattern(%struct.tomoyo_path_info* %0, %struct.tomoyo_path_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_path_info*, align 8
  %5 = alloca %struct.tomoyo_path_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.tomoyo_path_info* %0, %struct.tomoyo_path_info** %4, align 8
  store %struct.tomoyo_path_info* %1, %struct.tomoyo_path_info** %5, align 8
  %11 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %4, align 8
  %12 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %15 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %18 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %21 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %4, align 8
  %26 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %27 = call i32 @tomoyo_pathcmp(%struct.tomoyo_path_info* %25, %struct.tomoyo_path_info* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %152

31:                                               ; preds = %2
  %32 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %4, align 8
  %33 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %5, align 8
  %36 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %152

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @strncmp(i8* %41, i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %152

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %114, %47
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %115

68:                                               ; preds = %66
  %69 = load i8*, i8** %6, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 47)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 47)
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @tomoyo_file_matches_to_pattern(i8* %91, i8* %92, i8* %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %152

98:                                               ; preds = %90
  %99 = load i8*, i8** %9, align 8
  store i8* %99, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i8*, i8** %10, align 8
  store i8* %107, i8** %7, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %7, align 8
  br label %114

114:                                              ; preds = %111, %106
  br label %56

115:                                              ; preds = %66
  br label %116

116:                                              ; preds = %137, %115
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 92
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 42
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 64
  br label %133

133:                                              ; preds = %127, %121
  %134 = phi i1 [ true, %121 ], [ %132, %127 ]
  br label %135

135:                                              ; preds = %133, %116
  %136 = phi i1 [ false, %116 ], [ %134, %133 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  store i8* %139, i8** %7, align 8
  br label %116

140:                                              ; preds = %135
  %141 = load i8*, i8** %6, align 8
  %142 = load i8, i8* %141, align 1
  %143 = icmp ne i8 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %7, align 8
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %144, %140
  %150 = phi i1 [ false, %140 ], [ %148, %144 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %149, %97, %46, %39, %24
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @tomoyo_pathcmp(%struct.tomoyo_path_info*, %struct.tomoyo_path_info*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tomoyo_file_matches_to_pattern(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
