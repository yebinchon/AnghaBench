; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i64, i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @jffs2_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.jffs2_sb_info*, align 8
  %9 = alloca %struct.jffs2_inode_info*, align 8
  %10 = alloca %struct.jffs2_inode_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %18)
  store %struct.jffs2_sb_info* %19, %struct.jffs2_sb_info** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  %23 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %22)
  store %struct.jffs2_inode_info* %23, %struct.jffs2_inode_info** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %24)
  store %struct.jffs2_inode_info* %25, %struct.jffs2_inode_info** %10, align 8
  %26 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %27 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %114

33:                                               ; preds = %3
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load %struct.inode*, %struct.inode** %35, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @S_ISDIR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %114

44:                                               ; preds = %33
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @S_IFMT, align 4
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 12
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* @DT_REG, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %44
  %58 = call i32 (...) @get_seconds()
  store i32 %58, i32* %13, align 4
  %59 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %8, align 8
  %60 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %61 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %62 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @jffs2_do_link(%struct.jffs2_sb_info* %59, %struct.jffs2_inode_info* %60, i32 %65, i32 %66, i32 %70, i32 %74, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %57
  %80 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %81 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %80, i32 0, i32 0
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %84 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.dentry*, %struct.dentry** %5, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 0
  %91 = load %struct.inode*, %struct.inode** %90, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 4
  store i64 %88, i64* %92, align 8
  %93 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %94 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.dentry*, %struct.dentry** %7, align 8
  %97 = load %struct.dentry*, %struct.dentry** %5, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 0
  %99 = load %struct.inode*, %struct.inode** %98, align 8
  %100 = call i32 @d_instantiate(%struct.dentry* %96, %struct.inode* %99)
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @ITIME(i32 %101)
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.inode*, %struct.inode** %6, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 3
  store i32 %102, i32* %106, align 4
  %107 = load %struct.dentry*, %struct.dentry** %5, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 0
  %109 = load %struct.inode*, %struct.inode** %108, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  %111 = call i32 @atomic_inc(i32* %110)
  br label %112

112:                                              ; preds = %79, %57
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %41, %30
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @jffs2_do_link(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ITIME(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
