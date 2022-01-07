; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_process.c_freeze_processes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_process.c_freeze_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Freezing user space processes ... \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Freezing remaining freezable tasks ... \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeze_processes() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @try_to_freeze_tasks(i32 1)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %17

7:                                                ; preds = %0
  %8 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @try_to_freeze_tasks(i32 0)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %17

14:                                               ; preds = %7
  %15 = call i32 @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 (...) @oom_killer_disable()
  br label %17

17:                                               ; preds = %14, %13, %6
  %18 = call i32 (...) @in_atomic()
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @try_to_freeze_tasks(i32) #1

declare dso_local i32 @oom_killer_disable(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
