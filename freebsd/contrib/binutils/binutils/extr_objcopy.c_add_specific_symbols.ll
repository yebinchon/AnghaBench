; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_add_specific_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_add_specific_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symlist = type { i32 }

@status = common dso_local global i32 0, align 4
@FOPEN_RT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot open '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: fread failed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"%s:%d: Ignoring rubbish found on this line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.symlist**)* @add_specific_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_specific_symbols(i8* %0, %struct.symlist** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symlist**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.symlist** %1, %struct.symlist*** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @get_file_size(i8* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* @status, align 4
  br label %185

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i8* @xmalloc(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @FOPEN_RT, align 4
  %26 = call i32* @fopen(i8* %24, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 (i32, i8*, ...) @fatal(i32 %30, i8* %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @fread(i8* %36, i32 1, i32 %37, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @ferror(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %35
  %46 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 (i32, i8*, ...) @fatal(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 10, i8* %55, align 1
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 0, i8* %60, align 1
  store i32 1, i32* %9, align 4
  %61 = load i8*, i8** %8, align 8
  store i8* %61, i8** %7, align 8
  br label %62

62:                                               ; preds = %182, %49
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %185

67:                                               ; preds = %62
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i8*, i8** %7, align 8
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %108, %67
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %102 [
    i32 10, label %74
    i32 13, label %86
    i32 0, label %98
    i32 35, label %100
  ]

74:                                               ; preds = %70
  %75 = load i8*, i8** %10, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 13
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %13, align 4
  br label %103

86:                                               ; preds = %70
  %87 = load i8*, i8** %10, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %13, align 4
  br label %103

98:                                               ; preds = %70
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %13, align 4
  br label %103

100:                                              ; preds = %70
  %101 = load i8*, i8** %10, align 8
  store i8 0, i8* %101, align 1
  br label %103

102:                                              ; preds = %70
  br label %103

103:                                              ; preds = %102, %100, %98, %96, %84
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %111

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %10, align 8
  br label %70

111:                                              ; preds = %106
  %112 = load i8*, i8** %7, align 8
  store i8* %112, i8** %11, align 8
  br label %113

113:                                              ; preds = %119, %111
  %114 = load i8*, i8** %11, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @IS_WHITESPACE(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %11, align 8
  br label %113

122:                                              ; preds = %113
  %123 = load i8*, i8** %11, align 8
  store i8* %123, i8** %12, align 8
  br label %124

124:                                              ; preds = %138, %122
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @IS_WHITESPACE(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** %12, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call i32 @IS_LINE_TERMINATOR(i8 signext %131)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br label %135

135:                                              ; preds = %129, %124
  %136 = phi i1 [ false, %124 ], [ %134, %129 ]
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %137
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %12, align 8
  br label %124

141:                                              ; preds = %135
  %142 = load i8*, i8** %12, align 8
  %143 = load i8, i8* %142, align 1
  %144 = call i32 @IS_LINE_TERMINATOR(i8 signext %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %12, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  store i8* %148, i8** %14, align 8
  br label %149

149:                                              ; preds = %155, %146
  %150 = load i8*, i8** %14, align 8
  %151 = load i8, i8* %150, align 1
  %152 = call i64 @IS_WHITESPACE(i8 signext %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154
  %156 = load i8*, i8** %14, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %14, align 8
  br label %149

158:                                              ; preds = %149
  %159 = load i8*, i8** %14, align 8
  %160 = load i8, i8* %159, align 1
  %161 = call i32 @IS_LINE_TERMINATOR(i8 signext %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %165 = load i8*, i8** %3, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @non_fatal(i32 %164, i8* %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %158
  br label %169

169:                                              ; preds = %168, %141
  %170 = load i8*, i8** %12, align 8
  store i8 0, i8* %170, align 1
  %171 = load i8*, i8** %12, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = icmp ugt i8* %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i8*, i8** %11, align 8
  %176 = load %struct.symlist**, %struct.symlist*** %4, align 8
  %177 = call i32 @add_specific_symbol(i8* %175, %struct.symlist** %176)
  br label %178

178:                                              ; preds = %174, %169
  %179 = load i8*, i8** %10, align 8
  store i8* %179, i8** %7, align 8
  %180 = load i32, i32* %9, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %178
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %7, align 8
  br label %62

185:                                              ; preds = %19, %62
  ret void
}

declare dso_local i32 @get_file_size(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @fatal(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @IS_WHITESPACE(i8 signext) #1

declare dso_local i32 @IS_LINE_TERMINATOR(i8 signext) #1

declare dso_local i32 @non_fatal(i32, i8*, i32) #1

declare dso_local i32 @add_specific_symbol(i8*, %struct.symlist**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
