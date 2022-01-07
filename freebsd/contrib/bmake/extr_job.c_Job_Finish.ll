; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_Finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_Finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@postCommands = common dso_local global %struct.TYPE_3__* null, align 8
@errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Errors reported so .END ignored\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Job_Finish() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @postCommands, align 8
  %2 = icmp ne %struct.TYPE_3__* %1, null
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @postCommands, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @Lst_IsEmpty(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @postCommands, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @Lst_IsEmpty(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9, %3
  %16 = load i32, i32* @errors, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %23

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @postCommands, align 8
  %22 = call i32 @JobRun(%struct.TYPE_3__* %21)
  br label %23

23:                                               ; preds = %20, %18
  br label %24

24:                                               ; preds = %23, %9, %0
  %25 = load i32, i32* @errors, align 4
  ret i32 %25
}

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @JobRun(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
