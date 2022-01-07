; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_color.c_color_parse_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_color.c_color_parse_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@PERF_COLOR_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"38;5;%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"48;5;%d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"bad color value '%.*s' for variable '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @color_parse_mem(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -2, i32* %12, align 4
  store i32 -2, i32* %13, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @strncasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @PERF_COLOR_RESET, align 4
  %27 = call i32 @strcpy(i8* %25, i32 %26)
  br label %194

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %100, %87, %82, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %102

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  store i8* %33, i8** %14, align 8
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %48, %32
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isspace(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %37, %34
  %47 = phi i1 [ false, %34 ], [ %45, %37 ]
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %10, align 4
  br label %34

53:                                               ; preds = %46
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %9, align 8
  br label %58

58:                                               ; preds = %68, %53
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isspace(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ %65, %61 ]
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  br label %58

73:                                               ; preds = %66
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @parse_color(i8* %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp sge i32 %77, -1
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, -2
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %12, align 4
  br label %29

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, -2
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %13, align 4
  br label %29

89:                                               ; preds = %84
  br label %189

90:                                               ; preds = %73
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @parse_attr(i8* %91, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %90
  br label %189

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %11, align 4
  br label %29

102:                                              ; preds = %29
  %103 = load i32, i32* %11, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %187

111:                                              ; preds = %108, %105, %102
  store i32 0, i32* %17, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  store i8 27, i8* %112, align 1
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  store i8 91, i8* %114, align 1
  %116 = load i32, i32* %11, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 48, %119
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %8, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %118, %111
  %127 = load i32, i32* %12, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %126
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  %132 = icmp ne i32 %130, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %8, align 8
  store i8 59, i8* %134, align 1
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %8, align 8
  store i8 51, i8* %140, align 1
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 48, %142
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %8, align 8
  store i8 %144, i8* %145, align 1
  br label %154

147:                                              ; preds = %136
  %148 = load i8*, i8** %8, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @sprintf(i8* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i8*, i8** %8, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %8, align 8
  br label %154

154:                                              ; preds = %147, %139
  br label %155

155:                                              ; preds = %154, %126
  %156 = load i32, i32* %13, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  %161 = icmp ne i32 %159, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %8, align 8
  store i8 59, i8* %163, align 1
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %166, 8
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %8, align 8
  store i8 52, i8* %169, align 1
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 48, %171
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %8, align 8
  store i8 %173, i8* %174, align 1
  br label %183

176:                                              ; preds = %165
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @sprintf(i8* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  %180 = load i8*, i8** %8, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8* %182, i8** %8, align 8
  br label %183

183:                                              ; preds = %176, %168
  br label %184

184:                                              ; preds = %183, %155
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %8, align 8
  store i8 109, i8* %185, align 1
  br label %187

187:                                              ; preds = %184, %108
  %188 = load i8*, i8** %8, align 8
  store i8 0, i8* %188, align 1
  br label %194

189:                                              ; preds = %99, %89
  %190 = load i32, i32* %6, align 4
  %191 = load i8*, i8** %5, align 8
  %192 = load i8*, i8** %7, align 8
  %193 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %190, i8* %191, i8* %192)
  br label %194

194:                                              ; preds = %189, %187, %24
  ret void
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @parse_color(i8*, i32) #1

declare dso_local i32 @parse_attr(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @die(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
