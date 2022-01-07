; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_groups.c_groups_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_groups.c_groups_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @groups_search(%struct.group_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.group_info* %0, %struct.group_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.group_info*, %struct.group_info** %4, align 8
  %10 = icmp ne %struct.group_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %13 = load %struct.group_info*, %struct.group_info** %4, align 8
  %14 = getelementptr inbounds %struct.group_info, %struct.group_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %43, %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %21, %22
  %24 = udiv i32 %23, 2
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.group_info*, %struct.group_info** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @GROUP_AT(%struct.group_info* %26, i32 %27)
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %43

33:                                               ; preds = %20
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.group_info*, %struct.group_info** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @GROUP_AT(%struct.group_info* %35, i32 %36)
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %45

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %30
  br label %16

44:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @GROUP_AT(%struct.group_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
