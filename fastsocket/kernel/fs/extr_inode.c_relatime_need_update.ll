; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_relatime_need_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_relatime_need_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.inode = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timespec = type { i64 }

@MNT_RELATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.inode*, i64)* @relatime_need_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relatime_need_update(%struct.vfsmount* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 %2, i64* %8, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  %9 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MNT_RELATIME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i64 @timespec_compare(i32* %18, %struct.TYPE_2__* %20)
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %43

24:                                               ; preds = %16
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = call i64 @timespec_compare(i32* %26, %struct.TYPE_2__* %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %43

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  %40 = icmp sge i64 %39, 86400
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %31, %23, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @timespec_compare(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
