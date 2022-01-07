; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_lookup.c_vxfs_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_lookup.c_vxfs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxfs_direct = type { i32, i32 }
%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.page = type { i32 }
%struct.vxfs_dirblk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxfs_direct* (%struct.inode*, %struct.dentry*, %struct.page**)* @vxfs_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxfs_direct* @vxfs_find_entry(%struct.inode* %0, %struct.dentry* %1, %struct.page** %2) #0 {
  %4 = alloca %struct.vxfs_direct*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.vxfs_dirblk*, align 8
  %21 = alloca %struct.vxfs_direct*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %14, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i64 @dir_pages(%struct.inode* %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i64 @dir_blocks(%struct.inode* %37)
  store i64 %38, i64* %10, align 8
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i64 @VXFS_BLOCK_PER_PAGE(%struct.TYPE_4__* %41)
  store i64 %42, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %126, %3
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %129

47:                                               ; preds = %43
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call %struct.page* @vxfs_get_page(i32 %50, i64 %51)
  store %struct.page* %52, %struct.page** %17, align 8
  %53 = load %struct.page*, %struct.page** %17, align 8
  %54 = call i64 @IS_ERR(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %126

57:                                               ; preds = %47
  %58 = load %struct.page*, %struct.page** %17, align 8
  %59 = call i64 @page_address(%struct.page* %58)
  store i64 %59, i64* %16, align 8
  store i64 0, i64* %12, align 8
  br label %60

60:                                               ; preds = %120, %57
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp sle i64 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %70, label %123

70:                                               ; preds = %68
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = mul nsw i64 %72, %73
  %75 = add nsw i64 %71, %74
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i64 @VXFS_DIRLEN(i32 1)
  %80 = sub nsw i64 %78, %79
  store i64 %80, i64* %19, align 8
  %81 = load i64, i64* %18, align 8
  %82 = inttoptr i64 %81 to %struct.vxfs_dirblk*
  store %struct.vxfs_dirblk* %82, %struct.vxfs_dirblk** %20, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load %struct.vxfs_dirblk*, %struct.vxfs_dirblk** %20, align 8
  %85 = call i64 @VXFS_DIRBLKOV(%struct.vxfs_dirblk* %84)
  %86 = add nsw i64 %83, %85
  %87 = inttoptr i64 %86 to %struct.vxfs_direct*
  store %struct.vxfs_direct* %87, %struct.vxfs_direct** %21, align 8
  br label %88

88:                                               ; preds = %116, %70
  %89 = load %struct.vxfs_direct*, %struct.vxfs_direct** %21, align 8
  %90 = ptrtoint %struct.vxfs_direct* %89 to i64
  %91 = load i64, i64* %19, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = load %struct.vxfs_direct*, %struct.vxfs_direct** %21, align 8
  %95 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %119

99:                                               ; preds = %93
  %100 = load %struct.vxfs_direct*, %struct.vxfs_direct** %21, align 8
  %101 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %116

105:                                              ; preds = %99
  %106 = load i32, i32* %15, align 4
  %107 = load i8*, i8** %14, align 8
  %108 = load %struct.vxfs_direct*, %struct.vxfs_direct** %21, align 8
  %109 = call i64 @vxfs_match(i32 %106, i8* %107, %struct.vxfs_direct* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.page*, %struct.page** %17, align 8
  %113 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %112, %struct.page** %113, align 8
  %114 = load %struct.vxfs_direct*, %struct.vxfs_direct** %21, align 8
  store %struct.vxfs_direct* %114, %struct.vxfs_direct** %4, align 8
  br label %130

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %104
  %117 = load %struct.vxfs_direct*, %struct.vxfs_direct** %21, align 8
  %118 = call %struct.vxfs_direct* @vxfs_next_entry(%struct.vxfs_direct* %117)
  store %struct.vxfs_direct* %118, %struct.vxfs_direct** %21, align 8
  br label %88

119:                                              ; preds = %98, %88
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %12, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %12, align 8
  br label %60

123:                                              ; preds = %68
  %124 = load %struct.page*, %struct.page** %17, align 8
  %125 = call i32 @vxfs_put_page(%struct.page* %124)
  br label %126

126:                                              ; preds = %123, %56
  %127 = load i64, i64* %9, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %9, align 8
  br label %43

129:                                              ; preds = %43
  store %struct.vxfs_direct* null, %struct.vxfs_direct** %4, align 8
  br label %130

130:                                              ; preds = %129, %111
  %131 = load %struct.vxfs_direct*, %struct.vxfs_direct** %4, align 8
  ret %struct.vxfs_direct* %131
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local i64 @dir_blocks(%struct.inode*) #1

declare dso_local i64 @VXFS_BLOCK_PER_PAGE(%struct.TYPE_4__*) #1

declare dso_local %struct.page* @vxfs_get_page(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @VXFS_DIRLEN(i32) #1

declare dso_local i64 @VXFS_DIRBLKOV(%struct.vxfs_dirblk*) #1

declare dso_local i64 @vxfs_match(i32, i8*, %struct.vxfs_direct*) #1

declare dso_local %struct.vxfs_direct* @vxfs_next_entry(%struct.vxfs_direct*) #1

declare dso_local i32 @vxfs_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
