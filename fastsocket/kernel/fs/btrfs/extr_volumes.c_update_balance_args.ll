; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_update_balance_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_update_balance_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_balance_control = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BTRFS_BALANCE_ARGS_CONVERT = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_SOFT = common dso_local global i32 0, align 4
@BTRFS_BALANCE_ARGS_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_balance_control*)* @update_balance_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_balance_args(%struct.btrfs_balance_control* %0) #0 {
  %2 = alloca %struct.btrfs_balance_control*, align 8
  store %struct.btrfs_balance_control* %0, %struct.btrfs_balance_control** %2, align 8
  %3 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @BTRFS_BALANCE_ARGS_SOFT, align 4
  %12 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %13 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %19 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32, i32* @BTRFS_BALANCE_ARGS_SOFT, align 4
  %27 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %25, %17
  %33 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %34 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32, i32* @BTRFS_BALANCE_ARGS_SOFT, align 4
  %42 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %43 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %32
  %48 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %49 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BTRFS_BALANCE_ARGS_USAGE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %47
  %56 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %57 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @BTRFS_BALANCE_ARGS_USAGE, align 4
  %65 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %66 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %71 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 90, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %55, %47
  %74 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %75 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BTRFS_BALANCE_ARGS_USAGE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %73
  %82 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %83 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @BTRFS_BALANCE_ARGS_USAGE, align 4
  %91 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %92 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %97 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 90, i32* %98, align 4
  br label %99

99:                                               ; preds = %89, %81, %73
  %100 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %101 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @BTRFS_BALANCE_ARGS_USAGE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %99
  %108 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %109 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BTRFS_BALANCE_ARGS_CONVERT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* @BTRFS_BALANCE_ARGS_USAGE, align 4
  %117 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %118 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load %struct.btrfs_balance_control*, %struct.btrfs_balance_control** %2, align 8
  %123 = getelementptr inbounds %struct.btrfs_balance_control, %struct.btrfs_balance_control* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i32 90, i32* %124, align 4
  br label %125

125:                                              ; preds = %115, %107, %99
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
