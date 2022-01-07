; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_dq_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_dq_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.inode*, %struct.iattr*)* }
%struct.iattr = type { i32 }

@NO_QUOTA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_dq_transfer(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i64 @sb_any_quota_active(%struct.TYPE_4__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @IS_NOQUOTA(%struct.inode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @vfs_dq_init(%struct.inode* %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.inode*, %struct.iattr*)*, i64 (%struct.inode*, %struct.iattr*)** %23, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load %struct.iattr*, %struct.iattr** %5, align 8
  %27 = call i64 %24(%struct.inode* %25, %struct.iattr* %26)
  %28 = load i64, i64* @NO_QUOTA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %33

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %11, %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @sb_any_quota_active(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
