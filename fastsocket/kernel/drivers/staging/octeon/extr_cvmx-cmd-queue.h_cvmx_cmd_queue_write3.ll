; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @cvmx_cmd_queue_write3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_cmd_queue_write3(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %25 = call i32 @__cvmx_cmd_queue_lock(i32 %23, %struct.TYPE_5__* %24)
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i64, i64* @CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @cvmx_cmd_queue_length(i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* @CVMX_CMD_QUEUE_FULL, align 4
  store i32 %53, i32* %6, align 4
  br label %193

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %29, %26
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %55
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 7
  %72 = call i64 @cvmx_phys_to_ptr(i32 %71)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %13, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %76
  store i32* %78, i32** %13, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 3
  store i64 %82, i64* %80, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 %89, i32* %91, align 4
  br label %184

92:                                               ; preds = %55
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %15, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @cvmx_fpa_alloc(i32 %103)
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %16, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = icmp eq i32* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %92
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %117 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %116)
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* @CVMX_CMD_QUEUE_NO_MEMORY, align 4
  store i32 %119, i32* %6, align 4
  br label %193

120:                                              ; preds = %92
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %15, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = shl i32 %125, 7
  %127 = call i64 @cvmx_phys_to_ptr(i32 %126)
  %128 = inttoptr i64 %127 to i32*
  store i32* %128, i32** %14, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 %131
  store i32* %133, i32** %14, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32*, i32** %14, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %14, align 8
  store i32 %134, i32* %135, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %120
  %140 = load i32, i32* %10, align 4
  %141 = load i32*, i32** %14, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %14, align 8
  store i32 %140, i32* %141, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  %147 = load i32*, i32** %14, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %14, align 8
  store i32 %146, i32* %147, align 4
  br label %149

149:                                              ; preds = %145, %139
  br label %150

150:                                              ; preds = %149, %120
  %151 = load i32*, i32** %16, align 8
  %152 = call i32 @cvmx_ptr_to_phys(i32* %151)
  %153 = load i32*, i32** %14, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32*, i32** %14, align 8
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 7
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load i32*, i32** %16, align 8
  store i32* %161, i32** %14, align 8
  %162 = load i32, i32* %15, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %150
  %165 = load i32, i32* %10, align 4
  %166 = load i32*, i32** %14, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %14, align 8
  store i32 %165, i32* %166, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %164, %150
  %173 = load i32, i32* %15, align 4
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i32, i32* %11, align 4
  %177 = load i32*, i32** %14, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %14, align 8
  store i32 %176, i32* %177, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %180, align 8
  br label %183

183:                                              ; preds = %175, %172
  br label %184

184:                                              ; preds = %183, %67
  %185 = load i32, i32* %8, align 4
  %186 = call i64 @likely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %190 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %189)
  br label %191

191:                                              ; preds = %188, %184
  %192 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %191, %118, %52
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__cvmx_cmd_queue_lock(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cvmx_cmd_queue_length(i32) #1

declare dso_local i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__*) #1

declare dso_local i64 @cvmx_phys_to_ptr(i32) #1

declare dso_local i64 @cvmx_fpa_alloc(i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
