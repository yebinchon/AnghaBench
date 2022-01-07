; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_date.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_date.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vary = type { i8* }
%struct.tm = type { i32 }
%struct.stat = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@LC_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"f:I::jnRr:uv:\00", align 1
@optarg = common dso_local global i8* null, align 8
@iso8601_fmts = common dso_local global %struct.TYPE_6__* null, align 8
@iso8601_selected = common dso_local global %struct.TYPE_6__* null, align 8
@tval = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UTC0\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%+\00", align 1
@rfc2822_format = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"invalid time\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"%s: Cannot apply date adjustment\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.vary*, align 8
  %16 = alloca %struct.vary*, align 8
  %17 = alloca %struct.tm*, align 8
  %18 = alloca %struct.stat, align 4
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.vary* null, %struct.vary** %15, align 8
  store i8* null, i8** %13, align 8
  %20 = load i32, i32* @LC_TIME, align 4
  %21 = call i32 @setlocale(i32 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %110, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %111

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = trunc i32 %28 to i8
  %30 = sext i8 %29 to i32
  switch i32 %30, label %108 [
    i32 102, label %31
    i32 73, label %33
    i32 106, label %75
    i32 110, label %76
    i32 82, label %77
    i32 114, label %83
    i32 117, label %102
    i32 118, label %104
  ]

31:                                               ; preds = %27
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** %13, align 8
  br label %110

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (...) @multipleformats()
  br label %38

38:                                               ; preds = %36, %33
  store i32 1, i32* %8, align 4
  %39 = load i8*, i8** @optarg, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @iso8601_fmts, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** @iso8601_selected, align 8
  br label %110

43:                                               ; preds = %38
  store i64 0, i64* %19, align 8
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i64, i64* %19, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @iso8601_fmts, align 8
  %47 = call i64 @nitems(%struct.TYPE_6__* %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i8*, i8** @optarg, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @iso8601_fmts, align 8
  %52 = load i64, i64* %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcmp(i8* %50, i32 %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %19, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %19, align 8
  br label %44

63:                                               ; preds = %58, %44
  %64 = load i64, i64* %19, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @iso8601_fmts, align 8
  %66 = call i64 @nitems(%struct.TYPE_6__* %65)
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i32 @iso8601_usage(i8* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @iso8601_fmts, align 8
  %73 = load i64, i64* %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %73
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** @iso8601_selected, align 8
  br label %110

75:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %110

76:                                               ; preds = %27
  br label %110

77:                                               ; preds = %27
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (...) @multipleformats()
  br label %82

82:                                               ; preds = %80, %77
  store i32 1, i32* %10, align 4
  br label %110

83:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  %84 = load i8*, i8** @optarg, align 8
  %85 = call i32 @strtoq(i8* %84, i8** %14, i32 0)
  store i32 %85, i32* @tval, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load i8*, i8** @optarg, align 8
  %92 = call i32 @stat(i8* %91, %struct.stat* %18)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* @tval, align 4
  br label %100

98:                                               ; preds = %90
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %94
  br label %101

101:                                              ; preds = %100, %83
  br label %110

102:                                              ; preds = %27
  %103 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %110

104:                                              ; preds = %27
  %105 = load %struct.vary*, %struct.vary** %15, align 8
  %106 = load i8*, i8** @optarg, align 8
  %107 = call %struct.vary* @vary_append(%struct.vary* %105, i8* %106)
  store %struct.vary* %107, %struct.vary** %15, align 8
  br label %110

108:                                              ; preds = %27
  %109 = call i32 (...) @usage()
  br label %110

110:                                              ; preds = %108, %104, %102, %101, %82, %76, %75, %71, %41, %31
  br label %22

111:                                              ; preds = %22
  %112 = load i64, i64* @optind, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %4, align 4
  %117 = load i64, i64* @optind, align 8
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 %117
  store i8** %119, i8*** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %111
  %123 = call i32 @time(i32* @tval)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122, %111
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i8*, i8** @rfc2822_format, align 8
  store i8* %131, i8** %11, align 8
  br label %132

132:                                              ; preds = %130, %127
  %133 = load i8**, i8*** %5, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load i8**, i8*** %5, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 43
  br i1 %141, label %142, label %153

142:                                              ; preds = %136
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 (...) @multipleformats()
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i8**, i8*** %5, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8* %150, i8** %11, align 8
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i32 1
  store i8** %152, i8*** %5, align 8
  br label %153

153:                                              ; preds = %147, %136, %132
  %154 = load i8**, i8*** %5, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i8*, i8** %13, align 8
  %159 = load i8**, i8*** %5, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @setthetime(i8* %158, i8* %160, i32 %161)
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %164, i8*** %5, align 8
  br label %171

165:                                              ; preds = %153
  %166 = load i8*, i8** %13, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 (...) @usage()
  br label %170

170:                                              ; preds = %168, %165
  br label %171

171:                                              ; preds = %170, %157
  %172 = load i8**, i8*** %5, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %190

175:                                              ; preds = %171
  %176 = load i8**, i8*** %5, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 43
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 (...) @multipleformats()
  br label %186

186:                                              ; preds = %184, %181
  %187 = load i8**, i8*** %5, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %11, align 8
  br label %190

190:                                              ; preds = %186, %175, %171
  %191 = call %struct.tm* @localtime(i32* @tval)
  store %struct.tm* %191, %struct.tm** %17, align 8
  %192 = load %struct.tm*, %struct.tm** %17, align 8
  %193 = icmp eq %struct.tm* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %190
  %197 = load %struct.vary*, %struct.vary** %15, align 8
  %198 = load %struct.tm*, %struct.tm** %17, align 8
  %199 = call %struct.vary* @vary_apply(%struct.vary* %197, %struct.tm* %198)
  store %struct.vary* %199, %struct.vary** %16, align 8
  %200 = load %struct.vary*, %struct.vary** %16, align 8
  %201 = icmp ne %struct.vary* %200, null
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load i32, i32* @stderr, align 4
  %204 = load %struct.vary*, %struct.vary** %16, align 8
  %205 = getelementptr inbounds %struct.vary, %struct.vary* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @fprintf(i32 %203, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %206)
  %208 = load %struct.vary*, %struct.vary** %15, align 8
  %209 = call i32 @vary_destroy(%struct.vary* %208)
  %210 = call i32 (...) @usage()
  br label %211

211:                                              ; preds = %202, %196
  %212 = load %struct.vary*, %struct.vary** %15, align 8
  %213 = call i32 @vary_destroy(%struct.vary* %212)
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load %struct.tm*, %struct.tm** %17, align 8
  %218 = call i32 @printisodate(%struct.tm* %217)
  br label %219

219:                                              ; preds = %216, %211
  %220 = load i8*, i8** %11, align 8
  %221 = load i8*, i8** @rfc2822_format, align 8
  %222 = icmp eq i8* %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* @LC_TIME, align 4
  %225 = call i32 @setlocale(i32 %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %219
  %227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %228 = load i8*, i8** %11, align 8
  %229 = load %struct.tm*, %struct.tm** %17, align 8
  %230 = call i32 @strftime(i8* %227, i32 1024, i8* %228, %struct.tm* %229)
  %231 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %232 = call i32 @printdate(i8* %231)
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @multipleformats(...) #1

declare dso_local i64 @nitems(%struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @iso8601_usage(i8*) #1

declare dso_local i32 @strtoq(i8*, i8**, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local %struct.vary* @vary_append(%struct.vary*, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @setthetime(i8*, i8*, i32) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local %struct.vary* @vary_apply(%struct.vary*, %struct.tm*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @vary_destroy(%struct.vary*) #1

declare dso_local i32 @printisodate(%struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @printdate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
