; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_get_printable_name_of_ttrace_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_get_printable_name_of_ttrace_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"?bad req?\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"TT_PROC_SETTRC\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"TT_PROC_ATTACH\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"TT_PROC_DETACH\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"TT_PROC_RDTEXT\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"TT_PROC_WRTEXT\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"TT_PROC_RDDATA\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"TT_PROC_WRDATA\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"TT_PROC_STOP\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"TT_PROC_CONTINUE\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"TT_PROC_GET_PATHNAME\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"TT_PROC_GET_EVENT_MASK\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"TT_PROC_SET_EVENT_MASK\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"TT_PROC_GET_FIRST_LWP_STATE\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"TT_PROC_GET_NEXT_LWP_STATE\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"TT_PROC_EXIT\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"TT_PROC_GET_MPROTECT\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"TT_PROC_SET_MPROTECT\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"TT_PROC_SET_SCBM\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"TT_LWP_STOP\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"TT_LWP_CONTINUE\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"TT_LWP_SINGLE\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"TT_LWP_RUREGS\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"TT_LWP_WUREGS\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"TT_LWP_GET_EVENT_MASK\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"TT_LWP_SET_EVENT_MASK\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"TT_LWP_GET_STATE\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"?new req?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_printable_name_of_ttrace_request(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @IS_TTRACE_REQ(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %37

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %36 [
    i32 134, label %10
    i32 145, label %11
    i32 143, label %12
    i32 135, label %13
    i32 128, label %14
    i32 136, label %15
    i32 129, label %16
    i32 130, label %17
    i32 144, label %18
    i32 137, label %19
    i32 141, label %20
    i32 133, label %21
    i32 140, label %22
    i32 138, label %23
    i32 142, label %24
    i32 139, label %25
    i32 132, label %26
    i32 131, label %27
    i32 147, label %28
    i32 153, label %29
    i32 148, label %30
    i32 150, label %31
    i32 146, label %32
    i32 152, label %33
    i32 149, label %34
    i32 151, label %35
  ]

10:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %37

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %37

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %37

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %37

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %37

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %37

16:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %37

17:                                               ; preds = %8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %37

18:                                               ; preds = %8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %37

19:                                               ; preds = %8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %37

20:                                               ; preds = %8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %37

21:                                               ; preds = %8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %37

22:                                               ; preds = %8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %37

23:                                               ; preds = %8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %37

24:                                               ; preds = %8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %37

25:                                               ; preds = %8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %37

26:                                               ; preds = %8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %37

27:                                               ; preds = %8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %37

28:                                               ; preds = %8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %37

29:                                               ; preds = %8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %37

30:                                               ; preds = %8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %37

31:                                               ; preds = %8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %37

32:                                               ; preds = %8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %37

33:                                               ; preds = %8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %37

34:                                               ; preds = %8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %37

35:                                               ; preds = %8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %37

36:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %37

37:                                               ; preds = %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %7
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

declare dso_local i32 @IS_TTRACE_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
