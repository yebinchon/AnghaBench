; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_direct_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_direct_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.autofs_info = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"top %p %.*s\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, i64, i32)* @autofs4_direct_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_direct_busy(%struct.vfsmount* %0, %struct.dentry* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.autofs_info*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.dentry* %11, i32 %16, i32 %20)
  %22 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %23 = call i32 @may_umount_tree(%struct.vfsmount* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %4
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %26)
  store %struct.autofs_info* %27, %struct.autofs_info** %10, align 8
  %28 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %29 = icmp ne %struct.autofs_info* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @jiffies, align 4
  %32 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %33 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %25
  store i32 1, i32* %5, align 4
  br label %43

35:                                               ; preds = %4
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @autofs4_can_expire(%struct.dentry* %36, i64 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %41, %34
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @DPRINTK(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @may_umount_tree(%struct.vfsmount*) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs4_can_expire(%struct.dentry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
