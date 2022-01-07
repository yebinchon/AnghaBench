; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_search_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_search_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_name = type { i64 }
%struct.pohmelfs_inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pohmelfs_name* @pohmelfs_search_hash(%struct.pohmelfs_inode* %0, i64 %1) #0 {
  %3 = alloca %struct.pohmelfs_name*, align 8
  %4 = alloca %struct.pohmelfs_inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pohmelfs_name*, align 8
  store %struct.pohmelfs_inode* %0, %struct.pohmelfs_inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.pohmelfs_name* @pohmelfs_search_hash_unprecise(%struct.pohmelfs_inode* %7, i64 %8)
  store %struct.pohmelfs_name* %9, %struct.pohmelfs_name** %6, align 8
  %10 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %6, align 8
  %11 = icmp ne %struct.pohmelfs_name* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %6, align 8
  %14 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %6, align 8
  store %struct.pohmelfs_name* %19, %struct.pohmelfs_name** %3, align 8
  br label %21

20:                                               ; preds = %12, %2
  store %struct.pohmelfs_name* null, %struct.pohmelfs_name** %3, align 8
  br label %21

21:                                               ; preds = %20, %18
  %22 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %3, align 8
  ret %struct.pohmelfs_name* %22
}

declare dso_local %struct.pohmelfs_name* @pohmelfs_search_hash_unprecise(%struct.pohmelfs_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
