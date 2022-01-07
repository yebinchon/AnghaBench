; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_itree.c_sysv_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_itree.c_sysv_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.kstat = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.super_block*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %9 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.kstat*, %struct.kstat** %6, align 8
  %15 = call i32 @generic_fillattr(i32 %13, %struct.kstat* %14)
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 512
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = load %struct.kstat*, %struct.kstat** %6, align 8
  %22 = getelementptr inbounds %struct.kstat, %struct.kstat* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sysv_nblocks(%struct.super_block* %20, i32 %23)
  %25 = mul nsw i32 %19, %24
  %26 = load %struct.kstat*, %struct.kstat** %6, align 8
  %27 = getelementptr inbounds %struct.kstat, %struct.kstat* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.super_block*, %struct.super_block** %7, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kstat*, %struct.kstat** %6, align 8
  %32 = getelementptr inbounds %struct.kstat, %struct.kstat* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

declare dso_local i32 @sysv_nblocks(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
