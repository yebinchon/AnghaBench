; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_skip_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_skip_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"_call_via_\00", align 1
@arm_skip_stub.table = internal global [15 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"r0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r3\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"r4\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"r5\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"r6\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"r7\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"lr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_skip_stub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @find_pc_partial_function(i32 %7, i8** %4, i32* %5, i32* null)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 14
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 10
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [15 x i8*], [15 x i8*]* @arm_skip_stub.table, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %21, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @read_register(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %16

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %11
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %28, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @find_pc_partial_function(i32, i8**, i32*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
