; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kobject.c_kobject_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_kobject.c_kobject_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"DEVPATH_OLD=%s\00", align 1
@KOBJ_MOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobject_rename(%struct.kobject* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8*], align 16
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.kobject*, %struct.kobject** %4, align 8
  %13 = call %struct.kobject* @kobject_get(%struct.kobject* %12)
  store %struct.kobject* %13, %struct.kobject** %4, align 8
  %14 = load %struct.kobject*, %struct.kobject** %4, align 8
  %15 = icmp ne %struct.kobject* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.kobject*, %struct.kobject** %4, align 8
  %21 = getelementptr inbounds %struct.kobject, %struct.kobject* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %90

27:                                               ; preds = %19
  %28 = load %struct.kobject*, %struct.kobject** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kobject_get_path(%struct.kobject* %28, i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %80

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 15
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i64 %39, i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %80

47:                                               ; preds = %36
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  store i8* %51, i8** %52, align 16
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 1
  store i8* null, i8** %53, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kstrdup(i8* %54, i32 %55)
  store i8* %56, i8** %8, align 8
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %80

62:                                               ; preds = %47
  %63 = load %struct.kobject*, %struct.kobject** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @sysfs_rename_dir(%struct.kobject* %63, i8* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %80

69:                                               ; preds = %62
  %70 = load %struct.kobject*, %struct.kobject** %4, align 8
  %71 = getelementptr inbounds %struct.kobject, %struct.kobject* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load %struct.kobject*, %struct.kobject** %4, align 8
  %75 = getelementptr inbounds %struct.kobject, %struct.kobject* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.kobject*, %struct.kobject** %4, align 8
  %77 = load i32, i32* @KOBJ_MOVE, align 4
  %78 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %79 = call i32 @kobject_uevent_env(%struct.kobject* %76, i32 %77, i8** %78)
  br label %80

80:                                               ; preds = %69, %68, %59, %44, %33
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @kfree(i8* %83)
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @kfree(i8* %85)
  %87 = load %struct.kobject*, %struct.kobject** %4, align 8
  %88 = call i32 @kobject_put(%struct.kobject* %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %80, %24, %16
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.kobject* @kobject_get(%struct.kobject*) #1

declare dso_local i8* @kobject_get_path(%struct.kobject*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @sysfs_rename_dir(%struct.kobject*, i8*) #1

declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
