; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EMLINK = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @minix_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
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
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @minix_sb(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %13, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %70

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @inode_inc_link_count(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call %struct.inode* @minix_new_inode(%struct.inode* %25, i32* %8)
  store %struct.inode* %26, %struct.inode** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %79

30:                                               ; preds = %22
  %31 = load i32, i32* @S_IFDIR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @S_ISGID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i32, i32* @S_ISGID, align 4
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %30
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @minix_set_inode(%struct.inode* %49, i32 0)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call i32 @inode_inc_link_count(%struct.inode* %51)
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i32 @minix_make_empty(%struct.inode* %53, %struct.inode* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %72

59:                                               ; preds = %48
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @minix_add_link(%struct.dentry* %60, %struct.inode* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %72

66:                                               ; preds = %59
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = call i32 @d_instantiate(%struct.dentry* %67, %struct.inode* %68)
  br label %70

70:                                               ; preds = %79, %66, %21
  %71 = load i32, i32* %8, align 4
  ret i32 %71

72:                                               ; preds = %65, %58
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = call i32 @inode_dec_link_count(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call i32 @inode_dec_link_count(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = call i32 @iput(%struct.inode* %77)
  br label %79

79:                                               ; preds = %72, %29
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = call i32 @inode_dec_link_count(%struct.inode* %80)
  br label %70
}

declare dso_local %struct.TYPE_2__* @minix_sb(i32) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @minix_new_inode(%struct.inode*, i32*) #1

declare dso_local i32 @minix_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @minix_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @minix_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
