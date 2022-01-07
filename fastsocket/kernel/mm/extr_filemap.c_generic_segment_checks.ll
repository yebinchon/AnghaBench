; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_segment_checks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_generic_segment_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_segment_checks(%struct.iovec* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.iovec*, align 8
  store %struct.iovec* %0, %struct.iovec** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %64, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %13
  %19 = load %struct.iovec*, %struct.iovec** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i64 %20
  store %struct.iovec* %21, %struct.iovec** %12, align 8
  %22 = load %struct.iovec*, %struct.iovec** %12, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.iovec*, %struct.iovec** %12, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %27, %30
  %32 = icmp slt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %70

39:                                               ; preds = %18
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.iovec*, %struct.iovec** %12, align 8
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.iovec*, %struct.iovec** %12, align 8
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @access_ok(i32 %40, i32 %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %64

50:                                               ; preds = %39
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %70

56:                                               ; preds = %50
  %57 = load i64, i64* %10, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  %59 = load %struct.iovec*, %struct.iovec** %12, align 8
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %11, align 8
  br label %67

64:                                               ; preds = %49
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %13

67:                                               ; preds = %56, %13
  %68 = load i64, i64* %11, align 8
  %69 = load i64*, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %53, %36
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @access_ok(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
