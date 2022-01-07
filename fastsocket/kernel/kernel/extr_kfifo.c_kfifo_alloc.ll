; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo.c_kfifo_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo.c_kfifo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfifo = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfifo* @kfifo_alloc(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.kfifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.kfifo*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @is_power_of_2(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp ugt i32 %14, -2147483648
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @roundup_pow_of_two(i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %13, %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.kfifo* @ERR_PTR(i32 %28)
  store %struct.kfifo* %29, %struct.kfifo** %4, align 8
  br label %44

30:                                               ; preds = %20
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call %struct.kfifo* @kfifo_init(i8* %31, i32 %32, i32 %33, i32* %34)
  store %struct.kfifo* %35, %struct.kfifo** %9, align 8
  %36 = load %struct.kfifo*, %struct.kfifo** %9, align 8
  %37 = call i64 @IS_ERR(%struct.kfifo* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @kfree(i8* %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.kfifo*, %struct.kfifo** %9, align 8
  store %struct.kfifo* %43, %struct.kfifo** %4, align 8
  br label %44

44:                                               ; preds = %42, %26
  %45 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  ret %struct.kfifo* %45
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.kfifo* @ERR_PTR(i32) #1

declare dso_local %struct.kfifo* @kfifo_init(i8*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.kfifo*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
