; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_si_swapinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_si_swapinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i64 }
%struct.sysinfo = type { i64, i64 }

@swap_lock = common dso_local global i32 0, align 4
@nr_swapfiles = common dso_local global i32 0, align 4
@swap_info = common dso_local global %struct.swap_info_struct** null, align 8
@SWP_USED = common dso_local global i32 0, align 4
@SWP_WRITEOK = common dso_local global i32 0, align 4
@nr_swap_pages = common dso_local global i64 0, align 8
@total_swap_pages = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_swapinfo(%struct.sysinfo* %0) #0 {
  %2 = alloca %struct.sysinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.swap_info_struct*, align 8
  store %struct.sysinfo* %0, %struct.sysinfo** %2, align 8
  store i64 0, i64* %4, align 8
  %6 = call i32 @spin_lock(i32* @swap_lock)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @nr_swapfiles, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = load %struct.swap_info_struct**, %struct.swap_info_struct*** @swap_info, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.swap_info_struct*, %struct.swap_info_struct** %12, i64 %14
  %16 = load %struct.swap_info_struct*, %struct.swap_info_struct** %15, align 8
  store %struct.swap_info_struct* %16, %struct.swap_info_struct** %5, align 8
  %17 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %18 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SWP_USED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %11
  %24 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %25 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SWP_WRITEOK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %32 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %30, %23, %11
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load i64, i64* @nr_swap_pages, align 8
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %45 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @total_swap_pages, align 8
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %46, %47
  %49 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %50 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = call i32 @spin_unlock(i32* @swap_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
