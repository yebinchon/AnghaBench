; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_params.c_param_array_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_params.c_param_array_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32, i32, %struct.kparam_array* }
%struct.kparam_array = type { i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @param_array_set(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca %struct.kparam_array*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  %7 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %8 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %7, i32 0, i32 2
  %9 = load %struct.kparam_array*, %struct.kparam_array** %8, align 8
  store %struct.kparam_array* %9, %struct.kparam_array** %5, align 8
  %10 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %11 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %15 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %18 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %21 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %24 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %27 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %30 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = inttoptr i64 %31 to i32*
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32* [ %34, %33 ], [ %6, %35 ]
  %38 = call i32 @param_array(i32 %12, i8* %13, i32 1, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32* %37)
  ret i32 %38
}

declare dso_local i32 @param_array(i32, i8*, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
