; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_member_function_or_else.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_member_function_or_else.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTOR_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"destructor for alien class %qT cannot be a member\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"constructor for alien class %qT cannot be a member\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @member_function_or_else to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @member_function_or_else(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DTOR_FLAG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %24

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  store i32 0, i32* %4, align 4
  br label %26

25:                                               ; preds = %10, %3
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
