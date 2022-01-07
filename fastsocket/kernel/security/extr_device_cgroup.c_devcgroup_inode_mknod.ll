; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_device_cgroup.c_devcgroup_inode_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_device_cgroup.c_devcgroup_inode_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEV_BLOCK = common dso_local global i16 0, align 2
@DEV_CHAR = common dso_local global i16 0, align 2
@ACC_MKNOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devcgroup_inode_mknod(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @S_ISBLK(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @S_ISCHR(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %31

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @S_ISBLK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i16, i16* @DEV_BLOCK, align 2
  store i16 %20, i16* %6, align 2
  br label %23

21:                                               ; preds = %15
  %22 = load i16, i16* @DEV_CHAR, align 2
  store i16 %22, i16* %6, align 2
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i16, i16* %6, align 2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @MAJOR(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @MINOR(i32 %27)
  %29 = load i32, i32* @ACC_MKNOD, align 4
  %30 = call i32 @__devcgroup_check_permission(i16 signext %24, i32 %26, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @__devcgroup_check_permission(i16 signext, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
