; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_get_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_get_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.inode = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dentry = type { i32 }

@TTYAUX_MAJOR = common dso_local global i32 0, align 4
@PTMX_MINOR = common dso_local global i32 0, align 4
@DEVPTS_SUPER_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty_struct* @devpts_get_tty(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.tty_struct*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @TTYAUX_MAJOR, align 4
  %12 = load i32, i32* @PTMX_MINOR, align 4
  %13 = call i64 @MKDEV(i32 %11, i32 %12)
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.dentry* @d_find_alias(%struct.inode* %17)
  store %struct.dentry* %18, %struct.dentry** %6, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.tty_struct* null, %struct.tty_struct** %3, align 8
  br label %39

22:                                               ; preds = %2
  store %struct.tty_struct* null, %struct.tty_struct** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DEVPTS_SUPER_MAGIC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.tty_struct*
  store %struct.tty_struct* %34, %struct.tty_struct** %7, align 8
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = call i32 @dput(%struct.dentry* %36)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  store %struct.tty_struct* %38, %struct.tty_struct** %3, align 8
  br label %39

39:                                               ; preds = %35, %21
  %40 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  ret %struct.tty_struct* %40
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
