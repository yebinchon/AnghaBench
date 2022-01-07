; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_namei.c_ext2_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_namei.c_ext2_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_2__*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }

@EMLINK = common dso_local global i32 0, align 4
@EXT2_LINK_MAX = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@ext2_dir_inode_operations = common dso_local global i32 0, align 4
@ext2_dir_operations = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext2_nobh_aops = common dso_local global i32 0, align 4
@ext2_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ext2_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EMLINK, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EXT2_LINK_MAX, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @inode_inc_link_count(%struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.inode* @ext2_new_inode(%struct.inode* %20, i32 %23)
  store %struct.inode* %24, %struct.inode** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.inode* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i64 @IS_ERR(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %85

31:                                               ; preds = %17
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 4
  store i32* @ext2_dir_inode_operations, i32** %33, align 8
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 3
  store i32* @ext2_dir_operations, i32** %35, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NOBH, align 4
  %40 = call i64 @test_opt(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %46, align 8
  br label %52

47:                                               ; preds = %31
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32* @ext2_aops, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = call i32 @inode_inc_link_count(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call i32 @ext2_make_empty(%struct.inode* %55, %struct.inode* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %76

61:                                               ; preds = %52
  %62 = load %struct.dentry*, %struct.dentry** %5, align 8
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call i32 @ext2_add_link(%struct.dentry* %62, %struct.inode* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %76

68:                                               ; preds = %61
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = call i32 @d_instantiate(%struct.dentry* %69, %struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = call i32 @unlock_new_inode(%struct.inode* %72)
  br label %74

74:                                               ; preds = %85, %68, %16
  %75 = load i32, i32* %8, align 4
  ret i32 %75

76:                                               ; preds = %67, %60
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = call i32 @inode_dec_link_count(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = call i32 @inode_dec_link_count(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = call i32 @unlock_new_inode(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = call i32 @iput(%struct.inode* %83)
  br label %85

85:                                               ; preds = %76, %30
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = call i32 @inode_dec_link_count(%struct.inode* %86)
  br label %74
}

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @ext2_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @ext2_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext2_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
