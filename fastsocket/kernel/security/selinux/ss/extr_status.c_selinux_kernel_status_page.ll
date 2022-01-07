; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_status.c_selinux_kernel_status_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_status.c_selinux_kernel_status_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.selinux_kernel_status = type { i32, i64, i32, i64, i32 }

@selinux_status_lock = common dso_local global i32 0, align 4
@selinux_status_page = common dso_local global %struct.page* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@SELINUX_KERNEL_STATUS_VERSION = common dso_local global i32 0, align 4
@selinux_enforcing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @selinux_kernel_status_page() #0 {
  %1 = alloca %struct.selinux_kernel_status*, align 8
  %2 = alloca %struct.page*, align 8
  store %struct.page* null, %struct.page** %2, align 8
  %3 = call i32 @mutex_lock(i32* @selinux_status_lock)
  %4 = load %struct.page*, %struct.page** @selinux_status_page, align 8
  %5 = icmp ne %struct.page* %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.page* @alloc_page(i32 %9)
  store %struct.page* %10, %struct.page** @selinux_status_page, align 8
  %11 = load %struct.page*, %struct.page** @selinux_status_page, align 8
  %12 = icmp ne %struct.page* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %6
  %14 = load %struct.page*, %struct.page** @selinux_status_page, align 8
  %15 = call %struct.selinux_kernel_status* @page_address(%struct.page* %14)
  store %struct.selinux_kernel_status* %15, %struct.selinux_kernel_status** %1, align 8
  %16 = load i32, i32* @SELINUX_KERNEL_STATUS_VERSION, align 4
  %17 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %1, align 8
  %18 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %1, align 8
  %20 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @selinux_enforcing, align 4
  %22 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %1, align 8
  %23 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %1, align 8
  %25 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = call i32 (...) @security_get_allow_unknown()
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %1, align 8
  %31 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %13, %6
  br label %33

33:                                               ; preds = %32, %0
  %34 = load %struct.page*, %struct.page** @selinux_status_page, align 8
  store %struct.page* %34, %struct.page** %2, align 8
  %35 = call i32 @mutex_unlock(i32* @selinux_status_lock)
  %36 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.selinux_kernel_status* @page_address(%struct.page*) #1

declare dso_local i32 @security_get_allow_unknown(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
