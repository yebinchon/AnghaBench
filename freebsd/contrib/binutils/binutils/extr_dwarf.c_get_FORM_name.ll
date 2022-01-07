; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_get_FORM_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_get_FORM_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"DW_FORM_addr\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"DW_FORM_block2\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DW_FORM_block4\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"DW_FORM_data2\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DW_FORM_data4\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"DW_FORM_data8\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"DW_FORM_string\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DW_FORM_block\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"DW_FORM_block1\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"DW_FORM_data1\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"DW_FORM_flag\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"DW_FORM_sdata\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"DW_FORM_strp\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"DW_FORM_udata\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"DW_FORM_ref_addr\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"DW_FORM_ref1\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"DW_FORM_ref2\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"DW_FORM_ref4\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"DW_FORM_ref8\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"DW_FORM_ref_udata\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"DW_FORM_indirect\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"DW_FORM_flag_present\00", align 1
@get_FORM_name.buffer = internal global [100 x i8] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [24 x i8] c"Unknown FORM value: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_FORM_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_FORM_name(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %27 [
    i64 149, label %5
    i64 146, label %6
    i64 145, label %7
    i64 143, label %8
    i64 142, label %9
    i64 141, label %10
    i64 130, label %11
    i64 148, label %12
    i64 147, label %13
    i64 144, label %14
    i64 140, label %15
    i64 131, label %16
    i64 129, label %17
    i64 128, label %18
    i64 133, label %19
    i64 137, label %20
    i64 136, label %21
    i64 135, label %22
    i64 134, label %23
    i64 132, label %24
    i64 138, label %25
    i64 139, label %26
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %31

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %31

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %31

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %31

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %31

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %31

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %31

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %31

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %31

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %31

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %31

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %31

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %31

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %31

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %31

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %31

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %31

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %31

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %31

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %31

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %31

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %31

27:                                               ; preds = %1
  %28 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @get_FORM_name.buffer, i64 0, i64 0), i32 100, i8* %28, i64 %29)
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @get_FORM_name.buffer, i64 0, i64 0), i8** %2, align 8
  br label %31

31:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
