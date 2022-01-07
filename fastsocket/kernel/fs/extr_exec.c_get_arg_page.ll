; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_get_arg_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_get_arg_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.linux_binprm = type { %struct.page** }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @get_arg_page(%struct.linux_binprm* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %10 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %9, i32 0, i32 0
  %11 = load %struct.page**, %struct.page*** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = udiv i64 %12, %13
  %15 = getelementptr inbounds %struct.page*, %struct.page** %11, i64 %14
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %8, align 8
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, i32* @GFP_HIGHUSER, align 4
  %24 = load i32, i32* @__GFP_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.page* @alloc_page(i32 %25)
  store %struct.page* %26, %struct.page** %8, align 8
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store %struct.page* null, %struct.page** %4, align 8
  br label %41

30:                                               ; preds = %22
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %33 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %32, i32 0, i32 0
  %34 = load %struct.page**, %struct.page*** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = udiv i64 %35, %36
  %38 = getelementptr inbounds %struct.page*, %struct.page** %34, i64 %37
  store %struct.page* %31, %struct.page** %38, align 8
  br label %39

39:                                               ; preds = %30, %19, %3
  %40 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %40, %struct.page** %4, align 8
  br label %41

41:                                               ; preds = %39, %29
  %42 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %42
}

declare dso_local %struct.page* @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
