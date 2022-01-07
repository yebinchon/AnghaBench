; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_inode_setotherxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_inode_setotherxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.cred = type { i32 }

@XATTR_SECURITY_PREFIX = common dso_local global i32 0, align 4
@XATTR_NAME_CAPS = common dso_local global i32 0, align 4
@CAP_SETFCAP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@FILE__SETATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*)* @selinux_inode_setotherxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_setotherxattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cred*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %7, %struct.cred** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @XATTR_SECURITY_PREFIX, align 4
  %10 = call i32 @strncmp(i8* %8, i32 %9, i32 3)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @XATTR_NAME_CAPS, align 4
  %15 = call i32 @strcmp(i8* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @CAP_SETFCAP, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %17
  br label %33

25:                                               ; preds = %12
  %26 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %24
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.cred*, %struct.cred** %6, align 8
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = load i32, i32* @FILE__SETATTR, align 4
  %38 = call i32 @dentry_has_perm(%struct.cred* %35, i32* null, %struct.dentry* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %29, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @dentry_has_perm(%struct.cred*, i32*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
