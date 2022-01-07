; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_insert_callee.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_insert_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_info = type { %struct.call_info* }
%struct.call_info = type { i64, i64, %struct.call_info* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.function_info*, %struct.call_info*)* @insert_callee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_callee(%struct.function_info* %0, %struct.call_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.function_info*, align 8
  %5 = alloca %struct.call_info*, align 8
  %6 = alloca %struct.call_info*, align 8
  store %struct.function_info* %0, %struct.function_info** %4, align 8
  store %struct.call_info* %1, %struct.call_info** %5, align 8
  %7 = load %struct.function_info*, %struct.function_info** %4, align 8
  %8 = getelementptr inbounds %struct.function_info, %struct.function_info* %7, i32 0, i32 0
  %9 = load %struct.call_info*, %struct.call_info** %8, align 8
  store %struct.call_info* %9, %struct.call_info** %6, align 8
  br label %10

10:                                               ; preds = %38, %2
  %11 = load %struct.call_info*, %struct.call_info** %6, align 8
  %12 = icmp ne %struct.call_info* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load %struct.call_info*, %struct.call_info** %6, align 8
  %15 = getelementptr inbounds %struct.call_info, %struct.call_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.call_info*, %struct.call_info** %5, align 8
  %18 = getelementptr inbounds %struct.call_info, %struct.call_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = load %struct.call_info*, %struct.call_info** %6, align 8
  %23 = getelementptr inbounds %struct.call_info, %struct.call_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.call_info*, %struct.call_info** %5, align 8
  %26 = getelementptr inbounds %struct.call_info, %struct.call_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.call_info*, %struct.call_info** %5, align 8
  %31 = getelementptr inbounds %struct.call_info, %struct.call_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.call_info*, %struct.call_info** %6, align 8
  %34 = getelementptr inbounds %struct.call_info, %struct.call_info* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %21
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.call_info*, %struct.call_info** %6, align 8
  %40 = getelementptr inbounds %struct.call_info, %struct.call_info* %39, i32 0, i32 2
  %41 = load %struct.call_info*, %struct.call_info** %40, align 8
  store %struct.call_info* %41, %struct.call_info** %6, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.function_info*, %struct.function_info** %4, align 8
  %44 = getelementptr inbounds %struct.function_info, %struct.function_info* %43, i32 0, i32 0
  %45 = load %struct.call_info*, %struct.call_info** %44, align 8
  %46 = load %struct.call_info*, %struct.call_info** %5, align 8
  %47 = getelementptr inbounds %struct.call_info, %struct.call_info* %46, i32 0, i32 2
  store %struct.call_info* %45, %struct.call_info** %47, align 8
  %48 = load %struct.call_info*, %struct.call_info** %5, align 8
  %49 = load %struct.function_info*, %struct.function_info** %4, align 8
  %50 = getelementptr inbounds %struct.function_info, %struct.function_info* %49, i32 0, i32 0
  store %struct.call_info* %48, %struct.call_info** %50, align 8
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
