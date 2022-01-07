; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_makeucnid.c_read_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_makeucnid.c_read_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"opening UnicodeData.txt\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"parsing UnicodeData.txt, reading code point\00", align 1
@flags = common dso_local global i32* null, align 8
@C99 = common dso_local global i32 0, align 4
@CXX = common dso_local global i32 0, align 4
@digit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"parsing UnicodeData.txt, combining class not number\00", align 1
@combining_value = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"parsing UnicodeData.txt, junk after combining class\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"parsing UnicodeData.txt, decomposition format\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"parsing UnicodeData.txt, decomposition too long\00", align 1
@decomp = common dso_local global i64** null, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"reading UnicodeData.txt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_table(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca [4 x i64], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  br label %17

17:                                               ; preds = %194, %122, %50, %16
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @fgets(i8* %18, i32 256, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %195

23:                                               ; preds = %17
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %25 = call i8* @strtoul(i8* %24, i8** %7, i32 16)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 59
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %23
  %36 = call i32 @fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i64, i64* %5, align 8
  %39 = icmp ugt i64 %38, 65535
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** @flags, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @C99, align 4
  %46 = load i32, i32* @CXX, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40, %37
  br label %17

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %55, %51
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 59
  br i1 %59, label %52, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 78
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @digit, align 4
  %68 = load i32*, i32** @flags, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %77, %73
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 59
  br i1 %81, label %74, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @isdigit(i8 signext %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = call i32 @fail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %82
  %91 = load i8*, i8** %7, align 8
  %92 = call i8* @strtoul(i8* %91, i8** %7, i32 10)
  %93 = load i8**, i8*** @combining_value, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  store i8* %92, i8** %95, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  %98 = load i8, i8* %96, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 59
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = call i32 @fail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %90
  br label %104

104:                                              ; preds = %107, %103
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  br label %107

107:                                              ; preds = %104
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 59
  br i1 %111, label %104, label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** @flags, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %9, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %7, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 60
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %17

123:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %165, %123
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %168

127:                                              ; preds = %124
  %128 = load i8*, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 59
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %168

133:                                              ; preds = %127
  %134 = load i8*, i8** %7, align 8
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @isxdigit(i8 signext %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %133
  %141 = load i8*, i8** %7, align 8
  %142 = call i8* @strtoul(i8* %141, i8** %7, i32 16)
  %143 = ptrtoint i8* %142 to i64
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %145
  store i64 %143, i64* %146, align 8
  %147 = load i32*, i32** @flags, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %161, %140
  %157 = load i8*, i8** %7, align 8
  %158 = load i8, i8* %157, align 1
  %159 = call i64 @isspace(i8 signext %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %7, align 8
  br label %156

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %124

168:                                              ; preds = %132, %124
  %169 = load i32, i32* %8, align 4
  %170 = icmp sgt i32 %169, 2
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = call i32 @fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %168
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %181, %176
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %8, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i64**, i64*** @decomp, align 8
  %187 = load i64, i64* %5, align 8
  %188 = getelementptr inbounds i64*, i64** %186, i64 %187
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  store i64 %185, i64* %192, align 8
  br label %177

193:                                              ; preds = %177
  br label %194

194:                                              ; preds = %193, %173
  br label %17

195:                                              ; preds = %22
  %196 = load i32*, i32** %3, align 8
  %197 = call i64 @ferror(i32* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %195
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @fclose(i32* %202)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
