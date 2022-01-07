; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-s390.c_tc_s390_regname_to_dw2regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-s390.c_tc_s390_regname_to_dw2regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pre_defined_registers = common dso_local global i32 0, align 4
@REG_NAME_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"cc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_s390_regname_to_dw2regnum(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 99
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 97
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load i32, i32* @pre_defined_registers, align 4
  %17 = load i32, i32* @REG_NAME_CNT, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @reg_name_search(i32 %16, i32 %17, i8* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 102
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 16
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %25, %15
  br label %44

32:                                               ; preds = %9, %1
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 32, i32* %3, align 4
  br label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %2, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 33, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @reg_name_search(i32, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
