; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_draw_wakeups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_draw_wakeups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wake_event = type { i32, i32, i64, %struct.wake_event* }
%struct.per_pid = type { i32, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i64, i64, %struct.per_pidcomm*, i32 }

@wake_events = common dso_local global %struct.wake_event* null, align 8
@all_data = common dso_local global %struct.per_pid* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"[%i]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_wakeups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_wakeups() #0 {
  %1 = alloca %struct.wake_event*, align 8
  %2 = alloca %struct.per_pid*, align 8
  %3 = alloca %struct.per_pidcomm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = load %struct.wake_event*, %struct.wake_event** @wake_events, align 8
  store %struct.wake_event* %8, %struct.wake_event** %1, align 8
  br label %9

9:                                                ; preds = %218, %0
  %10 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %11 = icmp ne %struct.wake_event* %10, null
  br i1 %11, label %12, label %226

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  store %struct.per_pid* %13, %struct.per_pid** %2, align 8
  br label %14

14:                                               ; preds = %154, %12
  %15 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %16 = icmp ne %struct.per_pid* %15, null
  br i1 %16, label %17, label %158

17:                                               ; preds = %14
  %18 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %19 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %22 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %27 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %30 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %154

33:                                               ; preds = %25, %17
  %34 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %35 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %34, i32 0, i32 2
  %36 = load %struct.per_pidcomm*, %struct.per_pidcomm** %35, align 8
  store %struct.per_pidcomm* %36, %struct.per_pidcomm** %3, align 8
  br label %37

37:                                               ; preds = %100, %33
  %38 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %39 = icmp ne %struct.per_pidcomm* %38, null
  br i1 %39, label %40, label %104

40:                                               ; preds = %37
  %41 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %42 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %100

45:                                               ; preds = %40
  %46 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %47 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %50 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %48, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %45
  %54 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %55 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %58 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %53
  %62 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %63 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %66 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %74 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %4, align 4
  %76 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %77 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @strdup(i32 %78)
  store i8* %79, i8** %6, align 8
  br label %80

80:                                               ; preds = %72, %69, %61
  %81 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %82 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %85 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %93 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %5, align 4
  %95 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %96 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @strdup(i32 %97)
  store i8* %98, i8** %7, align 8
  br label %99

99:                                               ; preds = %91, %88, %80
  br label %100

100:                                              ; preds = %99, %53, %45, %40
  %101 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %102 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %101, i32 0, i32 3
  %103 = load %struct.per_pidcomm*, %struct.per_pidcomm** %102, align 8
  store %struct.per_pidcomm* %103, %struct.per_pidcomm** %3, align 8
  br label %37

104:                                              ; preds = %37
  %105 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %106 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %105, i32 0, i32 2
  %107 = load %struct.per_pidcomm*, %struct.per_pidcomm** %106, align 8
  store %struct.per_pidcomm* %107, %struct.per_pidcomm** %3, align 8
  br label %108

108:                                              ; preds = %149, %104
  %109 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %110 = icmp ne %struct.per_pidcomm* %109, null
  br i1 %110, label %111, label %153

111:                                              ; preds = %108
  %112 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %113 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %116 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %124 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %4, align 4
  %126 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %127 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @strdup(i32 %128)
  store i8* %129, i8** %6, align 8
  br label %130

130:                                              ; preds = %122, %119, %111
  %131 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %132 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %135 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %133, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %143 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %5, align 4
  %145 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %146 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @strdup(i32 %147)
  store i8* %148, i8** %7, align 8
  br label %149

149:                                              ; preds = %141, %138, %130
  %150 = load %struct.per_pidcomm*, %struct.per_pidcomm** %3, align 8
  %151 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %150, i32 0, i32 3
  %152 = load %struct.per_pidcomm*, %struct.per_pidcomm** %151, align 8
  store %struct.per_pidcomm* %152, %struct.per_pidcomm** %3, align 8
  br label %108

153:                                              ; preds = %108
  br label %154

154:                                              ; preds = %153, %25
  %155 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  %156 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %155, i32 0, i32 1
  %157 = load %struct.per_pid*, %struct.per_pid** %156, align 8
  store %struct.per_pid* %157, %struct.per_pid** %2, align 8
  br label %14

158:                                              ; preds = %14
  %159 = load i8*, i8** %6, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = call i8* @malloc(i32 40)
  store i8* %162, i8** %6, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %165 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @sprintf(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %161, %158
  %169 = load i8*, i8** %7, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %168
  %172 = call i8* @malloc(i32 40)
  store i8* %172, i8** %7, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %175 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @sprintf(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %171, %168
  %179 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %180 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %185 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @svg_interrupt(i64 %186, i32 %187)
  br label %218

189:                                              ; preds = %178
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %189
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %192
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* %5, align 4
  %198 = sub nsw i32 %196, %197
  %199 = call i32 @abs(i32 %198) #3
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %203 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @svg_wakeline(i64 %204, i32 %205, i32 %206)
  br label %217

208:                                              ; preds = %195, %192, %189
  %209 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %210 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %4, align 4
  %213 = load i8*, i8** %6, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i8*, i8** %7, align 8
  %216 = call i32 @svg_partial_wakeline(i64 %211, i32 %212, i8* %213, i32 %214, i8* %215)
  br label %217

217:                                              ; preds = %208, %201
  br label %218

218:                                              ; preds = %217, %183
  %219 = load %struct.wake_event*, %struct.wake_event** %1, align 8
  %220 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %219, i32 0, i32 3
  %221 = load %struct.wake_event*, %struct.wake_event** %220, align 8
  store %struct.wake_event* %221, %struct.wake_event** %1, align 8
  %222 = load i8*, i8** %6, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load i8*, i8** %7, align 8
  %225 = call i32 @free(i8* %224)
  br label %9

226:                                              ; preds = %9
  ret void
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @svg_interrupt(i64, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @svg_wakeline(i64, i32, i32) #1

declare dso_local i32 @svg_partial_wakeline(i64, i32, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
