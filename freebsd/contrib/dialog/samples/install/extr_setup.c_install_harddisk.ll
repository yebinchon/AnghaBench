; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_install_harddisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_install_harddisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@partitions = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"mount -t ext2 %s /source %s\00", align 1
@null = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Path in partition\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Please enter the directory in which the source files are.\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@dialog_input_result = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"umount /source %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_harddisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_harddisk() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @select_source_partition()
  store i32 %4, i32* %2, align 4
  %5 = icmp sle i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %36

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = load i32, i32* @null, align 4
  %16 = call i64 (i8*, i8*, ...) @my_system(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %36

19:                                               ; preds = %7
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @dialog_inputbox(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 13, i32 50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = call i32 (...) @dialog_clear()
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %36

26:                                               ; preds = %19
  %27 = load i32, i32* @dialog_input_result, align 4
  %28 = call i32 @strdup(i32 %27)
  %29 = call i32 @extract_packages(i32 %28)
  %30 = load i32, i32* @null, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i64 (i8*, i8*, ...) @my_system(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %6, %18, %25, %35, %26
  ret void
}

declare dso_local i32 @select_source_partition(...) #1

declare dso_local i64 @my_system(i8*, i8*, ...) #1

declare dso_local i32 @dialog_inputbox(i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i32 @extract_packages(i32) #1

declare dso_local i32 @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
