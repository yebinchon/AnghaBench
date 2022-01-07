; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_start_log_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_start_log_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i64, i32, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @start_log_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_log_trans(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  br label %40

28:                                               ; preds = %15
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %28
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %45, i32 0, i32 3
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %49 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %3, align 4
  br label %115

51:                                               ; preds = %2
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %53 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %58 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 5
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %65 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %64, i32 0, i32 5
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %51
  %71 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %72 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %73 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @btrfs_init_log_root_tree(%struct.btrfs_trans_handle* %71, %struct.TYPE_4__* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %70
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %86 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %84
  %90 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %92 = call i32 @btrfs_add_log_tree(%struct.btrfs_trans_handle* %90, %struct.btrfs_root* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %89
  br label %98

98:                                               ; preds = %97, %84, %81
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %100 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %99, i32 0, i32 5
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %105 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %109 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %108, i32 0, i32 3
  %110 = call i32 @atomic_inc(i32* %109)
  %111 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %112 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %111, i32 0, i32 2
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %98, %40
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_init_log_root_tree(%struct.btrfs_trans_handle*, %struct.TYPE_4__*) #1

declare dso_local i32 @btrfs_add_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
