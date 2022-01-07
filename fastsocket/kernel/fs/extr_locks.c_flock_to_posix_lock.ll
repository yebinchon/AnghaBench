; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_flock_to_posix_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_flock_to_posix_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.file = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.file_lock = type { i64, i64, i32*, i32*, i32, %struct.file*, i32, i32 }
%struct.flock = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@FL_POSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*, %struct.flock*)* @flock_to_posix_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flock_to_posix_lock(%struct.file* %0, %struct.file_lock* %1, %struct.flock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.flock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.file_lock* %1, %struct.file_lock** %6, align 8
  store %struct.flock* %2, %struct.flock** %7, align 8
  %10 = load %struct.flock*, %struct.flock** %7, align 8
  %11 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %26 [
    i32 128, label %13
    i32 130, label %14
    i32 129, label %18
  ]

13:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @i_size_read(i32 %24)
  store i64 %25, i64* %8, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %121

29:                                               ; preds = %18, %14, %13
  %30 = load %struct.flock*, %struct.flock** %7, align 8
  %31 = getelementptr inbounds %struct.flock, %struct.flock* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %121

40:                                               ; preds = %29
  %41 = load i64, i64* @OFFSET_MAX, align 8
  %42 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.flock*, %struct.flock** %7, align 8
  %45 = getelementptr inbounds %struct.flock, %struct.flock* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.flock*, %struct.flock** %7, align 8
  %51 = getelementptr inbounds %struct.flock, %struct.flock* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %81

58:                                               ; preds = %40
  %59 = load %struct.flock*, %struct.flock** %7, align 8
  %60 = getelementptr inbounds %struct.flock, %struct.flock* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %64, 1
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %68 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.flock*, %struct.flock** %7, align 8
  %70 = getelementptr inbounds %struct.flock, %struct.flock* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %121

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %48
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %84 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %86 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %89 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i32, i32* @EOVERFLOW, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %121

95:                                               ; preds = %81
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %100 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %105 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  %106 = load %struct.file*, %struct.file** %5, align 8
  %107 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %108 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %107, i32 0, i32 5
  store %struct.file* %106, %struct.file** %108, align 8
  %109 = load i32, i32* @FL_POSIX, align 4
  %110 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %111 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %113 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %112, i32 0, i32 3
  store i32* null, i32** %113, align 8
  %114 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %115 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %114, i32 0, i32 2
  store i32* null, i32** %115, align 8
  %116 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %117 = load %struct.flock*, %struct.flock** %7, align 8
  %118 = getelementptr inbounds %struct.flock, %struct.flock* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @assign_type(%struct.file_lock* %116, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %95, %92, %76, %37, %26
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @assign_type(%struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
