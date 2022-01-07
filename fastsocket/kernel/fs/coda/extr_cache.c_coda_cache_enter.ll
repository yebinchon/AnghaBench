; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cache.c_coda_cache_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cache.c_coda_cache_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.coda_inode_info = type { i64, i32, i32 }

@permission_epoch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_cache_enter(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.coda_inode_info* @ITOC(%struct.inode* %6)
  store %struct.coda_inode_info* %7, %struct.coda_inode_info** %5, align 8
  %8 = call i32 @atomic_read(i32* @permission_epoch)
  %9 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %12 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 (...) @current_fsuid()
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = call i64 (...) @current_fsuid()
  %18 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %19 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %22 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %26 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @current_fsuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
