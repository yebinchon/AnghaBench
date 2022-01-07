; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_getopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_getopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Illegal option -%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No arg for -%c option\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"OPTARG\00", align 1
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"OPTIND\00", align 1
@VNOFUNC = common dso_local global i32 0, align 4
@EXERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i8***, i8**)* @getopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getopts(i8* %0, i8* %1, i8** %2, i8*** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [10 x i8], align 1
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8*** %3, i8**** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8 63, i8* %14, align 1
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %19, align 8
  %20 = load i8**, i8*** %11, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %23, %5
  %29 = load i8***, i8**** %10, align 8
  %30 = load i8**, i8*** %29, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %222

33:                                               ; preds = %28
  %34 = load i8***, i8**** %10, align 8
  %35 = load i8**, i8*** %34, align 8
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 45
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %44, %39, %33
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i8***, i8**** %10, align 8
  %53 = load i8**, i8*** %52, align 8
  %54 = load i8**, i8*** %9, align 8
  %55 = ptrtoint i8** %53 to i64
  %56 = ptrtoint i8** %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 8
  %59 = add nsw i64 %58, 1
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load i8***, i8**** %10, align 8
  store i8** null, i8*** %61, align 8
  store i8* null, i8** %12, align 8
  store i32 1, i32* %15, align 4
  br label %165

62:                                               ; preds = %44
  %63 = load i8***, i8**** %10, align 8
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %63, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 45
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %51

78:                                               ; preds = %71, %62
  br label %79

79:                                               ; preds = %78, %23
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %12, align 8
  %82 = load i8, i8* %80, align 1
  store i8 %82, i8* %14, align 1
  %83 = load i8*, i8** %7, align 8
  store i8* %83, i8** %13, align 8
  br label %84

84:                                               ; preds = %120, %79
  %85 = load i8*, i8** %13, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* %14, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %84
  %92 = load i8*, i8** %13, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 58
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i8, i8* %14, align 1
  %104 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  store i8 %103, i8* %104, align 1
  %105 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 1
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  store i8* %106, i8** %19, align 8
  br label %110

107:                                              ; preds = %96
  %108 = load i8, i8* %14, align 1
  %109 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 signext %108)
  br label %110

110:                                              ; preds = %107, %102
  store i8 63, i8* %14, align 1
  br label %165

111:                                              ; preds = %91
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %13, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 58
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i8*, i8** %13, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %13, align 8
  br label %120

120:                                              ; preds = %117, %111
  br label %84

121:                                              ; preds = %84
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %13, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 58
  br i1 %126, label %127, label %164

127:                                              ; preds = %121
  %128 = load i8*, i8** %12, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %127
  %133 = load i8***, i8**** %10, align 8
  %134 = load i8**, i8*** %133, align 8
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %12, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %152

137:                                              ; preds = %132
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 58
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i8, i8* %14, align 1
  %145 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  store i8 %144, i8* %145, align 1
  %146 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 1
  store i8 0, i8* %146, align 1
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  store i8* %147, i8** %19, align 8
  store i8 58, i8* %14, align 1
  br label %151

148:                                              ; preds = %137
  %149 = load i8, i8* %14, align 1
  %150 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 signext %149)
  store i8 63, i8* %14, align 1
  br label %151

151:                                              ; preds = %148, %143
  br label %165

152:                                              ; preds = %132, %127
  %153 = load i8*, i8** %12, align 8
  %154 = load i8***, i8**** %10, align 8
  %155 = load i8**, i8*** %154, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = icmp eq i8* %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i8***, i8**** %10, align 8
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i32 1
  store i8** %161, i8*** %159, align 8
  br label %162

162:                                              ; preds = %158, %152
  %163 = load i8*, i8** %12, align 8
  store i8* %163, i8** %19, align 8
  store i8* null, i8** %12, align 8
  br label %164

164:                                              ; preds = %162, %121
  br label %165

165:                                              ; preds = %164, %151, %110, %51
  %166 = load i8***, i8**** %10, align 8
  %167 = load i8**, i8*** %166, align 8
  %168 = icmp ne i8** %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %165
  %170 = load i8***, i8**** %10, align 8
  %171 = load i8**, i8*** %170, align 8
  %172 = load i8**, i8*** %9, align 8
  %173 = ptrtoint i8** %171 to i64
  %174 = ptrtoint i8** %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 8
  %177 = add nsw i64 %176, 1
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %169, %165
  %180 = load i8*, i8** %12, align 8
  %181 = load i8**, i8*** %11, align 8
  store i8* %180, i8** %181, align 8
  %182 = load i8*, i8** %19, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i8*, i8** %19, align 8
  %186 = call i32 @setvarsafe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %185, i32 0)
  %187 = load i32, i32* %17, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %17, align 4
  br label %195

189:                                              ; preds = %179
  %190 = load i32, i32* @INTOFF, align 4
  %191 = call i32 @unsetvar(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i32, i32* %17, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* @INTON, align 4
  br label %195

195:                                              ; preds = %189, %184
  %196 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @fmtstr(i8* %196, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  %199 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %200 = load i32, i32* @VNOFUNC, align 4
  %201 = call i32 @setvarsafe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %199, i32 %200)
  %202 = load i32, i32* %17, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %17, align 4
  %204 = load i8, i8* %14, align 1
  %205 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  store i8 %204, i8* %205, align 1
  %206 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 1
  store i8 0, i8* %206, align 1
  %207 = load i8*, i8** %8, align 8
  %208 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %209 = call i32 @setvarsafe(i8* %207, i8* %208, i32 0)
  %210 = load i32, i32* %17, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %195
  %215 = load i8***, i8**** %10, align 8
  store i8** null, i8*** %215, align 8
  %216 = load i8**, i8*** %11, align 8
  store i8* null, i8** %216, align 8
  %217 = call i32 (...) @flushall()
  %218 = load i32, i32* @EXERROR, align 4
  %219 = call i32 @exraise(i32 %218)
  br label %220

220:                                              ; preds = %214, %195
  %221 = load i32, i32* %15, align 4
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %220, %32
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i32 @out2fmt_flush(i8*, i8 signext) #1

declare dso_local i32 @setvarsafe(i8*, i8*, i32) #1

declare dso_local i32 @unsetvar(i8*) #1

declare dso_local i32 @fmtstr(i8*, i32, i8*, i32) #1

declare dso_local i32 @flushall(...) #1

declare dso_local i32 @exraise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
