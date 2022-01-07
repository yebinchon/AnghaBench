; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_hibernate.c_disk_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_hibernate.c_disk_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@HIBERNATION_INVALID = common dso_local global i32 0, align 4
@pm_mutex = common dso_local global i32 0, align 4
@HIBERNATION_FIRST = common dso_local global i32 0, align 4
@HIBERNATION_MAX = common dso_local global i32 0, align 4
@hibernation_modes = common dso_local global i32* null, align 8
@hibernation_mode = common dso_local global i32 0, align 4
@hibernation_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"PM: Hibernation mode set to '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @disk_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @HIBERNATION_INVALID, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @memchr(i8* %15, i8 signext 10, i64 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i8*, i8** %12, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  br label %28

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i64 [ %25, %20 ], [ %27, %26 ]
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = call i32 @mutex_lock(i32* @pm_mutex)
  %32 = load i32, i32* @HIBERNATION_FIRST, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %59, %28
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @HIBERNATION_MAX, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** @hibernation_modes, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = icmp eq i32 %38, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  %48 = load i32*, i32** @hibernation_modes, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @strncmp(i8* %47, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %13, align 4
  br label %62

58:                                               ; preds = %46, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %33

62:                                               ; preds = %56, %33
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @HIBERNATION_INVALID, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  switch i32 %67, label %79 [
    i32 130, label %68
    i32 131, label %68
    i32 129, label %68
    i32 128, label %68
    i32 132, label %70
  ]

68:                                               ; preds = %66, %66, %66, %66
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* @hibernation_mode, align 4
  br label %79

70:                                               ; preds = %66
  %71 = load i32, i32* @hibernation_ops, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* @hibernation_mode, align 4
  br label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %73
  br label %79

79:                                               ; preds = %78, %66, %68
  br label %83

80:                                               ; preds = %62
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** @hibernation_modes, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %86, %83
  %94 = call i32 @mutex_unlock(i32* @pm_mutex)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  br label %102

100:                                              ; preds = %93
  %101 = load i64, i64* %8, align 8
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i64 [ %99, %97 ], [ %101, %100 ]
  %104 = trunc i64 %103 to i32
  ret i32 %104
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
