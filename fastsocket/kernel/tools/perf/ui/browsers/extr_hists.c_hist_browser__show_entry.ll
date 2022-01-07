; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hist_browser__show_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hist_browser__show_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64 (%struct.perf_hpp*, %struct.hist_entry*)*, i64 (%struct.perf_hpp*, %struct.hist_entry*)*, i32 }
%struct.perf_hpp = type { i8*, i32, double* }
%struct.hist_entry = type { i64, i32, i32 }
%struct.hist_browser = type { %struct.hist_entry*, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32, i16, i32 }

@symbol_conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PERF_HPP__MAX_INDEX = common dso_local global i32 0, align 4
@perf_hpp__format = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@PERF_HPP__OVERHEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HE_COLORSET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.hist_entry*, i16)* @hist_browser__show_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_browser__show_entry(%struct.hist_browser* %0, %struct.hist_entry* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.hist_browser*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i16, align 2
  %7 = alloca [256 x i8], align 16
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.perf_hpp, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  store i16 %2, i16* %6, align 2
  store i32 0, i32* %10, align 4
  %17 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %18 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  store i8 32, i8* %12, align 1
  %21 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %22 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %21, i32 0, i32 1
  %23 = load i16, i16* %6, align 2
  %24 = call i32 @ui_browser__is_current_entry(%struct.TYPE_7__* %22, i16 zeroext %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %26 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  store i32 1, i32* %15, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %32 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %33 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %32, i32 0, i32 0
  store %struct.hist_entry* %31, %struct.hist_entry** %33, align 8
  %34 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %35 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %34, i32 0, i32 2
  %36 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %37 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  br label %38

38:                                               ; preds = %30, %3
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %43 = call i32 @hist_entry__init_have_children(%struct.hist_entry* %42)
  %44 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %45 = call signext i8 @hist_entry__folded(%struct.hist_entry* %44)
  store i8 %45, i8* %12, align 1
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i64, i64* %14, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %176

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %16, i32 0, i32 0
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8* %51, i8** %50, align 8
  %52 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %16, i32 0, i32 1
  store i32 256, i32* %52, align 8
  %53 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %16, i32 0, i32 2
  store double* null, double** %53, align 8
  %54 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %55 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %54, i32 0, i32 1
  %56 = load i16, i16* %6, align 2
  %57 = call i32 @ui_browser__gotorc(%struct.TYPE_7__* %55, i16 zeroext %56, i32 0)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %150, %49
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @PERF_HPP__MAX_INDEX, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %153

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @perf_hpp__format, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %150

71:                                               ; preds = %62
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = call i32 (i8*, ...) @slsmg_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 2
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %74, %71
  store i32 0, i32* %15, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @perf_hpp__format, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64 (%struct.perf_hpp*, %struct.hist_entry*)*, i64 (%struct.perf_hpp*, %struct.hist_entry*)** %83, align 8
  %85 = icmp ne i64 (%struct.perf_hpp*, %struct.hist_entry*)* %84, null
  br i1 %85, label %86, label %134

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %16, i32 0, i32 2
  store double* %8, double** %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @perf_hpp__format, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64 (%struct.perf_hpp*, %struct.hist_entry*)*, i64 (%struct.perf_hpp*, %struct.hist_entry*)** %92, align 8
  %94 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %95 = call i64 %93(%struct.perf_hpp* %16, %struct.hist_entry* %94)
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %11, align 4
  %100 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %101 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %100, i32 0, i32 1
  %102 = load double, double* %8, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @ui_browser__set_percent_color(%struct.TYPE_7__* %101, double %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @PERF_HPP__OVERHEAD, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %86
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i8, i8* %12, align 1
  %113 = sext i8 %112 to i32
  %114 = call i32 (i8*, ...) @slsmg_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, 2
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %111, %108, %86
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %119 = call i32 (i8*, ...) @slsmg_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %118)
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %124 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %122, %117
  %129 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %130 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %129, i32 0, i32 1
  %131 = load i32, i32* @HE_COLORSET_NORMAL, align 4
  %132 = call i32 @ui_browser__set_color(%struct.TYPE_7__* %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %122
  br label %149

134:                                              ; preds = %78
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** @perf_hpp__format, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64 (%struct.perf_hpp*, %struct.hist_entry*)*, i64 (%struct.perf_hpp*, %struct.hist_entry*)** %139, align 8
  %141 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %142 = call i64 %140(%struct.perf_hpp* %16, %struct.hist_entry* %141)
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = sub nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %11, align 4
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %148 = call i32 (i8*, ...) @slsmg_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %134, %133
  br label %150

150:                                              ; preds = %149, %70
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %58

153:                                              ; preds = %58
  %154 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %155 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %159, %153
  %163 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %165 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %166 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @hist_entry__sort_snprintf(%struct.hist_entry* %163, i8* %164, i32 256, i32 %167)
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @slsmg_write_nstring(i8* %169, i32 %170)
  %172 = load i16, i16* %6, align 2
  %173 = add i16 %172, 1
  store i16 %173, i16* %6, align 2
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %179

176:                                              ; preds = %46
  %177 = load i64, i64* %14, align 8
  %178 = add nsw i64 %177, -1
  store i64 %178, i64* %14, align 8
  br label %179

179:                                              ; preds = %176, %162
  %180 = load i8, i8* %12, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 45
  br i1 %182, label %183, label %209

183:                                              ; preds = %179
  %184 = load i16, i16* %6, align 2
  %185 = zext i16 %184 to i32
  %186 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %187 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i16, i16* %188, align 4
  %190 = zext i16 %189 to i32
  %191 = icmp ne i32 %185, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %183
  %193 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %194 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %195 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %194, i32 0, i32 1
  %196 = load i16, i16* %6, align 2
  %197 = call i64 @hist_browser__show_callchain(%struct.hist_browser* %193, i32* %195, i32 1, i16 zeroext %196, i64* %14, i32* %13)
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %192
  %205 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %206 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %207 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %206, i32 0, i32 0
  store %struct.hist_entry* %205, %struct.hist_entry** %207, align 8
  br label %208

208:                                              ; preds = %204, %192
  br label %209

209:                                              ; preds = %208, %183, %179
  %210 = load i32, i32* %10, align 4
  ret i32 %210
}

declare dso_local i32 @ui_browser__is_current_entry(%struct.TYPE_7__*, i16 zeroext) #1

declare dso_local i32 @hist_entry__init_have_children(%struct.hist_entry*) #1

declare dso_local signext i8 @hist_entry__folded(%struct.hist_entry*) #1

declare dso_local i32 @ui_browser__gotorc(%struct.TYPE_7__*, i16 zeroext, i32) #1

declare dso_local i32 @slsmg_printf(i8*, ...) #1

declare dso_local i32 @ui_browser__set_percent_color(%struct.TYPE_7__*, double, i32) #1

declare dso_local i32 @ui_browser__set_color(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @hist_entry__sort_snprintf(%struct.hist_entry*, i8*, i32, i32) #1

declare dso_local i32 @slsmg_write_nstring(i8*, i32) #1

declare dso_local i64 @hist_browser__show_callchain(%struct.hist_browser*, i32*, i32, i16 zeroext, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
