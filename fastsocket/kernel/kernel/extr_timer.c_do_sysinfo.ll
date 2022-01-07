; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_do_sysinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_do_sysinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.timespec = type { i64, i64 }

@SI_LOAD_SHIFT = common dso_local global i64 0, align 8
@FSHIFT = common dso_local global i64 0, align 8
@nr_threads = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_sysinfo(%struct.sysinfo* %0) #0 {
  %2 = alloca %struct.sysinfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 8
  store %struct.sysinfo* %0, %struct.sysinfo** %2, align 8
  %8 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %9 = call i32 @memset(%struct.sysinfo* %8, i32 0, i32 64)
  %10 = call i32 @ktime_get_ts(%struct.timespec* %7)
  %11 = call i32 @monotonic_to_bootbased(%struct.timespec* %7)
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %13, %19
  %21 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %22 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %21, i32 0, i32 11
  store i64 %20, i64* %22, align 8
  %23 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %24 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @SI_LOAD_SHIFT, align 8
  %27 = load i64, i64* @FSHIFT, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call i32 @get_avenrun(i32 %25, i32 0, i64 %28)
  %30 = load i32, i32* @nr_threads, align 4
  %31 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %32 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %34 = call i32 @si_meminfo(%struct.sysinfo* %33)
  %35 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %36 = call i32 @si_swapinfo(%struct.sysinfo* %35)
  %37 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %38 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %41 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %46 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %1
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %52 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %1
  br label %121

56:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  %57 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %58 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %75, %56
  %61 = load i32, i32* %5, align 4
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = lshr i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i64, i64* %3, align 8
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %3, align 8
  %70 = shl i64 %69, 1
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %121

75:                                               ; preds = %63
  br label %60

76:                                               ; preds = %60
  %77 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %78 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %81 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = zext i32 %79 to i64
  %84 = shl i64 %82, %83
  store i64 %84, i64* %81, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %87 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %92 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %97 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %102 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = zext i32 %100 to i64
  %105 = shl i64 %103, %104
  store i64 %105, i64* %102, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %108 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %113 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %118 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %76, %74, %55
  ret i32 0
}

declare dso_local i32 @memset(%struct.sysinfo*, i32, i32) #1

declare dso_local i32 @ktime_get_ts(%struct.timespec*) #1

declare dso_local i32 @monotonic_to_bootbased(%struct.timespec*) #1

declare dso_local i32 @get_avenrun(i32, i32, i64) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @si_swapinfo(%struct.sysinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
