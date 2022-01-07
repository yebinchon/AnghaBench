; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_cn_print_exe_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_cn_print_exe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.core_name = type { i32 }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_TEMPORARY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.core_name*)* @cn_print_exe_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn_print_exe_file(%struct.core_name* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.core_name*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.core_name* %0, %struct.core_name** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.file* @get_mm_exe_file(i32 %11)
  store %struct.file* %12, %struct.file** %4, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = icmp ne %struct.file* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.core_name*, %struct.core_name** %3, align 8
  %17 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = load i32, i32* @GFP_TEMPORARY, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %63

27:                                               ; preds = %18
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = call i8* @d_path(i32* %29, i8* %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %8, align 4
  br label %60

39:                                               ; preds = %27
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %53, %39
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  store i8 33, i8* %51, align 1
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.core_name*, %struct.core_name** %3, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %36
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @kfree(i8* %61)
  br label %63

63:                                               ; preds = %60, %24
  %64 = load %struct.file*, %struct.file** %4, align 8
  %65 = call i32 @fput(%struct.file* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.file* @get_mm_exe_file(i32) #1

declare dso_local i32 @cn_printf(%struct.core_name*, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @d_path(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
