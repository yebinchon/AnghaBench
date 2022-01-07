; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_inode_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_inode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.cred = type { i32 }

@ATTR_FORCE = common dso_local global i32 0, align 4
@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_TIMES_SET = common dso_local global i32 0, align 4
@FILE__SETATTR = common dso_local global i32 0, align 4
@FILE__WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @selinux_inode_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %8, %struct.cred** %6, align 8
  %9 = load %struct.iattr*, %struct.iattr** %5, align 8
  %10 = getelementptr inbounds %struct.iattr, %struct.iattr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ATTR_FORCE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i32, i32* @ATTR_KILL_SUID, align 4
  %18 = load i32, i32* @ATTR_KILL_SGID, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ATTR_MODE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ATTR_FORCE, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %56

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ATTR_MODE, align 4
  %34 = load i32, i32* @ATTR_UID, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ATTR_GID, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ATTR_ATIME_SET, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ATTR_MTIME_SET, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ATTR_TIMES_SET, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %32, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load %struct.cred*, %struct.cred** %6, align 8
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = load i32, i32* @FILE__SETATTR, align 4
  %50 = call i32 @dentry_has_perm(%struct.cred* %47, i32* null, %struct.dentry* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %31
  %52 = load %struct.cred*, %struct.cred** %6, align 8
  %53 = load %struct.dentry*, %struct.dentry** %4, align 8
  %54 = load i32, i32* @FILE__WRITE, align 4
  %55 = call i32 @dentry_has_perm(%struct.cred* %52, i32* null, %struct.dentry* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %46, %29
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @dentry_has_perm(%struct.cred*, i32*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
