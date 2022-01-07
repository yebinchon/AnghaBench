; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_encode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_3__*, %struct.inode* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32*, i32*, i32)* @fat_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_encode_fh(%struct.dentry* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 255, i32* %5, align 4
  br label %81

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %11, align 8
  %25 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 240
  %34 = shl i32 %33, 24
  store i32 %34, i32* %13, align 4
  %35 = load %struct.inode*, %struct.inode** %11, align 8
  %36 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  %40 = shl i32 %39, 28
  store i32 %40, i32* %14, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 5, i32* %41, align 4
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %55, %59
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.inode*, %struct.inode** %70, align 8
  %72 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %66, %74
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.dentry*, %struct.dentry** %6, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  store i32 3, i32* %5, align 4
  br label %81

81:                                               ; preds = %23, %22
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_4__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
