; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_hpfs_fn.h_dnode_end_de.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_hpfs_fn.h_dnode_end_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type opaque
%struct.dnode = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"HPFS: dnode_end_de: dnode->first_free = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpfs_dirent* (%struct.dnode*)* @dnode_end_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %0) #0 {
  %2 = alloca %struct.dnode*, align 8
  store %struct.dnode* %0, %struct.dnode** %2, align 8
  %3 = load %struct.dnode*, %struct.dnode** %2, align 8
  %4 = getelementptr inbounds %struct.dnode, %struct.dnode* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 20
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.dnode*, %struct.dnode** %2, align 8
  %9 = getelementptr inbounds %struct.dnode, %struct.dnode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 2560
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = load %struct.dnode*, %struct.dnode** %2, align 8
  %16 = getelementptr inbounds %struct.dnode, %struct.dnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @CHKCOND(i32 %14, i8* %19)
  %21 = load %struct.dnode*, %struct.dnode** %2, align 8
  %22 = bitcast %struct.dnode* %21 to i8*
  %23 = load %struct.dnode*, %struct.dnode** %2, align 8
  %24 = getelementptr inbounds %struct.dnode, %struct.dnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %22, i64 %26
  %28 = bitcast i8* %27 to %struct.hpfs_dirent*
  ret %struct.hpfs_dirent* %28
}

declare dso_local i32 @CHKCOND(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
