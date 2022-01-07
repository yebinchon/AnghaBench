; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cvmx_cmd_queue_write2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_cmd_queue_write2(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
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
  br label %172

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %27, %24
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %53
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 7
  %70 = call i64 @cvmx_phys_to_ptr(i32 %69)
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %11, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %11, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  br label %163

88:                                               ; preds = %53
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  store i32 %95, i32* %13, align 4
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

106:                                              ; preds = %88
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
  br label %172

115:                                              ; preds = %88
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %13, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 7
  %122 = call i64 @cvmx_phys_to_ptr(i32 %121)
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %12, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %12, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32*, i32** %12, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %12, align 8
  store i32 %130, i32* %131, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i64 @likely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %115
  %137 = load i32, i32* %9, align 4
  %138 = load i32*, i32** %12, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %12, align 8
  store i32 %137, i32* %138, align 4
  br label %140

140:                                              ; preds = %136, %115
  %141 = load i32*, i32** %14, align 8
  %142 = call i32 @cvmx_ptr_to_phys(i32* %141)
  %143 = load i32*, i32** %12, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32*, i32** %12, align 8
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 7
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %140
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %156, %140
  br label %163

163:                                              ; preds = %162, %65
  %164 = load i32, i32* %7, align 4
  %165 = call i64 @likely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %169 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %168)
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %113, %50
  %173 = load i32, i32* %5, align 4
  ret i32 %173
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
