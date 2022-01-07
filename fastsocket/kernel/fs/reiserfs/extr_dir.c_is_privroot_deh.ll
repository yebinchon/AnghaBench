; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_dir.c_is_privroot_deh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_dir.c_is_privroot_deh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.dentry*, i32 }
%struct.reiserfs_de_head = type { i64 }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.reiserfs_de_head*)* @is_privroot_deh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_privroot_deh(%struct.dentry* %0, %struct.reiserfs_de_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.reiserfs_de_head*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.reiserfs_de_head* %1, %struct.reiserfs_de_head** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.TYPE_3__* @REISERFS_SB(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @reiserfs_expose_privroot(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = load %struct.dentry*, %struct.dentry** %22, align 8
  %24 = icmp eq %struct.dentry* %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %5, align 8
  %32 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.TYPE_4__* @INODE_PKEY(i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %33, %39
  br label %41

41:                                               ; preds = %30, %25, %19
  %42 = phi i1 [ false, %25 ], [ false, %19 ], [ %40, %30 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_3__* @REISERFS_SB(i32) #1

declare dso_local i64 @reiserfs_expose_privroot(i32) #1

declare dso_local %struct.TYPE_4__* @INODE_PKEY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
