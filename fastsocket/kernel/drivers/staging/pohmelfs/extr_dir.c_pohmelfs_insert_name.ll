; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_insert_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_insert_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_inode = type { i32, i32 }
%struct.pohmelfs_name = type { i32, i64 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_inode*, %struct.pohmelfs_name*)* @pohmelfs_insert_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_insert_name(%struct.pohmelfs_inode* %0, %struct.pohmelfs_name* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pohmelfs_inode*, align 8
  %5 = alloca %struct.pohmelfs_name*, align 8
  %6 = alloca %struct.pohmelfs_name*, align 8
  store %struct.pohmelfs_inode* %0, %struct.pohmelfs_inode** %4, align 8
  store %struct.pohmelfs_name* %1, %struct.pohmelfs_name** %5, align 8
  %7 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %4, align 8
  %8 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %5, align 8
  %9 = call %struct.pohmelfs_name* @pohmelfs_insert_hash(%struct.pohmelfs_inode* %7, %struct.pohmelfs_name* %8)
  store %struct.pohmelfs_name* %9, %struct.pohmelfs_name** %6, align 8
  %10 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %6, align 8
  %11 = icmp ne %struct.pohmelfs_name* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %5, align 8
  %17 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %4, align 8
  %20 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.pohmelfs_name*, %struct.pohmelfs_name** %5, align 8
  %26 = getelementptr inbounds %struct.pohmelfs_name, %struct.pohmelfs_name* %25, i32 0, i32 0
  %27 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %4, align 8
  %28 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.pohmelfs_name* @pohmelfs_insert_hash(%struct.pohmelfs_inode*, %struct.pohmelfs_name*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
