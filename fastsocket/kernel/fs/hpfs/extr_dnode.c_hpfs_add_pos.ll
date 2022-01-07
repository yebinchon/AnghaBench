; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_add_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_add_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hpfs_inode_info = type { i32** }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HPFS: out of memory for position list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_add_pos(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hpfs_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %8)
  store %struct.hpfs_inode_info* %9, %struct.hpfs_inode_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %11 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %36, %14
  %16 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %17 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %26 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp eq i32* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %93

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %15

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 15
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %78, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 17
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call i32** @kmalloc(i32 %49, i32 %50)
  store i32** %51, i32*** %7, align 8
  %52 = icmp ne i32** %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %93

55:                                               ; preds = %44
  %56 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %57 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i32**, i32*** %7, align 8
  %62 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %63 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i32** %61, i32** %64, i32 %68)
  %70 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %71 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = call i32 @kfree(i32** %72)
  br label %74

74:                                               ; preds = %60, %55
  %75 = load i32**, i32*** %7, align 8
  %76 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %77 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %76, i32 0, i32 0
  store i32** %75, i32*** %77, align 8
  br label %78

78:                                               ; preds = %74, %40
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %81 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* %79, i32** %85, align 8
  %86 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %87 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %78, %53, %34
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32** @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
