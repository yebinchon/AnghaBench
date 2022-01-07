; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c___register_chrdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c___register_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.char_device_struct = type { i32, %struct.cdev* }
%struct.cdev = type { i32, %struct.file_operations*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__register_chrdev(i32 %0, i32 %1, i32 %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca %struct.char_device_struct*, align 8
  %13 = alloca %struct.cdev*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.file_operations* %4, %struct.file_operations** %11, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.char_device_struct* @__register_chrdev_region(i32 %17, i32 %18, i32 %19, i8* %20)
  store %struct.char_device_struct* %21, %struct.char_device_struct** %12, align 8
  %22 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %23 = call i64 @IS_ERR(%struct.char_device_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %27 = call i32 @PTR_ERR(%struct.char_device_struct* %26)
  store i32 %27, i32* %6, align 4
  br label %83

28:                                               ; preds = %5
  %29 = call %struct.cdev* (...) @cdev_alloc()
  store %struct.cdev* %29, %struct.cdev** %13, align 8
  %30 = load %struct.cdev*, %struct.cdev** %13, align 8
  %31 = icmp ne %struct.cdev* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %74

33:                                               ; preds = %28
  %34 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %35 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cdev*, %struct.cdev** %13, align 8
  %38 = getelementptr inbounds %struct.cdev, %struct.cdev* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %40 = load %struct.cdev*, %struct.cdev** %13, align 8
  %41 = getelementptr inbounds %struct.cdev, %struct.cdev* %40, i32 0, i32 1
  store %struct.file_operations* %39, %struct.file_operations** %41, align 8
  %42 = load %struct.cdev*, %struct.cdev** %13, align 8
  %43 = getelementptr inbounds %struct.cdev, %struct.cdev* %42, i32 0, i32 0
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @kobject_set_name(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load %struct.cdev*, %struct.cdev** %13, align 8
  %47 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %48 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @MKDEV(i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @cdev_add(%struct.cdev* %46, i32 %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %33
  br label %70

57:                                               ; preds = %33
  %58 = load %struct.cdev*, %struct.cdev** %13, align 8
  %59 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %60 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %59, i32 0, i32 1
  store %struct.cdev* %58, %struct.cdev** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57
  %65 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %66 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = phi i32 [ 0, %63 ], [ %67, %64 ]
  store i32 %69, i32* %6, align 4
  br label %83

70:                                               ; preds = %56
  %71 = load %struct.cdev*, %struct.cdev** %13, align 8
  %72 = getelementptr inbounds %struct.cdev, %struct.cdev* %71, i32 0, i32 0
  %73 = call i32 @kobject_put(i32* %72)
  br label %74

74:                                               ; preds = %70, %32
  %75 = load %struct.char_device_struct*, %struct.char_device_struct** %12, align 8
  %76 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @__unregister_chrdev_region(i32 %77, i32 %78, i32 %79)
  %81 = call i32 @kfree(i32 %80)
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %74, %68, %25
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.char_device_struct* @__register_chrdev_region(i32, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.char_device_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.char_device_struct*) #1

declare dso_local %struct.cdev* @cdev_alloc(...) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i8*) #1

declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @__unregister_chrdev_region(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
