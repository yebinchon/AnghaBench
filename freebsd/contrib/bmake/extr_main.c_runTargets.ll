; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_runTargets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_runTargets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@create = common dso_local global i32 0, align 4
@TARG_CREATE = common dso_local global i32 0, align 4
@compatMake = common dso_local global i32 0, align 4
@queryFlag = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@jobsRunning = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @runTargets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runTargets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @create, align 4
  %4 = call i64 @Lst_IsEmpty(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @Parse_MainName()
  store i32 %7, i32* %1, align 4
  br label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @create, align 4
  %10 = load i32, i32* @TARG_CREATE, align 4
  %11 = call i32 @Targ_FindList(i32 %9, i32 %10)
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %8, %6
  %13 = load i32, i32* @compatMake, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @queryFlag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i32 (...) @Job_Init()
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* @jobsRunning, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @Make_Run(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %12
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @Compat_Run(i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @Lst_Destroy(i32 %29, i32* null)
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @Lst_IsEmpty(i32) #1

declare dso_local i32 @Parse_MainName(...) #1

declare dso_local i32 @Targ_FindList(i32, i32) #1

declare dso_local i32 @Job_Init(...) #1

declare dso_local i32 @Make_Run(i32) #1

declare dso_local i32 @Compat_Run(i32) #1

declare dso_local i32 @Lst_Destroy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
