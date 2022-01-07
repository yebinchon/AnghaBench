; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_k_getrusage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_k_getrusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rusage = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mm_struct = type { i32 }

@cputime_zero = common dso_local global i32 0, align 4
@RUSAGE_THREAD = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.rusage*)* @k_getrusage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_getrusage(%struct.task_struct* %0, i32 %1, %struct.rusage* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rusage*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rusage* %2, %struct.rusage** %6, align 8
  store i64 0, i64* %13, align 8
  %15 = load %struct.rusage*, %struct.rusage** %6, align 8
  %16 = bitcast %struct.rusage* %15 to i8*
  %17 = call i32 @memset(i8* %16, i32 0, i32 40)
  %18 = load i32, i32* @cputime_zero, align 4
  store i32 %18, i32* %12, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RUSAGE_THREAD, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32, i32* @current, align 4
  %24 = call i32 @task_times(i32 %23, i32* %11, i32* %12)
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = load %struct.rusage*, %struct.rusage** %6, align 8
  %27 = call i32 @accumulate_thread_rusage(%struct.task_struct* %25, %struct.rusage* %26)
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  br label %196

33:                                               ; preds = %3
  %34 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %35 = call i32 @lock_task_sighand(%struct.task_struct* %34, i64* %8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %226

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %191 [
    i32 130, label %40
    i32 129, label %40
    i32 128, label %102
  ]

40:                                               ; preds = %38, %38
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %12, align 4
  %51 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rusage*, %struct.rusage** %6, align 8
  %57 = getelementptr inbounds %struct.rusage, %struct.rusage* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rusage*, %struct.rusage** %6, align 8
  %64 = getelementptr inbounds %struct.rusage, %struct.rusage* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rusage*, %struct.rusage** %6, align 8
  %71 = getelementptr inbounds %struct.rusage, %struct.rusage* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rusage*, %struct.rusage** %6, align 8
  %78 = getelementptr inbounds %struct.rusage, %struct.rusage* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rusage*, %struct.rusage** %6, align 8
  %85 = getelementptr inbounds %struct.rusage, %struct.rusage* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.rusage*, %struct.rusage** %6, align 8
  %92 = getelementptr inbounds %struct.rusage, %struct.rusage* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %94 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %13, align 8
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %100, label %101

100:                                              ; preds = %40
  br label %193

101:                                              ; preds = %40
  br label %102

102:                                              ; preds = %38, %101
  %103 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %104 = call i32 @thread_group_times(%struct.task_struct* %103, i32* %9, i32* %10)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @cputime_add(i32 %105, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @cputime_add(i32 %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %112 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rusage*, %struct.rusage** %6, align 8
  %117 = getelementptr inbounds %struct.rusage, %struct.rusage* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %121 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.rusage*, %struct.rusage** %6, align 8
  %126 = getelementptr inbounds %struct.rusage, %struct.rusage* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %130 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.rusage*, %struct.rusage** %6, align 8
  %135 = getelementptr inbounds %struct.rusage, %struct.rusage* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %139 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.rusage*, %struct.rusage** %6, align 8
  %144 = getelementptr inbounds %struct.rusage, %struct.rusage* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %148 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.rusage*, %struct.rusage** %6, align 8
  %153 = getelementptr inbounds %struct.rusage, %struct.rusage* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %157 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.rusage*, %struct.rusage** %6, align 8
  %162 = getelementptr inbounds %struct.rusage, %struct.rusage* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %167 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ult i64 %165, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %102
  %173 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %174 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %173, i32 0, i32 0
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %13, align 8
  br label %178

178:                                              ; preds = %172, %102
  %179 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %179, %struct.task_struct** %7, align 8
  br label %180

180:                                              ; preds = %186, %178
  %181 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %182 = load %struct.rusage*, %struct.rusage** %6, align 8
  %183 = call i32 @accumulate_thread_rusage(%struct.task_struct* %181, %struct.rusage* %182)
  %184 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %185 = call %struct.task_struct* @next_thread(%struct.task_struct* %184)
  store %struct.task_struct* %185, %struct.task_struct** %7, align 8
  br label %186

186:                                              ; preds = %180
  %187 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %188 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %189 = icmp ne %struct.task_struct* %187, %188
  br i1 %189, label %180, label %190

190:                                              ; preds = %186
  br label %193

191:                                              ; preds = %38
  %192 = call i32 (...) @BUG()
  br label %193

193:                                              ; preds = %191, %190, %100
  %194 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %195 = call i32 @unlock_task_sighand(%struct.task_struct* %194, i64* %8)
  br label %196

196:                                              ; preds = %193, %22
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.rusage*, %struct.rusage** %6, align 8
  %199 = getelementptr inbounds %struct.rusage, %struct.rusage* %198, i32 0, i32 2
  %200 = call i32 @cputime_to_timeval(i32 %197, i32* %199)
  %201 = load i32, i32* %12, align 4
  %202 = load %struct.rusage*, %struct.rusage** %6, align 8
  %203 = getelementptr inbounds %struct.rusage, %struct.rusage* %202, i32 0, i32 1
  %204 = call i32 @cputime_to_timeval(i32 %201, i32* %203)
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 129
  br i1 %206, label %207, label %218

207:                                              ; preds = %196
  %208 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %209 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %208)
  store %struct.mm_struct* %209, %struct.mm_struct** %14, align 8
  %210 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %211 = icmp ne %struct.mm_struct* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %214 = call i32 @setmax_mm_hiwater_rss(i64* %13, %struct.mm_struct* %213)
  %215 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %216 = call i32 @mmput(%struct.mm_struct* %215)
  br label %217

217:                                              ; preds = %212, %207
  br label %218

218:                                              ; preds = %217, %196
  %219 = load i64, i64* %13, align 8
  %220 = load i32, i32* @PAGE_SIZE, align 4
  %221 = sdiv i32 %220, 1024
  %222 = sext i32 %221 to i64
  %223 = mul i64 %219, %222
  %224 = load %struct.rusage*, %struct.rusage** %6, align 8
  %225 = getelementptr inbounds %struct.rusage, %struct.rusage* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %218, %37
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @task_times(i32, i32*, i32*) #1

declare dso_local i32 @accumulate_thread_rusage(%struct.task_struct*, %struct.rusage*) #1

declare dso_local i32 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @thread_group_times(%struct.task_struct*, i32*, i32*) #1

declare dso_local i32 @cputime_add(i32, i32) #1

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @cputime_to_timeval(i32, i32*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @setmax_mm_hiwater_rss(i64*, %struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
