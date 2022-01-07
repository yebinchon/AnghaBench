; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_res_counter.c_res_counter_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_res_counter.c_res_counter_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_counter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_counter_write(%struct.res_counter* %0, i32 %1, i8* %2, i64 (i8*, i64*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.res_counter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i64*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.res_counter* %0, %struct.res_counter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 (i8*, i64*)* %3, i64 (i8*, i64*)** %9, align 8
  %14 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %9, align 8
  %15 = icmp ne i64 (i8*, i64*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 %17(i8* %18, i64* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %16
  br label %36

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @simple_strtoull(i8* %26, i8** %10, i32 10)
  store i64 %27, i64* %12, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %50

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.res_counter*, %struct.res_counter** %6, align 8
  %38 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %37, i32 0, i32 0
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.res_counter*, %struct.res_counter** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64* @res_counter_member(%struct.res_counter* %41, i32 %42)
  store i64* %43, i64** %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64*, i64** %13, align 8
  store i64 %44, i64* %45, align 8
  %46 = load %struct.res_counter*, %struct.res_counter** %6, align 8
  %47 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %36, %32, %21
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64* @res_counter_member(%struct.res_counter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
