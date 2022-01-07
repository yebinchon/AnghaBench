; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cache.c_coda_cache_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cache.c_coda_cache_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.coda_inode_info = type { i32, i64, i64 }

@permission_epoch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_cache_check(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_inode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.coda_inode_info* @ITOC(%struct.inode* %7)
  store %struct.coda_inode_info* %8, %struct.coda_inode_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %11 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %9, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %18 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @current_fsuid()
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %24 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @atomic_read(i32* @permission_epoch)
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %16, %2
  %29 = phi i1 [ false, %16 ], [ false, %2 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
