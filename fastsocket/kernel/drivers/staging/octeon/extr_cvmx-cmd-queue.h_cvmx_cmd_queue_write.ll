; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @cvmx_cmd_queue_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_cmd_queue_write(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = call i32 @__cvmx_cmd_queue_lock(i32 %21, %struct.TYPE_5__* %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i64, i64* @CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cvmx_cmd_queue_length(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* @CVMX_CMD_QUEUE_FULL, align 4
  store i32 %51, i32* %5, align 4
  br label %181

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %27, %24
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %53
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 7
  %71 = call i64 @cvmx_phys_to_ptr(i32 %70)
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %11, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %11, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %88, %66
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %9, align 8
  %91 = load i32, i32* %89, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  br label %84

94:                                               ; preds = %84
  br label %172

95:                                               ; preds = %53
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @cvmx_fpa_alloc(i32 %98)
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %14, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = icmp eq i32* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = load i32, i32* %7, align 4
  %108 = call i64 @likely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %112 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i32, i32* @CVMX_CMD_QUEUE_NO_MEMORY, align 4
  store i32 %114, i32* %5, align 4
  br label %181

115:                                              ; preds = %95
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 7
  %120 = call i64 @cvmx_phys_to_ptr(i32 %119)
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %12, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %124, %127
  store i32 %128, i32* %13, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %12, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %8, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %142, %115
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %13, align 4
  %141 = icmp ne i32 %139, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %9, align 8
  %145 = load i32, i32* %143, align 4
  %146 = load i32*, i32** %12, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %12, align 8
  store i32 %145, i32* %146, align 4
  br label %138

148:                                              ; preds = %138
  %149 = load i32*, i32** %14, align 8
  %150 = call i32 @cvmx_ptr_to_phys(i32* %149)
  %151 = load i32*, i32** %12, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 7
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32*, i32** %14, align 8
  store i32* %160, i32** %12, align 8
  br label %161

161:                                              ; preds = %165, %148
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %8, align 4
  %164 = icmp ne i32 %162, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %9, align 8
  %168 = load i32, i32* %166, align 4
  %169 = load i32*, i32** %12, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %12, align 8
  store i32 %168, i32* %169, align 4
  br label %161

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %94
  %173 = load i32, i32* %7, align 4
  %174 = call i64 @likely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %178 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %177)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %179, %113, %50
  %182 = load i32, i32* %5, align 4
  ret i32 %182
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
