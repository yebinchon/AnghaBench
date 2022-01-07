; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_state_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_state_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.xfrm_sec_ctx* }
%struct.xfrm_sec_ctx = type { i32 }
%struct.task_security_struct = type { i32 }

@SECCLASS_ASSOCIATION = common dso_local global i32 0, align 4
@ASSOCIATION__SETCONTEXT = common dso_local global i32 0, align 4
@selinux_xfrm_refcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_state_delete(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.task_security_struct*, align 8
  %4 = alloca %struct.xfrm_sec_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %6 = call %struct.task_security_struct* (...) @current_security()
  store %struct.task_security_struct* %6, %struct.task_security_struct** %3, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %7, i32 0, i32 0
  %9 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %8, align 8
  store %struct.xfrm_sec_ctx* %9, %struct.xfrm_sec_ctx** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %11 = icmp ne %struct.xfrm_sec_ctx* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SECCLASS_ASSOCIATION, align 4
  %20 = load i32, i32* @ASSOCIATION__SETCONTEXT, align 4
  %21 = call i32 @avc_has_perm(i32 %15, i32 %18, i32 %19, i32 %20, i32* null)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = call i32 @atomic_dec(i32* @selinux_xfrm_refcount)
  br label %26

26:                                               ; preds = %24, %12
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.task_security_struct* @current_security(...) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
