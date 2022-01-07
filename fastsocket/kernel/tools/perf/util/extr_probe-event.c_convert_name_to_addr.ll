; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_convert_name_to_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_convert_name_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i8*, i8*, %struct.perf_probe_point }
%struct.perf_probe_point = type { i8*, i64 }
%struct.symbol = type { i64 }
%struct.map = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No function specified for uprobes\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate memory by strdup.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot find realpath for %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot find appropriate DSO for %s.\0A\00", align 1
@available_func_filter = common dso_local global i32 0, align 4
@filter_available_functions = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to load map.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Cannot find %s in DSO %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to copy exec string.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-._\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@PERFPROBE_GROUP = common dso_local global i32 0, align 4
@MAX_PROBE_ARGS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"Failed to allocate memory by zalloc.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_probe_event*, i8*)* @convert_name_to_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_name_to_addr(%struct.perf_probe_event* %0, i8* %1) #0 {
  %3 = alloca %struct.perf_probe_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_probe_point*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %15, i32 0, i32 2
  store %struct.perf_probe_point* %16, %struct.perf_probe_point** %5, align 8
  store %struct.map* null, %struct.map** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %19 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %20 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %177

25:                                               ; preds = %2
  %26 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %27 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %177

36:                                               ; preds = %25
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @realpath(i8* %37, i32* null)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %177

44:                                               ; preds = %36
  %45 = load i8*, i8** %9, align 8
  %46 = call %struct.map* @dso__new_map(i8* %45)
  store %struct.map* %46, %struct.map** %7, align 8
  %47 = load %struct.map*, %struct.map** %7, align 8
  %48 = icmp ne %struct.map* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %177

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strfilter__new(i8* %53, i32* null)
  store i32 %54, i32* @available_func_filter, align 4
  %55 = load %struct.map*, %struct.map** %7, align 8
  %56 = load i32, i32* @filter_available_functions, align 4
  %57 = call i64 @map__load(%struct.map* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %177

61:                                               ; preds = %52
  %62 = load %struct.map*, %struct.map** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call %struct.symbol* @map__find_symbol_by_name(%struct.map* %62, i8* %63, i32* null)
  store %struct.symbol* %64, %struct.symbol** %6, align 8
  %65 = load %struct.symbol*, %struct.symbol** %6, align 8
  %66 = icmp ne %struct.symbol* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %68, i8* %69)
  br label %177

71:                                               ; preds = %61
  %72 = load %struct.map*, %struct.map** %7, align 8
  %73 = getelementptr inbounds %struct.map, %struct.map* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.symbol*, %struct.symbol** %6, align 8
  %76 = getelementptr inbounds %struct.symbol, %struct.symbol* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.map*, %struct.map** %7, align 8
  %81 = getelementptr inbounds %struct.map, %struct.map* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %79, %71
  %84 = load %struct.symbol*, %struct.symbol** %6, align 8
  %85 = getelementptr inbounds %struct.symbol, %struct.symbol* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %88 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  %91 = load %struct.map*, %struct.map** %7, align 8
  %92 = getelementptr inbounds %struct.map, %struct.map* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %11, align 8
  %97 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %98 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %100 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %83
  %104 = load i8*, i8** %8, align 8
  %105 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %106 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  store i8* null, i8** %8, align 8
  br label %107

107:                                              ; preds = %103, %83
  %108 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %109 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %150, label %112

112:                                              ; preds = %107
  %113 = call i8* @zalloc(i32 512)
  %114 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %115 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = call i8* @strdup(i8* %116)
  store i8* %117, i8** %14, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  %123 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %177

124:                                              ; preds = %112
  %125 = load i8*, i8** %14, align 8
  %126 = call i8* @basename(i8* %125)
  %127 = call i8* @strdup(i8* %126)
  store i8* %127, i8** %12, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load i8*, i8** %12, align 8
  %132 = call i8* @strpbrk(i8* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i8* %132, i8** %13, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i8*, i8** %13, align 8
  store i8 0, i8* %136, align 1
  br label %137

137:                                              ; preds = %135, %130
  %138 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %139 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* @PERFPROBE_GROUP, align 4
  %142 = sext i32 %141 to i64
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 (i8*, i32, i8*, i64, ...) @e_snprintf(i8* %140, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 %142, i8* %143)
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @free(i8* %145)
  br label %147

147:                                              ; preds = %137, %124
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @free(i8* %148)
  br label %150

150:                                              ; preds = %147, %107
  %151 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %152 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i32, i32* @MAX_PROBE_ARGS, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 8, %156
  %158 = trunc i64 %157 to i32
  %159 = call i8* @zalloc(i32 %158)
  %160 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %161 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %163 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %150
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  %169 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %177

170:                                              ; preds = %150
  %171 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %172 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* @MAX_PROBE_ARGS, align 4
  %175 = load i64, i64* %11, align 8
  %176 = call i32 (i8*, i32, i8*, i64, ...) @e_snprintf(i8* %173, i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 %175)
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %170, %166, %120, %67, %59, %49, %41, %32, %23
  %178 = load %struct.map*, %struct.map** %7, align 8
  %179 = icmp ne %struct.map* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load %struct.map*, %struct.map** %7, align 8
  %182 = getelementptr inbounds %struct.map, %struct.map* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dso__delete(i32 %183)
  %185 = load %struct.map*, %struct.map** %7, align 8
  %186 = call i32 @map__delete(%struct.map* %185)
  br label %187

187:                                              ; preds = %180, %177
  %188 = load i8*, i8** %8, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i8*, i8** %8, align 8
  %192 = call i32 @free(i8* %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i8*, i8** %9, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 @free(i8* %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %10, align 4
  ret i32 %200
}

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local %struct.map* @dso__new_map(i8*) #1

declare dso_local i32 @strfilter__new(i8*, i32*) #1

declare dso_local i64 @map__load(%struct.map*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.symbol* @map__find_symbol_by_name(%struct.map*, i8*, i32*) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @e_snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dso__delete(i32) #1

declare dso_local i32 @map__delete(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
