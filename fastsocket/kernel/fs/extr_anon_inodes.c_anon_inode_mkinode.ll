; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_anon_inodes.c_anon_inode_mkinode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_anon_inodes.c_anon_inode_mkinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32* }

@anon_inode_mnt = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@anon_inode_fops = common dso_local global i32 0, align 4
@anon_aops = common dso_local global i32 0, align 4
@I_DIRTY = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* ()* @anon_inode_mkinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @anon_inode_mkinode() #0 {
  %1 = alloca %struct.inode*, align 8
  %2 = alloca %struct.inode*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @anon_inode_mnt, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.inode* @new_inode(i32 %5)
  store %struct.inode* %6, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.inode* @ERR_PTR(i32 %11)
  store %struct.inode* %12, %struct.inode** %1, align 8
  br label %44

13:                                               ; preds = %0
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 8
  store i32* @anon_inode_fops, i32** %15, align 8
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 7
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* @anon_aops, i32** %19, align 8
  %20 = load i32, i32* @I_DIRTY, align 4
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @S_IFREG, align 4
  %24 = load i32, i32* @S_IRUSR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S_IWUSR, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @current_fsuid()
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = call i32 (...) @current_fsgid()
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @CURRENT_TIME, align 4
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 3
  store i32 %36, i32* %42, align 4
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  store %struct.inode* %43, %struct.inode** %1, align 8
  br label %44

44:                                               ; preds = %13, %9
  %45 = load %struct.inode*, %struct.inode** %1, align 8
  ret %struct.inode* %45
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
