; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/stdio/extr_hist.c_init_rem_hits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/stdio/extr_hist.c_init_rem_hits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@rem_sq_bracket = common dso_local global %struct.TYPE_6__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Not enough memory to display remaining hits\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[...]\00", align 1
@rem_hits = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_rem_hits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rem_hits() #0 {
  %1 = call %struct.TYPE_6__* @malloc(i32 10)
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** @rem_sq_bracket, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rem_sq_bracket, align 8
  %3 = icmp ne %struct.TYPE_6__* %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %13

7:                                                ; preds = %0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rem_sq_bracket, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strcpy(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rem_sq_bracket, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rem_hits, i32 0, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %7, %4
  ret void
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
