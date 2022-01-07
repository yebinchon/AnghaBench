; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_enable_warning_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_enable_warning_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32, i32, i32, %struct.check** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, i32, i32)* @enable_warning_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_warning_error(%struct.check* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.check* %0, %struct.check** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.check*, %struct.check** %4, align 8
  %12 = getelementptr inbounds %struct.check, %struct.check* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10, %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.check*, %struct.check** %4, align 8
  %20 = getelementptr inbounds %struct.check, %struct.check* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %18, %10
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.check*, %struct.check** %4, align 8
  %27 = getelementptr inbounds %struct.check, %struct.check* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.check*, %struct.check** %4, align 8
  %32 = getelementptr inbounds %struct.check, %struct.check* %31, i32 0, i32 3
  %33 = load %struct.check**, %struct.check*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.check*, %struct.check** %33, i64 %35
  %37 = load %struct.check*, %struct.check** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  call void @enable_warning_error(%struct.check* %37, i32 %38, i32 %39)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %24

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %18, %15
  %45 = load %struct.check*, %struct.check** %4, align 8
  %46 = getelementptr inbounds %struct.check, %struct.check* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i1 [ true, %44 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = load %struct.check*, %struct.check** %4, align 8
  %56 = getelementptr inbounds %struct.check, %struct.check* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.check*, %struct.check** %4, align 8
  %58 = getelementptr inbounds %struct.check, %struct.check* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %52
  %65 = phi i1 [ true, %52 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = load %struct.check*, %struct.check** %4, align 8
  %68 = getelementptr inbounds %struct.check, %struct.check* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
