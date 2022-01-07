; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cred = type { i32 }

@MS_REMOUNT = common dso_local global i64 0, align 8
@FILESYSTEM__REMOUNT = common dso_local global i32 0, align 4
@FILE__MOUNTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, i8*, i64, i8*)* @selinux_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_mount(i8* %0, %struct.path* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cred*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.path* %1, %struct.path** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %13, %struct.cred** %12, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @MS_REMOUNT, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load %struct.cred*, %struct.cred** %12, align 8
  %20 = load %struct.path*, %struct.path** %8, align 8
  %21 = getelementptr inbounds %struct.path, %struct.path* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FILESYSTEM__REMOUNT, align 4
  %26 = call i32 @superblock_has_perm(%struct.cred* %19, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %6, align 4
  br label %37

27:                                               ; preds = %5
  %28 = load %struct.cred*, %struct.cred** %12, align 8
  %29 = load %struct.path*, %struct.path** %8, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.path*, %struct.path** %8, align 8
  %33 = getelementptr inbounds %struct.path, %struct.path* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FILE__MOUNTON, align 4
  %36 = call i32 @dentry_has_perm(%struct.cred* %28, %struct.TYPE_2__* %31, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %27, %18
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @superblock_has_perm(%struct.cred*, i32, i32, i32*) #1

declare dso_local i32 @dentry_has_perm(%struct.cred*, %struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
