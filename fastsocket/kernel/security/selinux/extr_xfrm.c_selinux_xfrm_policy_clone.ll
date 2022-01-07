; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_policy_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_xfrm.c_selinux_xfrm_policy_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_sec_ctx = type { i32, %struct.xfrm_sec_ctx* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_policy_clone(%struct.xfrm_sec_ctx* %0, %struct.xfrm_sec_ctx** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_sec_ctx*, align 8
  %5 = alloca %struct.xfrm_sec_ctx**, align 8
  %6 = alloca %struct.xfrm_sec_ctx*, align 8
  store %struct.xfrm_sec_ctx* %0, %struct.xfrm_sec_ctx** %4, align 8
  store %struct.xfrm_sec_ctx** %1, %struct.xfrm_sec_ctx*** %5, align 8
  %7 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %8 = icmp ne %struct.xfrm_sec_ctx* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = add i64 16, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.xfrm_sec_ctx* @kmalloc(i32 %15, i32 %16)
  store %struct.xfrm_sec_ctx* %17, %struct.xfrm_sec_ctx** %6, align 8
  %18 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %6, align 8
  %19 = icmp ne %struct.xfrm_sec_ctx* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %9
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %9
  %24 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %6, align 8
  %25 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %26 = call i32 @memcpy(%struct.xfrm_sec_ctx* %24, %struct.xfrm_sec_ctx* %25, i32 16)
  %27 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %27, i32 0, i32 1
  %29 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %28, align 8
  %30 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %30, i32 0, i32 1
  %32 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %31, align 8
  %33 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memcpy(%struct.xfrm_sec_ctx* %29, %struct.xfrm_sec_ctx* %32, i32 %35)
  %37 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %6, align 8
  %38 = load %struct.xfrm_sec_ctx**, %struct.xfrm_sec_ctx*** %5, align 8
  store %struct.xfrm_sec_ctx* %37, %struct.xfrm_sec_ctx** %38, align 8
  br label %39

39:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.xfrm_sec_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
