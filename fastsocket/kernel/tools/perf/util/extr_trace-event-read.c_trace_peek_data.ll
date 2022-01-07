; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_trace_peek_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_trace_peek_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, %struct.pevent_record*, i8* }
%struct.pevent_record = type { i32, i32, i8* }
%struct.pevent = type { i32 }

@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@header_page_ts_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"expected a long long type for timestamp\00", align 1
@header_page_size_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"bad long size\00", align 1
@header_page_data_offset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error, hit unexpected end of page\00", align 1
@TS_SHIFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"here! length=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pevent_record* @trace_peek_data(%struct.pevent* %0, i32 %1) #0 {
  %3 = alloca %struct.pevent_record*, align 8
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pevent_record*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  store i8* %30, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load %struct.pevent_record*, %struct.pevent_record** %35, align 8
  %37 = icmp ne %struct.pevent_record* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load %struct.pevent_record*, %struct.pevent_record** %43, align 8
  store %struct.pevent_record* %44, %struct.pevent_record** %3, align 8
  br label %241

45:                                               ; preds = %2
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store %struct.pevent_record* null, %struct.pevent_record** %3, align 8
  br label %241

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %106, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @header_page_ts_size, align 4
  %54 = icmp ne i32 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.pevent*, %struct.pevent** %4, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i8* @data2host8(%struct.pevent* %58, i8* %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i64 %61, i64* %66, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %9, align 8
  %69 = load i32, i32* @header_page_size_size, align 4
  switch i32 %69, label %94 [
    i32 4, label %70
    i32 8, label %82
  ]

70:                                               ; preds = %57
  %71 = load %struct.pevent*, %struct.pevent** %4, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i8* @data2host4(%struct.pevent* %71, i8* %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %74, i32* %79, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr i8, i8* %80, i64 4
  store i8* %81, i8** %9, align 8
  br label %96

82:                                               ; preds = %57
  %83 = load %struct.pevent*, %struct.pevent** %4, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i8* @data2host8(%struct.pevent* %83, i8* %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 %86, i32* %91, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr i8, i8* %92, i64 8
  store i8* %93, i8** %9, align 8
  br label %96

94:                                               ; preds = %57
  %95 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %82, %70
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @header_page_data_offset, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  store i8* %105, i8** %9, align 8
  br label %106

106:                                              ; preds = %96, %49
  br label %107

107:                                              ; preds = %156, %143, %106
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i8* @calc_index(i8* %108, i32 %109)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp sge i32 %112, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %107
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @get_next_page(i32 %121)
  %123 = load %struct.pevent*, %struct.pevent** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call %struct.pevent_record* @trace_peek_data(%struct.pevent* %123, i32 %124)
  store %struct.pevent_record* %125, %struct.pevent_record** %3, align 8
  br label %241

126:                                              ; preds = %107
  %127 = load %struct.pevent*, %struct.pevent** %4, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i8* @data2host4(%struct.pevent* %127, i8* %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %11, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr i8, i8* %131, i64 4
  store i8* %132, i8** %9, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @type_len4host(i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @ts4host(i32 %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  switch i32 %137, label %190 [
    i32 130, label %138
    i32 129, label %156
    i32 128, label %178
    i32 0, label %181
  ]

138:                                              ; preds = %126
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %138
  %144 = load %struct.pevent*, %struct.pevent** %4, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i8* @data2host4(%struct.pevent* %144, i8* %145)
  %147 = ptrtoint i8* %146 to i32
  store i32 %147, i32* %14, align 4
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr i8, i8* %148, i64 4
  store i8* %149, i8** %9, align 8
  %150 = load i32, i32* %14, align 4
  %151 = mul i32 %150, 4
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = zext i32 %152 to i64
  %155 = getelementptr i8, i8* %153, i64 %154
  store i8* %155, i8** %9, align 8
  br label %107

156:                                              ; preds = %126
  %157 = load %struct.pevent*, %struct.pevent** %4, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call i8* @data2host4(%struct.pevent* %157, i8* %158)
  %160 = ptrtoint i8* %159 to i64
  store i64 %160, i64* %10, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr i8, i8* %161, i64 4
  store i8* %162, i8** %9, align 8
  %163 = load i64, i64* @TS_SHIFT, align 8
  %164 = load i64, i64* %10, align 8
  %165 = shl i64 %164, %163
  store i64 %165, i64* %10, align 8
  %166 = load i32, i32* %13, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %10, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %10, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, %170
  store i64 %177, i64* %175, align 8
  br label %107

178:                                              ; preds = %126
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr i8, i8* %179, i64 12
  store i8* %180, i8** %9, align 8
  br label %193

181:                                              ; preds = %126
  %182 = load %struct.pevent*, %struct.pevent** %4, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = call i8* @data2host4(%struct.pevent* %182, i8* %183)
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %14, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr i8, i8* %186, i64 4
  store i8* %187, i8** %9, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  br label %193

190:                                              ; preds = %126
  %191 = load i32, i32* %12, align 4
  %192 = mul i32 %191, 4
  store i32 %192, i32* %14, align 4
  br label %193

193:                                              ; preds = %190, %181, %178
  %194 = load i32, i32* %13, align 4
  %195 = zext i32 %194 to i64
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, %195
  store i64 %202, i64* %200, align 8
  %203 = call %struct.pevent_record* @malloc_or_die(i32 16)
  store %struct.pevent_record* %203, %struct.pevent_record** %6, align 8
  %204 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %205 = call i32 @memset(%struct.pevent_record* %204, i32 0, i32 16)
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %214 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %217 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load i8*, i8** %9, align 8
  %219 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %220 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = load i32, i32* %14, align 4
  %222 = load i8*, i8** %9, align 8
  %223 = zext i32 %221 to i64
  %224 = getelementptr i8, i8* %222, i64 %223
  store i8* %224, i8** %9, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load i32, i32* %5, align 4
  %227 = call i8* @calc_index(i8* %225, i32 %226)
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  store i32 %228, i32* %233, align 8
  %234 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 3
  store %struct.pevent_record* %234, %struct.pevent_record** %239, align 8
  %240 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  store %struct.pevent_record* %240, %struct.pevent_record** %3, align 8
  br label %241

241:                                              ; preds = %193, %120, %48, %38
  %242 = load %struct.pevent_record*, %struct.pevent_record** %3, align 8
  ret %struct.pevent_record* %242
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i8* @data2host8(%struct.pevent*, i8*) #1

declare dso_local i8* @data2host4(%struct.pevent*, i8*) #1

declare dso_local i8* @calc_index(i8*, i32) #1

declare dso_local i32 @get_next_page(i32) #1

declare dso_local i32 @type_len4host(i32) #1

declare dso_local i32 @ts4host(i32) #1

declare dso_local %struct.pevent_record* @malloc_or_die(i32) #1

declare dso_local i32 @memset(%struct.pevent_record*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
