; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_comp_data_refs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_comp_data_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_data_ref = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BTRFS_EXTENT_DATA_REF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref*)* @comp_data_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_data_refs(%struct.btrfs_delayed_data_ref* %0, %struct.btrfs_delayed_data_ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_delayed_data_ref*, align 8
  %5 = alloca %struct.btrfs_delayed_data_ref*, align 8
  store %struct.btrfs_delayed_data_ref* %0, %struct.btrfs_delayed_data_ref** %4, align 8
  store %struct.btrfs_delayed_data_ref* %1, %struct.btrfs_delayed_data_ref** %5, align 8
  %6 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %7 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BTRFS_EXTENT_DATA_REF_KEY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %67

12:                                               ; preds = %2
  %13 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %87

21:                                               ; preds = %12
  %22 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %87

30:                                               ; preds = %21
  %31 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %87

39:                                               ; preds = %30
  %40 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %87

48:                                               ; preds = %39
  %49 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %50 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %4, align 8
  %53 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %87

57:                                               ; preds = %48
  %58 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %59 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %4, align 8
  %62 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %87

66:                                               ; preds = %57
  br label %86

67:                                               ; preds = %2
  %68 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %69 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %4, align 8
  %72 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %87

76:                                               ; preds = %67
  %77 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %5, align 8
  %78 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %4, align 8
  %81 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %87

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %66
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %84, %75, %65, %56, %47, %38, %29, %20
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
