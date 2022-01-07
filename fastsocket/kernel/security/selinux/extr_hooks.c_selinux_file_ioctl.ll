; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_file_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cred = type { i32 }

@_IOC_WRITE = common dso_local global i32 0, align 4
@FILE__WRITE = common dso_local global i32 0, align 4
@_IOC_READ = common dso_local global i32 0, align 4
@FILE__READ = common dso_local global i32 0, align 4
@FILE__IOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i64)* @selinux_file_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %9, %struct.cred** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @_IOC_DIR(i32 %10)
  %12 = load i32, i32* @_IOC_WRITE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @FILE__WRITE, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @_IOC_DIR(i32 %20)
  %22 = load i32, i32* @_IOC_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @FILE__READ, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @FILE__IOCTL, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.cred*, %struct.cred** %7, align 8
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @file_has_perm(%struct.cred* %35, %struct.file* %36, i32 %37)
  ret i32 %38
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @_IOC_DIR(i32) #1

declare dso_local i32 @file_has_perm(%struct.cred*, %struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
