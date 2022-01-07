; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_policy_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_policy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }

@selinux_xfrm_refcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_policy_alloc(%struct.xfrm_sec_ctx** %0, %struct.xfrm_user_sec_ctx* %1) #0 {
  %3 = alloca %struct.xfrm_sec_ctx**, align 8
  %4 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_sec_ctx** %0, %struct.xfrm_sec_ctx*** %3, align 8
  store %struct.xfrm_user_sec_ctx* %1, %struct.xfrm_user_sec_ctx** %4, align 8
  %6 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %7 = icmp ne %struct.xfrm_user_sec_ctx* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.xfrm_sec_ctx**, %struct.xfrm_sec_ctx*** %3, align 8
  %12 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %4, align 8
  %13 = call i32 @selinux_xfrm_sec_ctx_alloc(%struct.xfrm_sec_ctx** %11, %struct.xfrm_user_sec_ctx* %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @atomic_inc(i32* @selinux_xfrm_refcount)
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @selinux_xfrm_sec_ctx_alloc(%struct.xfrm_sec_ctx**, %struct.xfrm_user_sec_ctx*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
