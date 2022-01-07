; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_quotactl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_quotactl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cred = type { i32 }

@FILESYSTEM__QUOTAMOD = common dso_local global i32 0, align 4
@FILESYSTEM__QUOTAGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.super_block*)* @selinux_quotactl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_quotactl(i32 %0, i32 %1, i32 %2, %struct.super_block* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.super_block* %3, %struct.super_block** %9, align 8
  %12 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %12, %struct.cred** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.super_block*, %struct.super_block** %9, align 8
  %14 = icmp ne %struct.super_block* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %31

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %28 [
    i32 128, label %18
    i32 131, label %18
    i32 132, label %18
    i32 130, label %18
    i32 129, label %18
    i32 135, label %23
    i32 134, label %23
    i32 133, label %23
  ]

18:                                               ; preds = %16, %16, %16, %16, %16
  %19 = load %struct.cred*, %struct.cred** %10, align 8
  %20 = load %struct.super_block*, %struct.super_block** %9, align 8
  %21 = load i32, i32* @FILESYSTEM__QUOTAMOD, align 4
  %22 = call i32 @superblock_has_perm(%struct.cred* %19, %struct.super_block* %20, i32 %21, i32* null)
  store i32 %22, i32* %11, align 4
  br label %29

23:                                               ; preds = %16, %16, %16
  %24 = load %struct.cred*, %struct.cred** %10, align 8
  %25 = load %struct.super_block*, %struct.super_block** %9, align 8
  %26 = load i32, i32* @FILESYSTEM__QUOTAGET, align 4
  %27 = call i32 @superblock_has_perm(%struct.cred* %24, %struct.super_block* %25, i32 %26, i32* null)
  store i32 %27, i32* %11, align 4
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %23, %18
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @superblock_has_perm(%struct.cred*, %struct.super_block*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
