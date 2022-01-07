; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_case_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_case_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@case_mode = common dso_local global i64 0, align 8
@case_mode_auto = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"auto; currently \00", align 1
@case_sensitivity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unrecognized case-sensitive setting.\00", align 1
@case_sensitive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_case_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_case_str() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i64, i64* @case_mode, align 8
  %4 = load i64, i64* @case_mode_auto, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @case_sensitivity, align 4
  switch i32 %8, label %11 [
    i32 128, label %9
    i32 129, label %10
  ]

9:                                                ; preds = %7
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %13

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %13

11:                                               ; preds = %7
  %12 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %10, %9
  %14 = load i32, i32* @case_sensitive, align 4
  %15 = call i32 @xfree(i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @concat(i8* %16, i8* %17, i32* null)
  store i32 %18, i32* @case_sensitive, align 4
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @xfree(i32) #1

declare dso_local i32 @concat(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
