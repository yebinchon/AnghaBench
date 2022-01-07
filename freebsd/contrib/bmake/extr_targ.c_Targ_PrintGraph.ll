; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_targ.c_Targ_PrintGraph.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_targ.c_Targ_PrintGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"#*** Input graph:\0A\00", align 1
@allTargets = common dso_local global i32 0, align 4
@Targ_PrintNode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"#\0A#   Files that are only sources:\0A\00", align 1
@TargPrintOnlySrc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"#*** Global Variables:\0A\00", align 1
@VAR_GLOBAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"#*** Command-line Variables:\0A\00", align 1
@VAR_CMD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Targ_PrintGraph(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @debug_file, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @allTargets, align 4
  %6 = load i32, i32* @Targ_PrintNode, align 4
  %7 = call i32 @Lst_ForEach(i32 %5, i32 %6, i32* %2)
  %8 = load i32, i32* @debug_file, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @debug_file, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @allTargets, align 4
  %13 = load i32, i32* @TargPrintOnlySrc, align 4
  %14 = call i32 @Lst_ForEach(i32 %12, i32 %13, i32* null)
  %15 = load i32, i32* @debug_file, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @VAR_GLOBAL, align 4
  %18 = call i32 @Var_Dump(i32 %17)
  %19 = load i32, i32* @debug_file, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32, i32* @VAR_CMD, align 4
  %22 = call i32 @Var_Dump(i32 %21)
  %23 = load i32, i32* @debug_file, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 (...) @Dir_PrintDirectories()
  %26 = load i32, i32* @debug_file, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %28 = call i32 (...) @Suff_PrintAll()
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @Lst_ForEach(i32, i32, i32*) #1

declare dso_local i32 @Var_Dump(i32) #1

declare dso_local i32 @Dir_PrintDirectories(...) #1

declare dso_local i32 @Suff_PrintAll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
