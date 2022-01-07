; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_device_cgroup.c___devcgroup_inode_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_device_cgroup.c___devcgroup_inode_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@DEV_BLOCK = common dso_local global i16 0, align 2
@DEV_CHAR = common dso_local global i16 0, align 2
@MAY_WRITE = common dso_local global i32 0, align 4
@ACC_WRITE = common dso_local global i16 0, align 2
@MAY_READ = common dso_local global i32 0, align 4
@ACC_READ = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__devcgroup_inode_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i16 0, i16* %6, align 2
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @S_ISBLK(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i16, i16* @DEV_BLOCK, align 2
  store i16 %13, i16* %5, align 2
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISCHR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i16, i16* @DEV_CHAR, align 2
  store i16 %21, i16* %5, align 2
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MAY_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i16, i16* @ACC_WRITE, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* %6, align 2
  %31 = sext i16 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %6, align 2
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MAY_READ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i16, i16* @ACC_READ, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* %6, align 2
  %43 = sext i16 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %6, align 2
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i16, i16* %5, align 2
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call i32 @imajor(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = call i32 @iminor(%struct.inode* %50)
  %52 = load i16, i16* %6, align 2
  %53 = call i32 @__devcgroup_check_permission(i16 signext %47, i32 %49, i32 %51, i16 signext %52)
  ret i32 %53
}

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @__devcgroup_check_permission(i16 signext, i32, i32, i16 signext) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
