; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_revalidate_ci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_revalidate_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64 }
%struct.nameidata = type { i32 }

@LOOKUP_CONTINUE = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@LOOKUP_RENAME_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @vfat_revalidate_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_revalidate_ci(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %13 = icmp ne %struct.nameidata* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %38

15:                                               ; preds = %11
  %16 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LOOKUP_CONTINUE, align 4
  %20 = load i32, i32* @LOOKUP_PARENT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %15
  %25 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LOOKUP_CREATE, align 4
  %29 = load i32, i32* @LOOKUP_RENAME_TARGET, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %38

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = call i32 @vfat_revalidate_shortname(%struct.dentry* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %33, %14, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @vfat_revalidate_shortname(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
