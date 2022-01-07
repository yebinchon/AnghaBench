; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c_register_chrdev_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c_register_chrdev_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.char_device_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_chrdev_region(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.char_device_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %45, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @MAJOR(i32 %21)
  %23 = add nsw i64 %22, 1
  %24 = call i32 @MKDEV(i64 %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @MAJOR(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @MINOR(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub i32 %35, %36
  %38 = load i8*, i8** %7, align 8
  %39 = call %struct.char_device_struct* @__register_chrdev_region(i64 %32, i32 %34, i32 %37, i8* %38)
  store %struct.char_device_struct* %39, %struct.char_device_struct** %8, align 8
  %40 = load %struct.char_device_struct*, %struct.char_device_struct** %8, align 8
  %41 = call i64 @IS_ERR(%struct.char_device_struct* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %48

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %10, align 4
  br label %16

47:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %74

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %69, %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @MAJOR(i32 %56)
  %58 = add nsw i64 %57, 1
  %59 = call i32 @MKDEV(i64 %58, i32 0)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @MAJOR(i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @MINOR(i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub i32 %64, %65
  %67 = call i32 @__unregister_chrdev_region(i64 %61, i32 %63, i32 %66)
  %68 = call i32 @kfree(i32 %67)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %10, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load %struct.char_device_struct*, %struct.char_device_struct** %8, align 8
  %73 = call i32 @PTR_ERR(%struct.char_device_struct* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %47
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @MKDEV(i64, i32) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local %struct.char_device_struct* @__register_chrdev_region(i64, i32, i32, i8*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @IS_ERR(%struct.char_device_struct*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @__unregister_chrdev_region(i64, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.char_device_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
