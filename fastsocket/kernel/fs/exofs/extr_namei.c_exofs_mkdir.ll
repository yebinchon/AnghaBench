; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }

@EMLINK = common dso_local global i32 0, align 4
@EXOFS_LINK_MAX = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@exofs_dir_inode_operations = common dso_local global i32 0, align 4
@exofs_dir_operations = common dso_local global i32 0, align 4
@exofs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @exofs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exofs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
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
  %14 = load i64, i64* @EXOFS_LINK_MAX, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @inode_inc_link_count(%struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.inode* @exofs_new_inode(%struct.inode* %20, i32 %23)
  store %struct.inode* %24, %struct.inode** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.inode* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call i64 @IS_ERR(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %68

31:                                               ; preds = %17
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 3
  store i32* @exofs_dir_inode_operations, i32** %33, align 8
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 2
  store i32* @exofs_dir_operations, i32** %35, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* @exofs_aops, i32** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call i32 @inode_inc_link_count(%struct.inode* %40)
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @exofs_make_empty(%struct.inode* %42, %struct.inode* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %61

48:                                               ; preds = %31
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call i32 @exofs_add_link(%struct.dentry* %49, %struct.inode* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %61

55:                                               ; preds = %48
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = call i32 @d_instantiate(%struct.dentry* %56, %struct.inode* %57)
  br label %59

59:                                               ; preds = %68, %55, %16
  %60 = load i32, i32* %8, align 4
  ret i32 %60

61:                                               ; preds = %54, %47
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @inode_dec_link_count(%struct.inode* %62)
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = call i32 @inode_dec_link_count(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call i32 @iput(%struct.inode* %66)
  br label %68

68:                                               ; preds = %61, %30
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 @inode_dec_link_count(%struct.inode* %69)
  br label %59
}

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @exofs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @exofs_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @exofs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
