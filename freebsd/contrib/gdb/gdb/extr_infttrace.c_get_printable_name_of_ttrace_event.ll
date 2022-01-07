; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_get_printable_name_of_ttrace_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_get_printable_name_of_ttrace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"TTEVT_NONE\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"TTEVT_SIGNAL\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"TTEVT_FORK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"TTEVT_EXEC\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"TTEVT_EXIT\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"TTEVT_VFORK\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"TTEVT_SYSCALL_RETURN\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"TTEVT_LWP_CREATE\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"TTEVT_LWP_TERMINATE\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"TTEVT_LWP_EXIT\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"TTEVT_LWP_ABORT_SYSCALL\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"TTEVT_SYSCALL_ENTRY\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"TTEVT_SYSCALL_RESTART\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"?new event?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_printable_name_of_ttrace_event(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %18 [
    i32 133, label %5
    i32 132, label %6
    i32 138, label %7
    i32 140, label %8
    i32 139, label %9
    i32 128, label %10
    i32 129, label %11
    i32 136, label %12
    i32 134, label %13
    i32 135, label %14
    i32 137, label %15
    i32 131, label %16
    i32 130, label %17
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %19

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %19

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %19

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %19

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %19

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %19

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %19

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %19

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %19

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %19

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %19

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %19

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
