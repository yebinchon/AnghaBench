; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_status.c_selinux_status_update_policyload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_status.c_selinux_status_update_policyload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_kernel_status = type { i32, i32, i32 }

@selinux_status_lock = common dso_local global i32 0, align 4
@selinux_status_page = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selinux_status_update_policyload(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.selinux_kernel_status*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @selinux_status_lock)
  %5 = load i64, i64* @selinux_status_page, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load i64, i64* @selinux_status_page, align 8
  %9 = call %struct.selinux_kernel_status* @page_address(i64 %8)
  store %struct.selinux_kernel_status* %9, %struct.selinux_kernel_status** %3, align 8
  %10 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %11 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = call i32 (...) @smp_wmb()
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %17 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = call i32 (...) @security_get_allow_unknown()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %23 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = call i32 (...) @smp_wmb()
  %25 = load %struct.selinux_kernel_status*, %struct.selinux_kernel_status** %3, align 8
  %26 = getelementptr inbounds %struct.selinux_kernel_status, %struct.selinux_kernel_status* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %7, %1
  %30 = call i32 @mutex_unlock(i32* @selinux_status_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.selinux_kernel_status* @page_address(i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @security_get_allow_unknown(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
