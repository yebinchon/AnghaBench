; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_session__read_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_session__read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.perf_session = type { i32*, i32, i64, %struct.perf_header }
%struct.perf_header = type { i32, i32, i64 }
%struct.perf_file_header = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.perf_file_attr = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.perf_evsel = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@trace_events = common dso_local global i32* null, align 8
@trace_event_count = common dso_local global i32 0, align 4
@perf_file_section__process = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_session__read_header(%struct.perf_session* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_header*, align 8
  %7 = alloca %struct.perf_file_header, align 4
  %8 = alloca %struct.perf_file_attr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.perf_evsel*, align 8
  %15 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %17 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %16, i32 0, i32 3
  store %struct.perf_header* %17, %struct.perf_header** %6, align 8
  %18 = call i32* @perf_evlist__new(i32* null, i32* null)
  %19 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %20 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %22 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %220

28:                                               ; preds = %2
  %29 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %30 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @perf_header__read_pipe(%struct.perf_session* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %220

37:                                               ; preds = %28
  %38 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @perf_file_header__read(%struct.perf_file_header* %7, %struct.perf_header* %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %220

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %7, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %48, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %7, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i32 @lseek(i32 %52, i32 %55, i32 %56)
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %141, %45
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %144

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %65 = call i64 @read_attr(i32 %63, %struct.perf_header* %64, %struct.perf_file_attr* %8)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %208

68:                                               ; preds = %62
  %69 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %70 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %8, i32 0, i32 1
  %75 = call i32 @perf_event__attr_swap(i32* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SEEK_CUR, align 4
  %79 = call i32 @lseek(i32 %77, i32 0, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %8, i32 0, i32 1
  %81 = load i32, i32* %12, align 4
  %82 = call %struct.perf_evsel* @perf_evsel__new(i32* %80, i32 %81)
  store %struct.perf_evsel* %82, %struct.perf_evsel** %14, align 8
  %83 = load %struct.perf_evsel*, %struct.perf_evsel** %14, align 8
  %84 = icmp eq %struct.perf_evsel* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %211

86:                                               ; preds = %76
  %87 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %88 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.perf_evsel*, %struct.perf_evsel** %14, align 8
  %91 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %93 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.perf_evsel*, %struct.perf_evsel** %14, align 8
  %96 = call i32 @perf_evlist__add(i32* %94, %struct.perf_evsel* %95)
  %97 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %8, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = udiv i64 %100, 4
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  %103 = load %struct.perf_evsel*, %struct.perf_evsel** %14, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @perf_evsel__alloc_id(%struct.perf_evsel* %103, i32 1, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %86
  br label %211

108:                                              ; preds = %86
  %109 = load i32, i32* %5, align 4
  %110 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %8, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SEEK_SET, align 4
  %114 = call i32 @lseek(i32 %109, i32 %112, i32 %113)
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %133, %108
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i64 @perf_header__getbuffer64(%struct.perf_header* %120, i32 %121, i32* %9, i32 4)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %208

125:                                              ; preds = %119
  %126 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %127 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.perf_evsel*, %struct.perf_evsel** %14, align 8
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @perf_evlist__id_add(i32* %128, %struct.perf_evsel* %129, i32 0, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %115

136:                                              ; preds = %115
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* @SEEK_SET, align 4
  %140 = call i32 @lseek(i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %58

144:                                              ; preds = %58
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 4
  %146 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %7, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %183

150:                                              ; preds = %144
  %151 = load i32, i32* %5, align 4
  %152 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %7, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @SEEK_SET, align 4
  %156 = call i32 @lseek(i32 %151, i32 %154, i32 %155)
  %157 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %7, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32* @malloc(i32 %159)
  store i32* %160, i32** @trace_events, align 8
  %161 = load i32*, i32** @trace_events, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %150
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %220

166:                                              ; preds = %150
  %167 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32*, i32** @trace_events, align 8
  %170 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %7, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @perf_header__getbuffer64(%struct.perf_header* %167, i32 %168, i32* %169, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %208

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %7, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = udiv i64 %180, 4
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* @trace_event_count, align 4
  br label %183

183:                                              ; preds = %176, %144
  %184 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %187 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %186, i32 0, i32 1
  %188 = load i32, i32* @perf_file_section__process, align 4
  %189 = call i32 @perf_header__process_sections(%struct.perf_header* %184, i32 %185, i32* %187, i32 %188)
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %192 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @SEEK_SET, align 4
  %195 = call i32 @lseek(i32 %190, i32 %193, i32 %194)
  %196 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %197 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %200 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @perf_evlist__prepare_tracepoint_events(i32* %198, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %183
  br label %211

205:                                              ; preds = %183
  %206 = load %struct.perf_header*, %struct.perf_header** %6, align 8
  %207 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  store i32 0, i32* %3, align 4
  br label %220

208:                                              ; preds = %175, %124, %67
  %209 = load i32, i32* @errno, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %220

211:                                              ; preds = %204, %107, %85
  %212 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %213 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @perf_evlist__delete(i32* %214)
  %216 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %217 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %216, i32 0, i32 0
  store i32* null, i32** %217, align 8
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %211, %208, %205, %163, %42, %33, %25
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32* @perf_evlist__new(i32*, i32*) #1

declare dso_local i32 @perf_header__read_pipe(%struct.perf_session*, i32) #1

declare dso_local i64 @perf_file_header__read(%struct.perf_file_header*, %struct.perf_header*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @read_attr(i32, %struct.perf_header*, %struct.perf_file_attr*) #1

declare dso_local i32 @perf_event__attr_swap(i32*) #1

declare dso_local %struct.perf_evsel* @perf_evsel__new(i32*, i32) #1

declare dso_local i32 @perf_evlist__add(i32*, %struct.perf_evsel*) #1

declare dso_local i64 @perf_evsel__alloc_id(%struct.perf_evsel*, i32, i32) #1

declare dso_local i64 @perf_header__getbuffer64(%struct.perf_header*, i32, i32*, i32) #1

declare dso_local i32 @perf_evlist__id_add(i32*, %struct.perf_evsel*, i32, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @perf_header__process_sections(%struct.perf_header*, i32, i32*, i32) #1

declare dso_local i64 @perf_evlist__prepare_tracepoint_events(i32*, i32) #1

declare dso_local i32 @perf_evlist__delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
