; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_member_init_ok_or_else.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_member_init_ok_or_else.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"class %qT does not have any field named %qD\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"%q#D is a static data member; it can only be initialized at its definition\00", align 1
@FIELD_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"%q#D is not a non-static data member of %qT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @member_init_ok_or_else to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @member_init_ok_or_else(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @error_mark_node, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  store i32 0, i32* %4, align 4
  br label %46

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @VAR_DECL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store i32 0, i32* %4, align 4
  br label %46

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @FIELD_DECL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %33, i64 %34)
  store i32 0, i32* %4, align 4
  br label %46

36:                                               ; preds = %27
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @initializing_context(i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43)
  store i32 0, i32* %4, align 4
  br label %46

45:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %41, %32, %24, %15, %11
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @error(i8*, i64, ...) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @initializing_context(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
