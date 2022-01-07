; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_alloc_pseudo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_alloc_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.dentry*, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_alloc_pseudo(%struct.super_block* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %6 = load %struct.qstr*, %struct.qstr** %4, align 8
  %7 = call %struct.dentry* @d_alloc(i32* null, %struct.qstr* %6)
  store %struct.dentry* %7, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = icmp ne %struct.dentry* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 2
  store %struct.super_block* %11, %struct.super_block** %13, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  store %struct.dentry* %14, %struct.dentry** %16, align 8
  %17 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %10, %2
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %23
}

declare dso_local %struct.dentry* @d_alloc(i32*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
