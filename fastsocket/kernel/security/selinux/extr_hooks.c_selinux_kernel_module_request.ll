; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_kernel_module_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_kernel_module_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_audit_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@current = common dso_local global i32 0, align 4
@KMOD = common dso_local global i32 0, align 4
@SECINITSID_KERNEL = common dso_local global i32 0, align 4
@SECCLASS_SYSTEM = common dso_local global i32 0, align 4
@SYSTEM__MODULE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @selinux_kernel_module_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_kernel_module_request(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.common_audit_data, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @task_sid(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @KMOD, align 4
  %8 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %4, i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SECINITSID_KERNEL, align 4
  %14 = load i32, i32* @SECCLASS_SYSTEM, align 4
  %15 = load i32, i32* @SYSTEM__MODULE_REQUEST, align 4
  %16 = call i32 @avc_has_perm(i32 %12, i32 %13, i32 %14, i32 %15, %struct.common_audit_data* %4)
  ret i32 %16
}

declare dso_local i32 @task_sid(i32) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
