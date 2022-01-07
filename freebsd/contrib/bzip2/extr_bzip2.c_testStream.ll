; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_testStream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_testStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BZ_MAX_UNUSED = common dso_local global i32 0, align 4
@True = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@smallMode = common dso_local global i64 0, align 8
@BZ_OK = common dso_local global i64 0, align 8
@BZ_STREAM_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1
@EOF = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@progName = common dso_local global i8* null, align 8
@inName = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1
@False = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1
@noisy = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"test:end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @testStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @testStream(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [5000 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %17 = load i32, i32* @BZ_MAX_UNUSED, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %8, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @SET_BINARY_MODE(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @ferror(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %142

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %106, %27
  %29 = load i64, i64* @True, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %107

31:                                               ; preds = %28
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @verbosity, align 4
  %34 = load i64, i64* @smallMode, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %13, align 8
  %37 = call i32* @BZ2_bzReadOpen(i64* %5, i32* %32, i32 %33, i32 %35, i32* %20, i64 %36)
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @BZ_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %31
  br label %127

45:                                               ; preds = %40
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %59, %45
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @BZ_OK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds [5000 x i32], [5000 x i32]* %10, i64 0, i64 0
  %55 = call i32 @BZ2_bzRead(i64* %5, i32* %53, i32* %54, i32 5000)
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 131
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %127

59:                                               ; preds = %52
  br label %48

60:                                               ; preds = %48
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @BZ_STREAM_END, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %127

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @BZ2_bzReadGetUnused(i64* %5, i32* %66, i8** %14, i64* %13)
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @BZ_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i8*, i8** %14, align 8
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %15, align 8
  store i64 0, i64* %9, align 8
  br label %76

76:                                               ; preds = %87, %73
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32*, i32** %15, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i32, i32* %20, i64 %85
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %80
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %76

90:                                               ; preds = %76
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @BZ2_bzReadClose(i64* %5, i32* %91)
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @BZ_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %90
  %99 = load i64, i64* %13, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32*, i32** %3, align 8
  %103 = call i64 @myfeof(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %107

106:                                              ; preds = %101, %98
  br label %28

107:                                              ; preds = %105, %28
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @ferror(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %142

112:                                              ; preds = %107
  %113 = load i32*, i32** %3, align 8
  %114 = call i64 @fclose(i32* %113)
  store i64 %114, i64* %7, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @EOF, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %142

119:                                              ; preds = %112
  %120 = load i32, i32* @verbosity, align 4
  %121 = icmp sge i32 %120, 2
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i64, i64* @True, align 8
  store i64 %126, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %181

127:                                              ; preds = %64, %58, %44
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @BZ2_bzReadClose(i64* %6, i32* %128)
  %130 = load i32, i32* @verbosity, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* @stderr, align 4
  %134 = load i8*, i8** @progName, align 8
  %135 = load i8*, i8** @inName, align 8
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %134, i8* %135)
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i64, i64* %5, align 8
  switch i64 %138, label %176 [
    i64 133, label %139
    i64 130, label %141
    i64 132, label %144
    i64 129, label %148
    i64 128, label %150
    i64 131, label %154
  ]

139:                                              ; preds = %137
  %140 = call i32 (...) @configError()
  br label %178

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %118, %111, %26
  %143 = call i32 (...) @ioError()
  br label %178

144:                                              ; preds = %137
  %145 = load i32, i32* @stderr, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i64, i64* @False, align 8
  store i64 %147, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %181

148:                                              ; preds = %137
  %149 = call i32 (...) @outOfMemory()
  br label %150

150:                                              ; preds = %137, %148
  %151 = load i32, i32* @stderr, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %153 = load i64, i64* @False, align 8
  store i64 %153, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %181

154:                                              ; preds = %137
  %155 = load i32*, i32** %3, align 8
  %156 = load i32*, i32** @stdin, align 8
  %157 = icmp ne i32* %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32*, i32** %3, align 8
  %160 = call i64 @fclose(i32* %159)
  br label %161

161:                                              ; preds = %158, %154
  %162 = load i64, i64* %8, align 8
  %163 = icmp eq i64 %162, 1
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %167 = load i64, i64* @False, align 8
  store i64 %167, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %181

168:                                              ; preds = %161
  %169 = load i32, i32* @noisy, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i64, i64* @True, align 8
  store i64 %175, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %181

176:                                              ; preds = %137
  %177 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %142, %139
  %179 = call i32 @panic(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %180 = load i64, i64* @True, align 8
  store i64 %180, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %181

181:                                              ; preds = %178, %174, %164, %150, %144, %125
  %182 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i64, i64* %2, align 8
  ret i64 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SET_BINARY_MODE(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32* @BZ2_bzReadOpen(i64*, i32*, i32, i32, i32*, i64) #2

declare dso_local i32 @BZ2_bzRead(i64*, i32*, i32*, i32) #2

declare dso_local i32 @BZ2_bzReadGetUnused(i64*, i32*, i8**, i64*) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @BZ2_bzReadClose(i64*, i32*) #2

declare dso_local i64 @myfeof(i32*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @configError(...) #2

declare dso_local i32 @ioError(...) #2

declare dso_local i32 @outOfMemory(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
