; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_string_to_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_string_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-:/ \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" T\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @string_to_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_to_time(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @parse_dec(i8* %17, i32 4, i32* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %209

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = ptrtoint i8* %24 to i32
  %27 = call i64 @parse_choice(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %209

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @parse_dec(i8* %31, i32 2, i32* %9)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %209

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = ptrtoint i8* %38 to i32
  %41 = call i64 @parse_choice(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %209

44:                                               ; preds = %35
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @parse_dec(i8* %45, i32 2, i32* %10)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %209

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = ptrtoint i8* %52 to i32
  %55 = call i64 @parse_choice(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %209

58:                                               ; preds = %49
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @parse_dec(i8* %59, i32 2, i32* %11)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %209

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  %68 = ptrtoint i8* %66 to i32
  %69 = call i64 @parse_choice(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %209

72:                                               ; preds = %63
  %73 = load i8*, i8** %5, align 8
  %74 = call i64 @parse_dec(i8* %73, i32 2, i32* %12)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %209

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  %82 = ptrtoint i8* %80 to i32
  %83 = call i64 @parse_choice(i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %209

86:                                               ; preds = %77
  %87 = load i8*, i8** %5, align 8
  %88 = call i64 @parse_dec(i8* %87, i32 2, i32* %13)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %4, align 4
  br label %209

91:                                               ; preds = %86
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %5, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %98, label %120

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i8*, i8** %5, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp sge i32 %107, 48
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sle i32 %112, 57
  br label %114

114:                                              ; preds = %109, %104, %99
  %115 = phi i1 [ false, %104 ], [ false, %99 ], [ %113, %109 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %5, align 8
  br label %99

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %91
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  %127 = load i8, i8* %125, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 90
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 -1, i32* %4, align 4
  br label %209

131:                                              ; preds = %124
  %132 = load i8*, i8** %5, align 8
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %209

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136, %120
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %9, align 4
  %142 = icmp sgt i32 %141, 12
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %137
  store i32 -1, i32* %4, align 4
  br label %209

144:                                              ; preds = %140
  store i32 0, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %145

145:                                              ; preds = %155, %144
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @month_length(i32 %150, i32 %151)
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %14, align 4
  br label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %145

158:                                              ; preds = %145
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @month_length(i32 %163, i32 %164)
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161, %158
  store i32 -1, i32* %4, align 4
  br label %209

168:                                              ; preds = %161
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 3
  %175 = sdiv i32 %174, 4
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 99
  %178 = sdiv i32 %177, 100
  %179 = sub nsw i32 %175, %178
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 399
  %182 = sdiv i32 %181, 400
  %183 = add nsw i32 %179, %182
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp sgt i32 %184, 23
  br i1 %185, label %192, label %186

186:                                              ; preds = %168
  %187 = load i32, i32* %12, align 4
  %188 = icmp sgt i32 %187, 59
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %13, align 4
  %191 = icmp sgt i32 %190, 60
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %186, %168
  store i32 -1, i32* %4, align 4
  br label %209

193:                                              ; preds = %189
  %194 = load i32, i32* %8, align 4
  %195 = mul nsw i32 %194, 365
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32*, i32** %6, align 8
  store i32 %199, i32* %200, align 4
  %201 = load i32, i32* %11, align 4
  %202 = mul nsw i32 %201, 3600
  %203 = load i32, i32* %12, align 4
  %204 = mul nsw i32 %203, 60
  %205 = add nsw i32 %202, %204
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32*, i32** %7, align 8
  store i32 %207, i32* %208, align 4
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %193, %192, %167, %143, %135, %130, %90, %85, %76, %71, %62, %57, %48, %43, %34, %29, %20
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i64 @parse_dec(i8*, i32, i32*) #1

declare dso_local i64 @parse_choice(i32, i8*) #1

declare dso_local i32 @month_length(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
