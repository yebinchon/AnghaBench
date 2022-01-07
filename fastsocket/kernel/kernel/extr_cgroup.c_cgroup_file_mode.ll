; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_file_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_file_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cftype = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@S_IRUGO = common dso_local global i64 0, align 8
@S_IWUSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cftype*)* @cgroup_file_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cgroup_file_mode(%struct.cftype* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cftype*, align 8
  %4 = alloca i64, align 8
  store %struct.cftype* %0, %struct.cftype** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.cftype*, %struct.cftype** %3, align 8
  %6 = getelementptr inbounds %struct.cftype, %struct.cftype* %5, i32 0, i32 10
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.cftype*, %struct.cftype** %3, align 8
  %11 = getelementptr inbounds %struct.cftype, %struct.cftype* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %2, align 8
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.cftype*, %struct.cftype** %3, align 8
  %15 = getelementptr inbounds %struct.cftype, %struct.cftype* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  %19 = load %struct.cftype*, %struct.cftype** %3, align 8
  %20 = getelementptr inbounds %struct.cftype, %struct.cftype* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load %struct.cftype*, %struct.cftype** %3, align 8
  %25 = getelementptr inbounds %struct.cftype, %struct.cftype* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.cftype*, %struct.cftype** %3, align 8
  %30 = getelementptr inbounds %struct.cftype, %struct.cftype* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.cftype*, %struct.cftype** %3, align 8
  %35 = getelementptr inbounds %struct.cftype, %struct.cftype* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %28, %23, %18, %13
  %39 = load i64, i64* @S_IRUGO, align 8
  %40 = load i64, i64* %4, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.cftype*, %struct.cftype** %3, align 8
  %44 = getelementptr inbounds %struct.cftype, %struct.cftype* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %42
  %48 = load %struct.cftype*, %struct.cftype** %3, align 8
  %49 = getelementptr inbounds %struct.cftype, %struct.cftype* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = load %struct.cftype*, %struct.cftype** %3, align 8
  %54 = getelementptr inbounds %struct.cftype, %struct.cftype* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.cftype*, %struct.cftype** %3, align 8
  %59 = getelementptr inbounds %struct.cftype, %struct.cftype* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.cftype*, %struct.cftype** %3, align 8
  %64 = getelementptr inbounds %struct.cftype, %struct.cftype* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %57, %52, %47, %42
  %68 = load i64, i64* @S_IWUSR, align 8
  %69 = load i64, i64* %4, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i64, i64* %4, align 8
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %71, %9
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
