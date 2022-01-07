; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_overflow_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_overflow_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_wrapv = common dso_local global i32 0, align 4
@flag_trapv = common dso_local global i32 0, align 4
@fold_deferring_overflow_warnings = common dso_local global i64 0, align 8
@fold_deferred_overflow_warning = common dso_local global i8* null, align 8
@fold_deferred_overflow_code = common dso_local global i32 0, align 4
@OPT_Wstrict_overflow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fold_overflow_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fold_overflow_warning(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @flag_wrapv, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @flag_trapv, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i64, i64* @fold_deferring_overflow_warnings, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load i8*, i8** @fold_deferred_overflow_warning, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @fold_deferred_overflow_code, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %17
  %25 = load i8*, i8** %3, align 8
  store i8* %25, i8** @fold_deferred_overflow_warning, align 8
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* @fold_deferred_overflow_code, align 4
  br label %27

27:                                               ; preds = %24, %20
  br label %37

28:                                               ; preds = %11
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @issue_strict_overflow_warning(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @OPT_Wstrict_overflow, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @warning(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %27
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @issue_strict_overflow_warning(i32) #1

declare dso_local i32 @warning(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
