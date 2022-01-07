; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_ref_for_same_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_ref_for_same_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__prelim_ref = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__prelim_ref*, %struct.__prelim_ref*)* @ref_for_same_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ref_for_same_block(%struct.__prelim_ref* %0, %struct.__prelim_ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__prelim_ref*, align 8
  %5 = alloca %struct.__prelim_ref*, align 8
  store %struct.__prelim_ref* %0, %struct.__prelim_ref** %4, align 8
  store %struct.__prelim_ref* %1, %struct.__prelim_ref** %5, align 8
  %6 = load %struct.__prelim_ref*, %struct.__prelim_ref** %4, align 8
  %7 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.__prelim_ref*, %struct.__prelim_ref** %5, align 8
  %10 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.__prelim_ref*, %struct.__prelim_ref** %4, align 8
  %16 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.__prelim_ref*, %struct.__prelim_ref** %5, align 8
  %19 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %66

23:                                               ; preds = %14
  %24 = load %struct.__prelim_ref*, %struct.__prelim_ref** %4, align 8
  %25 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.__prelim_ref*, %struct.__prelim_ref** %5, align 8
  %29 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %66

34:                                               ; preds = %23
  %35 = load %struct.__prelim_ref*, %struct.__prelim_ref** %4, align 8
  %36 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.__prelim_ref*, %struct.__prelim_ref** %5, align 8
  %40 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %66

45:                                               ; preds = %34
  %46 = load %struct.__prelim_ref*, %struct.__prelim_ref** %4, align 8
  %47 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.__prelim_ref*, %struct.__prelim_ref** %5, align 8
  %51 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %66

56:                                               ; preds = %45
  %57 = load %struct.__prelim_ref*, %struct.__prelim_ref** %4, align 8
  %58 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.__prelim_ref*, %struct.__prelim_ref** %5, align 8
  %61 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %55, %44, %33, %22, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
