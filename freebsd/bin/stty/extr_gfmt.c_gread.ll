; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_gfmt.c_gread.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_gfmt.c_gread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cchar = type { i8*, i64 }
%struct.termios = type { i64, i64, i64, i64, i64, i64, i64* }

@.str = private unnamed_addr constant [3 x i8] c":\00\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cflag\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iflag\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ispeed\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lflag\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"oflag\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ospeed\00", align 1
@cchars1 = common dso_local global %struct.cchar* null, align 8
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gread(%struct.termios* %0, i8* %1) #0 {
  %3 = alloca %struct.termios*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cchar*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.termios* %0, %struct.termios** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 58)
  store i8* %10, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @gerr(i8* null)
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %195, %128, %113, %98, %81, %66, %51, %14
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %196

20:                                               ; preds = %17
  %21 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %20
  br label %196

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 61)
  store i8* %31, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @gerr(i8* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %8)
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.termios*, %struct.termios** %3, align 8
  %54 = getelementptr inbounds %struct.termios, %struct.termios* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %17

55:                                               ; preds = %47, %36
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.termios*, %struct.termios** %3, align 8
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %17

70:                                               ; preds = %62, %55
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @sscanf(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64* %8)
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.termios*, %struct.termios** %3, align 8
  %86 = getelementptr inbounds %struct.termios, %struct.termios* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  br label %17

87:                                               ; preds = %77, %70
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.termios*, %struct.termios** %3, align 8
  %101 = getelementptr inbounds %struct.termios, %struct.termios* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  br label %17

102:                                              ; preds = %94, %87
  %103 = load i8*, i8** %7, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.termios*, %struct.termios** %3, align 8
  %116 = getelementptr inbounds %struct.termios, %struct.termios* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  br label %17

117:                                              ; preds = %109, %102
  %118 = load i8*, i8** %7, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @sscanf(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64* %8)
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.termios*, %struct.termios** %3, align 8
  %133 = getelementptr inbounds %struct.termios, %struct.termios* %132, i32 0, i32 5
  store i64 %131, i64* %133, align 8
  br label %17

134:                                              ; preds = %124, %117
  %135 = load %struct.cchar*, %struct.cchar** @cchars1, align 8
  store %struct.cchar* %135, %struct.cchar** %5, align 8
  br label %136

136:                                              ; preds = %184, %134
  %137 = load %struct.cchar*, %struct.cchar** %5, align 8
  %138 = getelementptr inbounds %struct.cchar, %struct.cchar* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %187

141:                                              ; preds = %136
  %142 = load i8*, i8** %7, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = load %struct.cchar*, %struct.cchar** %5, align 8
  %146 = getelementptr inbounds %struct.cchar, %struct.cchar* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %144, %150
  br i1 %151, label %152, label %183

152:                                              ; preds = %141
  %153 = load i8*, i8** %7, align 8
  %154 = load %struct.cchar*, %struct.cchar** %5, align 8
  %155 = getelementptr inbounds %struct.cchar, %struct.cchar* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @strcmp(i8* %153, i8* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %183, label %159

159:                                              ; preds = %152
  %160 = load %struct.cchar*, %struct.cchar** %5, align 8
  %161 = getelementptr inbounds %struct.cchar, %struct.cchar* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @VMIN, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load %struct.cchar*, %struct.cchar** %5, align 8
  %167 = getelementptr inbounds %struct.cchar, %struct.cchar* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @VTIME, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165, %159
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @sscanf(i8* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64* %8)
  br label %174

174:                                              ; preds = %171, %165
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.termios*, %struct.termios** %3, align 8
  %177 = getelementptr inbounds %struct.termios, %struct.termios* %176, i32 0, i32 6
  %178 = load i64*, i64** %177, align 8
  %179 = load %struct.cchar*, %struct.cchar** %5, align 8
  %180 = getelementptr inbounds %struct.cchar, %struct.cchar* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  store i64 %175, i64* %182, align 8
  br label %187

183:                                              ; preds = %152, %141
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.cchar*, %struct.cchar** %5, align 8
  %186 = getelementptr inbounds %struct.cchar, %struct.cchar* %185, i32 1
  store %struct.cchar* %186, %struct.cchar** %5, align 8
  br label %136

187:                                              ; preds = %174, %136
  %188 = load %struct.cchar*, %struct.cchar** %5, align 8
  %189 = getelementptr inbounds %struct.cchar, %struct.cchar* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 @gerr(i8* %193)
  br label %195

195:                                              ; preds = %192, %187
  br label %17

196:                                              ; preds = %28, %17
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @gerr(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
