; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo.c_kfifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo.c_kfifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfifo = type { i8*, i32, i32*, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfifo* @kfifo_init(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.kfifo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kfifo*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @is_power_of_2(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.kfifo* @kmalloc(i32 40, i32 %17)
  store %struct.kfifo* %18, %struct.kfifo** %10, align 8
  %19 = load %struct.kfifo*, %struct.kfifo** %10, align 8
  %20 = icmp ne %struct.kfifo* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.kfifo* @ERR_PTR(i32 %23)
  store %struct.kfifo* %24, %struct.kfifo** %5, align 8
  br label %40

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.kfifo*, %struct.kfifo** %10, align 8
  %28 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.kfifo*, %struct.kfifo** %10, align 8
  %31 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.kfifo*, %struct.kfifo** %10, align 8
  %33 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.kfifo*, %struct.kfifo** %10, align 8
  %35 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.kfifo*, %struct.kfifo** %10, align 8
  %38 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.kfifo*, %struct.kfifo** %10, align 8
  store %struct.kfifo* %39, %struct.kfifo** %5, align 8
  br label %40

40:                                               ; preds = %25, %21
  %41 = load %struct.kfifo*, %struct.kfifo** %5, align 8
  ret %struct.kfifo* %41
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local %struct.kfifo* @kmalloc(i32, i32) #1

declare dso_local %struct.kfifo* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
