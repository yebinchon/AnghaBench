; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i64, i32, i8*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kfifo_init(%struct.__kfifo* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.__kfifo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.__kfifo* %0, %struct.__kfifo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = zext i32 %11 to i64
  %13 = udiv i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @is_power_of_2(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @rounddown_pow_of_two(i32 %19)
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %23 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %25 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %28 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %31 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %36 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %44

39:                                               ; preds = %21
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %40, 1
  %42 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %43 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
