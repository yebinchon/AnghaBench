; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fid = type { i32* }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @fat_fh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fat_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  %15 = load %struct.fid*, %struct.fid** %7, align 8
  %16 = getelementptr inbounds %struct.fid, %struct.fid* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 5
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %103

24:                                               ; preds = %20
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.inode* @ilookup(%struct.super_block* %25, i32 %28)
  store %struct.inode* %29, %struct.inode** %10, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32, %24
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = icmp ne %struct.inode* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = call i32 @iput(%struct.inode* %44)
  br label %46

46:                                               ; preds = %43, %40
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = icmp ne %struct.inode* %48, null
  br i1 %49, label %87, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 268435455
  store i32 %54, i32* %14, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 24
  %63 = and i32 %62, 240
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 28
  %68 = or i32 %63, %67
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load %struct.super_block*, %struct.super_block** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call %struct.inode* @fat_iget(%struct.super_block* %71, i32 %72)
  store %struct.inode* %73, %struct.inode** %10, align 8
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = icmp ne %struct.inode* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %50
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = call i32 @iput(%struct.inode* %84)
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %86

86:                                               ; preds = %83, %76, %50
  br label %87

87:                                               ; preds = %86, %47
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call %struct.dentry* @d_obtain_alias(%struct.inode* %88)
  store %struct.dentry* %89, %struct.dentry** %11, align 8
  %90 = load %struct.dentry*, %struct.dentry** %11, align 8
  %91 = call i32 @IS_ERR(%struct.dentry* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %87
  %94 = load %struct.super_block*, %struct.super_block** %6, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dentry*, %struct.dentry** %11, align 8
  %100 = getelementptr inbounds %struct.dentry, %struct.dentry* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %87
  %102 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %102, %struct.dentry** %5, align 8
  br label %103

103:                                              ; preds = %101, %23
  %104 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %104
}

declare dso_local %struct.inode* @ilookup(%struct.super_block*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @fat_iget(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_4__* @MSDOS_I(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
