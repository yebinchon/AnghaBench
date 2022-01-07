; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32 }

@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ubifs_inode*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %13)
  store %struct.ubifs_inode* %14, %struct.ubifs_inode** %9, align 8
  %15 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %16 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 9
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kstat*, %struct.kstat** %6, align 8
  %24 = getelementptr inbounds %struct.kstat, %struct.kstat* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.kstat*, %struct.kstat** %6, align 8
  %29 = getelementptr inbounds %struct.kstat, %struct.kstat* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.kstat*, %struct.kstat** %6, align 8
  %34 = getelementptr inbounds %struct.kstat, %struct.kstat* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kstat*, %struct.kstat** %6, align 8
  %39 = getelementptr inbounds %struct.kstat, %struct.kstat* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.kstat*, %struct.kstat** %6, align 8
  %44 = getelementptr inbounds %struct.kstat, %struct.kstat* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.kstat*, %struct.kstat** %6, align 8
  %49 = getelementptr inbounds %struct.kstat, %struct.kstat* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.kstat*, %struct.kstat** %6, align 8
  %54 = getelementptr inbounds %struct.kstat, %struct.kstat* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.kstat*, %struct.kstat** %6, align 8
  %59 = getelementptr inbounds %struct.kstat, %struct.kstat* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.kstat*, %struct.kstat** %6, align 8
  %64 = getelementptr inbounds %struct.kstat, %struct.kstat* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.kstat*, %struct.kstat** %6, align 8
  %69 = getelementptr inbounds %struct.kstat, %struct.kstat* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %71 = load %struct.kstat*, %struct.kstat** %6, align 8
  %72 = getelementptr inbounds %struct.kstat, %struct.kstat* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %74 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.kstat*, %struct.kstat** %6, align 8
  %77 = getelementptr inbounds %struct.kstat, %struct.kstat* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @S_ISREG(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %3
  %84 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %85 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  %87 = load %struct.kstat*, %struct.kstat** %6, align 8
  %88 = getelementptr inbounds %struct.kstat, %struct.kstat* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %94 = call i32 @ALIGN(i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = ashr i32 %95, 9
  %97 = load %struct.kstat*, %struct.kstat** %6, align 8
  %98 = getelementptr inbounds %struct.kstat, %struct.kstat* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %102

99:                                               ; preds = %3
  %100 = load %struct.kstat*, %struct.kstat** %6, align 8
  %101 = getelementptr inbounds %struct.kstat, %struct.kstat* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %83
  %103 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %104 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %103, i32 0, i32 2
  %105 = call i32 @mutex_unlock(i32* %104)
  ret i32 0
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
