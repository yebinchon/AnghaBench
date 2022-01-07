; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_inode.c_vxfs_iinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_inode.c_vxfs_iinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.vxfs_inode_info*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.vxfs_inode_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.vxfs_inode_info*)* @vxfs_iinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxfs_iinit(%struct.inode* %0, %struct.vxfs_inode_info* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.vxfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.vxfs_inode_info* %1, %struct.vxfs_inode_info** %4, align 8
  %5 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %6 = call i32 @vxfs_transmod(%struct.vxfs_inode_info* %5)
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 8
  %9 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %10 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 9
  store i64 %11, i64* %13, align 8
  %14 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %15 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 8
  store i64 %16, i64* %18, align 8
  %19 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %20 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %25 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %30 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %36 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %42 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %57 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %62 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  store %struct.vxfs_inode_info* %66, %struct.vxfs_inode_info** %68, align 8
  ret void
}

declare dso_local i32 @vxfs_transmod(%struct.vxfs_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
