; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_trace.c_Trace_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_trace.c_Trace_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trpid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".CURDIR\00", align 1
@VAR_GLOBAL = common dso_local global i32 0, align 4
@trwd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@trfile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Trace_Init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = call i32 (...) @getpid()
  store i32 %7, i32* @trpid, align 4
  %8 = load i32, i32* @VAR_GLOBAL, align 4
  %9 = call i32 @Var_Value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8, i8** %3)
  store i32 %9, i32* @trwd, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* @trfile, align 4
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @Var_Value(i8*, i32, i8**) #1

declare dso_local i32 @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
