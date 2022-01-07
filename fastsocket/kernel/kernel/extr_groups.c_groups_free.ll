; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_groups.c_groups_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_groups.c_groups_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_info = type { i64*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @groups_free(%struct.group_info* %0) #0 {
  %2 = alloca %struct.group_info*, align 8
  %3 = alloca i32, align 4
  store %struct.group_info* %0, %struct.group_info** %2, align 8
  %4 = load %struct.group_info*, %struct.group_info** %2, align 8
  %5 = getelementptr inbounds %struct.group_info, %struct.group_info* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.group_info*, %struct.group_info** %2, align 8
  %10 = getelementptr inbounds %struct.group_info, %struct.group_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.group_info*, %struct.group_info** %2, align 8
  %17 = getelementptr inbounds %struct.group_info, %struct.group_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.group_info*, %struct.group_info** %2, align 8
  %22 = getelementptr inbounds %struct.group_info, %struct.group_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @free_page(i64 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %14

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.group_info*, %struct.group_info** %2, align 8
  %35 = call i32 @kfree(%struct.group_info* %34)
  ret void
}

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.group_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
