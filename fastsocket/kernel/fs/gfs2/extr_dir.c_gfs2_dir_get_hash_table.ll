; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_get_hash_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_get_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, i32*, %struct.inode }
%struct.inode = type { i32 }

@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.gfs2_inode*)* @gfs2_dir_get_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %8, i32 0, i32 3
  store %struct.inode* %9, %struct.inode** %4, align 8
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32*, i32** %7, align 8
  store i32* %25, i32** %2, align 8
  br label %116

26:                                               ; preds = %1
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @i_size_read(%struct.inode* %36)
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %41 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32* @ERR_PTR(i32 %43)
  store i32* %44, i32** %2, align 8
  br label %116

45:                                               ; preds = %26
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @GFP_NOFS, align 4
  %48 = load i32, i32* @__GFP_NOWARN, align 4
  %49 = or i32 %47, %48
  %50 = call i32* @kmalloc(i32 %46, i32 %49)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @GFP_NOFS, align 4
  %56 = load i32, i32* @PAGE_KERNEL, align 4
  %57 = call i32* @__vmalloc(i32 %54, i32 %55, i32 %56)
  store i32* %57, i32** %7, align 8
  br label %58

58:                                               ; preds = %53, %45
  %59 = load i32*, i32** %7, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32* @ERR_PTR(i32 %63)
  store i32* %64, i32** %2, align 8
  br label %116

65:                                               ; preds = %58
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = bitcast i32* %67 to i8*
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @gfs2_dir_read_data(%struct.gfs2_inode* %66, i8* %68, i32 0, i32 %69, i32 1)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %65
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @is_vmalloc_addr(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @vfree(i32* %78)
  br label %83

80:                                               ; preds = %73
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @kfree(i32* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %5, align 4
  %85 = call i32* @ERR_PTR(i32 %84)
  store i32* %85, i32** %2, align 8
  br label %116

86:                                               ; preds = %65
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = call i32 @spin_lock(i32* %88)
  %90 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %91 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load i32*, i32** %7, align 8
  %96 = call i64 @is_vmalloc_addr(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @vfree(i32* %99)
  br label %104

101:                                              ; preds = %94
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @kfree(i32* %102)
  br label %104

104:                                              ; preds = %101, %98
  br label %109

105:                                              ; preds = %86
  %106 = load i32*, i32** %7, align 8
  %107 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %108 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  br label %109

109:                                              ; preds = %105, %104
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %114 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %2, align 8
  br label %116

116:                                              ; preds = %109, %83, %61, %39, %24
  %117 = load i32*, i32** %2, align 8
  ret i32* %117
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_dir_read_data(%struct.gfs2_inode*, i8*, i32, i32, i32) #1

declare dso_local i64 @is_vmalloc_addr(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
