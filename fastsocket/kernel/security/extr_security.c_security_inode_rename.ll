; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_security.c_security_inode_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_security.c_security_inode_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* }
%struct.inode = type { i32 }
%struct.dentry = type { i64 }

@security_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_inode_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %10 = load %struct.dentry*, %struct.dentry** %7, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @IS_PRIVATE(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %4
  %16 = load %struct.dentry*, %struct.dentry** %9, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @IS_PRIVATE(i64 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i1 [ false, %15 ], [ %25, %20 ]
  br label %28

28:                                               ; preds = %26, %4
  %29 = phi i1 [ true, %4 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %43

34:                                               ; preds = %28
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @security_ops, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)** %36, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = call i32 %37(%struct.inode* %38, %struct.dentry* %39, %struct.inode* %40, %struct.dentry* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %34, %33
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_PRIVATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
