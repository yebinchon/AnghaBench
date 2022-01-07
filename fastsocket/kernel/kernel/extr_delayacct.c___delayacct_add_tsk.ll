; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_delayacct.c___delayacct_add_tsk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_delayacct.c___delayacct_add_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskstats = type { i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64 }
%struct.task_struct = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__delayacct_add_tsk(%struct.taskstats* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.taskstats*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.timespec, align 4
  store %struct.taskstats* %0, %struct.taskstats** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %228

16:                                               ; preds = %2
  %17 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %18 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @cputime_to_timespec(i64 %26, %struct.timespec* %10)
  %28 = call i64 @timespec_to_ns(%struct.timespec* %10)
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %33 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %39

37:                                               ; preds = %16
  %38 = load i64, i64* %5, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i64 [ 0, %36 ], [ %38, %37 ]
  %41 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %42 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %41, i32 0, i32 10
  store i64 %40, i64* %42, align 8
  %43 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %44 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  %46 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = call i32 @cputime_to_timespec(i64 %52, %struct.timespec* %10)
  %54 = call i64 @timespec_to_ns(%struct.timespec* %10)
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %59 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %39
  br label %65

63:                                               ; preds = %39
  %64 = load i64, i64* %5, align 8
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i64 [ 0, %62 ], [ %64, %63 ]
  %67 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %68 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %67, i32 0, i32 9
  store i64 %66, i64* %68, align 8
  %69 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %83 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %87 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %88, %89
  store i64 %90, i64* %5, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %93 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %65
  br label %99

97:                                               ; preds = %65
  %98 = load i64, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %96
  %100 = phi i64 [ 0, %96 ], [ %98, %97 ]
  %101 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %102 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %101, i32 0, i32 8
  store i64 %100, i64* %102, align 8
  %103 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %104 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %105, %106
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %110 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %116

114:                                              ; preds = %99
  %115 = load i64, i64* %5, align 8
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i64 [ 0, %113 ], [ %115, %114 ]
  %118 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %119 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %118, i32 0, i32 7
  store i64 %117, i64* %119, align 8
  %120 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %121 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %127 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %130 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %128, %133
  store i64 %134, i64* %5, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %137 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp slt i64 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %116
  br label %143

141:                                              ; preds = %116
  %142 = load i64, i64* %5, align 8
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i64 [ 0, %140 ], [ %142, %141 ]
  %145 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %146 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %148 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %151 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %149, %154
  store i64 %155, i64* %5, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %158 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %143
  br label %164

162:                                              ; preds = %143
  %163 = load i64, i64* %5, align 8
  br label %164

164:                                              ; preds = %162, %161
  %165 = phi i64 [ 0, %161 ], [ %163, %162 ]
  %166 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %167 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %169 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %172 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %171, i32 0, i32 0
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %170, %175
  store i64 %176, i64* %5, align 8
  %177 = load i64, i64* %5, align 8
  %178 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %179 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp slt i64 %177, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %164
  br label %185

183:                                              ; preds = %164
  %184 = load i64, i64* %5, align 8
  br label %185

185:                                              ; preds = %183, %182
  %186 = phi i64 [ 0, %182 ], [ %184, %183 ]
  %187 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %188 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %187, i32 0, i32 3
  store i64 %186, i64* %188, align 8
  %189 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %190 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %195 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 8
  %200 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %201 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %200, i32 0, i32 0
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %206 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %204
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 4
  %211 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %212 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %211, i32 0, i32 0
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %217 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %215
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %217, align 8
  %222 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %223 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %222, i32 0, i32 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 3
  %226 = load i64, i64* %9, align 8
  %227 = call i32 @spin_unlock_irqrestore(i32* %225, i64 %226)
  br label %228

228:                                              ; preds = %185, %15
  ret i32 0
}

declare dso_local i32 @cputime_to_timespec(i64, %struct.timespec*) #1

declare dso_local i64 @timespec_to_ns(%struct.timespec*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
