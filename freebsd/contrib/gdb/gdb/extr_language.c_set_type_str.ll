; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_type_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_language.c_set_type_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@type = common dso_local global i64 0, align 8
@type_mode = common dso_local global i64 0, align 8
@type_mode_auto = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"auto; currently \00", align 1
@type_check = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Unrecognized type check setting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_type_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_type_str() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i64, i64* @type, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @type, align 8
  %7 = call i32 @xfree(i64 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @type_mode, align 8
  %10 = load i64, i64* @type_mode_auto, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i32, i32* @type_check, align 4
  switch i32 %14, label %18 [
    i32 129, label %15
    i32 130, label %16
    i32 128, label %17
  ]

15:                                               ; preds = %13
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %20

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %20

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %20

18:                                               ; preds = %13
  %19 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %17, %16, %15
  %21 = load i8*, i8** %2, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = call i64 @concat(i8* %21, i8* %22, i32* null)
  store i64 %23, i64* @type, align 8
  ret void
}

declare dso_local i32 @xfree(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @concat(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
