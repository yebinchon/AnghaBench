; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_Run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@toBeMade = common dso_local global i32 0, align 4
@MAKE = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"#***# full graph\0A\00", align 1
@queryFlag = common dso_local global i64 0, align 8
@jobTokensRunning = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"done: errors %d\0A\00", align 1
@MakePrintStatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Make_Run(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i32 @Lst_Init(i32 %5)
  store i32 %6, i32* @toBeMade, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @Make_ExpandUse(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @Make_ProcessWait(i32 %9)
  %11 = load i32, i32* @MAKE, align 4
  %12 = call i64 @DEBUG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @debug_file, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @Targ_PrintGraph(i32 1)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i64, i64* @queryFlag, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @MakeStartJobs()
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %18
  %24 = call i32 (...) @MakeStartJobs()
  br label %25

25:                                               ; preds = %34, %23
  %26 = load i32, i32* @toBeMade, align 4
  %27 = call i32 @Lst_IsEmpty(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @jobTokensRunning, align 8
  %31 = icmp sgt i64 %30, 0
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ true, %25 ], [ %31, %29 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = call i32 (...) @Job_CatchOutput()
  %36 = call i32 (...) @MakeStartJobs()
  br label %25

37:                                               ; preds = %32
  %38 = call i32 (...) @Job_Finish()
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @MAKE, align 4
  %40 = call i64 @DEBUG(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @debug_file, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MakePrintStatus, align 4
  %52 = call i32 @Lst_ForEach(i32 %50, i32 %51, i32* %4)
  %53 = load i32, i32* @MAKE, align 4
  %54 = call i64 @DEBUG(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i32, i32* @debug_file, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @Targ_PrintGraph(i32 4)
  br label %64

64:                                               ; preds = %62, %56
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %21
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @Lst_Init(i32) #1

declare dso_local i32 @Make_ExpandUse(i32) #1

declare dso_local i32 @Make_ProcessWait(i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @Targ_PrintGraph(i32) #1

declare dso_local i32 @MakeStartJobs(...) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i32 @Job_CatchOutput(...) #1

declare dso_local i32 @Job_Finish(...) #1

declare dso_local i32 @Lst_ForEach(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
