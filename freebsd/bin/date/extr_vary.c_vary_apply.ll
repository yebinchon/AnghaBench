; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_vary_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_vary_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vary = type { i8*, %struct.vary* }
%struct.tm = type { i32 }

@digits = common dso_local global i32 0, align 4
@trans_wday = common dso_local global i32 0, align 4
@trans_mon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vary* @vary_apply(%struct.vary* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.vary*, align 8
  %4 = alloca %struct.vary*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vary* %0, %struct.vary** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  br label %11

11:                                               ; preds = %173, %2
  %12 = load %struct.vary*, %struct.vary** %4, align 8
  %13 = icmp ne %struct.vary* %12, null
  br i1 %13, label %14, label %177

14:                                               ; preds = %11
  %15 = load %struct.vary*, %struct.vary** %4, align 8
  %16 = getelementptr inbounds %struct.vary, %struct.vary* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %6, align 1
  %19 = load %struct.vary*, %struct.vary** %4, align 8
  %20 = getelementptr inbounds %struct.vary, %struct.vary* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 43
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %14
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  br label %33

32:                                               ; preds = %25
  store i8 0, i8* %6, align 1
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %39, %struct.vary** %3, align 8
  br label %178

40:                                               ; preds = %33
  %41 = load i8, i8* %6, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.tm*, %struct.tm** %5, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @digits, align 4
  %50 = call i64 @strspn(i8* %48, i32 %49)
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, 1
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %47
  %55 = load i32, i32* @trans_wday, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @trans(i32 %55, i8* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.tm*, %struct.tm** %5, align 8
  %62 = load i8, i8* %6, align 1
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @adjwday(%struct.tm* %61, i8 signext %62, i32 %63, i32 1, i32 1)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %67, %struct.vary** %3, align 8
  br label %178

68:                                               ; preds = %60
  br label %87

69:                                               ; preds = %54
  %70 = load i32, i32* @trans_mon, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @trans(i32 %70, i8* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.tm*, %struct.tm** %5, align 8
  %77 = load i8, i8* %6, align 1
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @adjmon(%struct.tm* %76, i8 signext %77, i32 %78, i32 1, i32 1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %82, %struct.vary** %3, align 8
  br label %178

83:                                               ; preds = %75
  br label %86

84:                                               ; preds = %69
  %85 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %85, %struct.vary** %3, align 8
  br label %178

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %86, %68
  br label %172

88:                                               ; preds = %47
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @atoi(i8* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = sub i64 %92, 1
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %7, align 1
  %96 = load i8, i8* %7, align 1
  %97 = sext i8 %96 to i32
  switch i32 %97, label %169 [
    i32 83, label %98
    i32 77, label %107
    i32 72, label %116
    i32 100, label %125
    i32 119, label %136
    i32 109, label %147
    i32 121, label %158
  ]

98:                                               ; preds = %88
  %99 = load %struct.tm*, %struct.tm** %5, align 8
  %100 = load i8, i8* %6, align 1
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @adjsec(%struct.tm* %99, i8 signext %100, i32 %101, i32 1)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %98
  %105 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %105, %struct.vary** %3, align 8
  br label %178

106:                                              ; preds = %98
  br label %171

107:                                              ; preds = %88
  %108 = load %struct.tm*, %struct.tm** %5, align 8
  %109 = load i8, i8* %6, align 1
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @adjmin(%struct.tm* %108, i8 signext %109, i32 %110, i32 1)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %114, %struct.vary** %3, align 8
  br label %178

115:                                              ; preds = %107
  br label %171

116:                                              ; preds = %88
  %117 = load %struct.tm*, %struct.tm** %5, align 8
  %118 = load i8, i8* %6, align 1
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @adjhour(%struct.tm* %117, i8 signext %118, i32 %119, i32 1)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %123, %struct.vary** %3, align 8
  br label %178

124:                                              ; preds = %116
  br label %171

125:                                              ; preds = %88
  %126 = load %struct.tm*, %struct.tm** %5, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 0
  store i32 -1, i32* %127, align 4
  %128 = load %struct.tm*, %struct.tm** %5, align 8
  %129 = load i8, i8* %6, align 1
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @adjday(%struct.tm* %128, i8 signext %129, i32 %130, i32 1)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %134, %struct.vary** %3, align 8
  br label %178

135:                                              ; preds = %125
  br label %171

136:                                              ; preds = %88
  %137 = load %struct.tm*, %struct.tm** %5, align 8
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %137, i32 0, i32 0
  store i32 -1, i32* %138, align 4
  %139 = load %struct.tm*, %struct.tm** %5, align 8
  %140 = load i8, i8* %6, align 1
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @adjwday(%struct.tm* %139, i8 signext %140, i32 %141, i32 0, i32 1)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %136
  %145 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %145, %struct.vary** %3, align 8
  br label %178

146:                                              ; preds = %136
  br label %171

147:                                              ; preds = %88
  %148 = load %struct.tm*, %struct.tm** %5, align 8
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %148, i32 0, i32 0
  store i32 -1, i32* %149, align 4
  %150 = load %struct.tm*, %struct.tm** %5, align 8
  %151 = load i8, i8* %6, align 1
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @adjmon(%struct.tm* %150, i8 signext %151, i32 %152, i32 0, i32 1)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %147
  %156 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %156, %struct.vary** %3, align 8
  br label %178

157:                                              ; preds = %147
  br label %171

158:                                              ; preds = %88
  %159 = load %struct.tm*, %struct.tm** %5, align 8
  %160 = getelementptr inbounds %struct.tm, %struct.tm* %159, i32 0, i32 0
  store i32 -1, i32* %160, align 4
  %161 = load %struct.tm*, %struct.tm** %5, align 8
  %162 = load i8, i8* %6, align 1
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @adjyear(%struct.tm* %161, i8 signext %162, i32 %163, i32 1)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %158
  %167 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %167, %struct.vary** %3, align 8
  br label %178

168:                                              ; preds = %158
  br label %171

169:                                              ; preds = %88
  %170 = load %struct.vary*, %struct.vary** %4, align 8
  store %struct.vary* %170, %struct.vary** %3, align 8
  br label %178

171:                                              ; preds = %168, %157, %146, %135, %124, %115, %106
  br label %172

172:                                              ; preds = %171, %87
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.vary*, %struct.vary** %4, align 8
  %175 = getelementptr inbounds %struct.vary, %struct.vary* %174, i32 0, i32 1
  %176 = load %struct.vary*, %struct.vary** %175, align 8
  store %struct.vary* %176, %struct.vary** %4, align 8
  br label %11

177:                                              ; preds = %11
  store %struct.vary* null, %struct.vary** %3, align 8
  br label %178

178:                                              ; preds = %177, %169, %166, %155, %144, %133, %122, %113, %104, %84, %81, %66, %38
  %179 = load %struct.vary*, %struct.vary** %3, align 8
  ret %struct.vary* %179
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local i32 @trans(i32, i8*) #1

declare dso_local i32 @adjwday(%struct.tm*, i8 signext, i32, i32, i32) #1

declare dso_local i32 @adjmon(%struct.tm*, i8 signext, i32, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @adjsec(%struct.tm*, i8 signext, i32, i32) #1

declare dso_local i32 @adjmin(%struct.tm*, i8 signext, i32, i32) #1

declare dso_local i32 @adjhour(%struct.tm*, i8 signext, i32, i32) #1

declare dso_local i32 @adjday(%struct.tm*, i8 signext, i32, i32) #1

declare dso_local i32 @adjyear(%struct.tm*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
