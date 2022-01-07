; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_prefix.c_update_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_prefix.c_update_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@std_prefix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@X_OK = common dso_local global i32 0, align 4
@ALWAYS_STRIP_DOTDOT = common dso_local global i32 0, align 4
@DIR_SEPARATOR = common dso_local global i8 0, align 1
@DIR_SEPARATOR_2 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @update_path(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @std_prefix, align 4
  %12 = call i32 @strlen(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @std_prefix, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @strncmp(i8* %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @IS_DIR_SEPARATOR(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %26, %18
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 36
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %44, i32* null)
  store i8* %45, i8** %4, align 8
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i8* @concat(i8* %47, i8* %51, i32* null)
  store i8* %52, i8** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i8*, i8** %5, align 8
  %60 = call i8* @translate_name(i8* %59)
  store i8* %60, i8** %5, align 8
  br label %64

61:                                               ; preds = %34, %26, %2
  %62 = load i8*, i8** %3, align 8
  %63 = call i8* @xstrdup(i8* %62)
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %64, %189
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 46)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %190

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %186

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @IS_DIR_SEPARATOR(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %186

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %88, label %186

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @IS_DIR_SEPARATOR(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %186

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* @X_OK, align 4
  %98 = call i64 @access(i8* %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i8*, i8** %6, align 8
  store i8 46, i8* %101, align 1
  br label %190

102:                                              ; preds = %94
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %148, %102
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %106, i8** %10, align 8
  br label %107

107:                                              ; preds = %118, %104
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = icmp ne i8* %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i8*, i8** %10, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @IS_DIR_SEPARATOR(i8 signext %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %111, %107
  %117 = phi i1 [ false, %107 ], [ %115, %111 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 -1
  store i8* %120, i8** %10, align 8
  br label %107

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %135, %121
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = icmp ne i8* %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 -1
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @IS_DIR_SEPARATOR(i8 signext %129)
  %131 = icmp ne i64 %130, 0
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %126, %122
  %134 = phi i1 [ false, %122 ], [ %132, %126 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %10, align 8
  br label %122

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = icmp ne i8* %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i8*, i8** %10, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 46
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi i1 [ false, %139 ], [ %147, %143 ]
  br i1 %149, label %104, label %150

150:                                              ; preds = %148
  %151 = load i8*, i8** %10, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 46
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %10, align 8
  %157 = load i8, i8* %156, align 1
  %158 = call i64 @IS_DIR_SEPARATOR(i8 signext %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155, %150
  %161 = load i8*, i8** %6, align 8
  store i8 46, i8* %161, align 1
  br label %190

162:                                              ; preds = %155
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 3
  store i8* %164, i8** %9, align 8
  br label %165

165:                                              ; preds = %170, %162
  %166 = load i8*, i8** %9, align 8
  %167 = load i8, i8* %166, align 1
  %168 = call i64 @IS_DIR_SEPARATOR(i8 signext %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %9, align 8
  br label %165

173:                                              ; preds = %165
  %174 = load i8*, i8** %10, align 8
  store i8* %174, i8** %6, align 8
  br label %175

175:                                              ; preds = %183, %173
  %176 = load i8*, i8** %9, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %9, align 8
  %178 = load i8, i8* %176, align 1
  %179 = load i8*, i8** %10, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %10, align 8
  store i8 %178, i8* %179, align 1
  %181 = sext i8 %178 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  br label %175

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184
  br label %189

186:                                              ; preds = %88, %84, %78, %72
  %187 = load i8*, i8** %6, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %6, align 8
  br label %189

189:                                              ; preds = %186, %185
  br label %66

190:                                              ; preds = %160, %100, %71
  %191 = load i8*, i8** %5, align 8
  ret i8* %191
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i8* @concat(i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @translate_name(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @access(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
