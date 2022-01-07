; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_file_llseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_file_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_8__*, %struct.TYPE_12__ }
%struct.TYPE_8__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_11__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"NFS: llseek file(%s/%s, %lld, %d)\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @nfs_file_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_file_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SEEK_END, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %3
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.inode*, %struct.inode** %37, align 8
  store %struct.inode* %38, %struct.inode** %9, align 8
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = call i32 @nfs_revalidate_file_size(%struct.inode* %39, %struct.file* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %64

46:                                               ; preds = %33
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @generic_file_llseek_unlocked(%struct.file* %50, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  br label %62

57:                                               ; preds = %3
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @generic_file_llseek_unlocked(%struct.file* %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57, %46
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %44
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_revalidate_file_size(%struct.inode*, %struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @generic_file_llseek_unlocked(%struct.file*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
