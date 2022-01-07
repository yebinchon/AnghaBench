; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dir_double_exhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dir_double_exhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i8**, i32 }
%struct.buffer_head = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @dir_double_exhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_double_exhash(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 1, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %21 = call i8** @gfs2_dir_get_hash_table(%struct.gfs2_inode* %20)
  store i8** %21, i8*** %7, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = call i64 @IS_ERR(i8** %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i8**, i8*** %7, align 8
  %27 = call i32 @PTR_ERR(i8** %26)
  store i32 %27, i32* %2, align 4
  br label %133

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 2
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = load i32, i32* @__GFP_NOWARN, align 4
  %33 = or i32 %31, %32
  %34 = call i8** @kmalloc(i32 %30, i32 %33)
  store i8** %34, i8*** %8, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = icmp eq i8** %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load i32, i32* @GFP_NOFS, align 4
  %41 = load i32, i32* @PAGE_KERNEL, align 4
  %42 = call i8** @__vmalloc(i32 %39, i32 %40, i32 %41)
  store i8** %42, i8*** %8, align 8
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i8**, i8*** %8, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %133

49:                                               ; preds = %43
  %50 = load i8**, i8*** %8, align 8
  store i8** %50, i8*** %9, align 8
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %52 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %51, %struct.buffer_head** %4)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %121

56:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %9, align 8
  store i8* %63, i8** %64, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %9, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %9, align 8
  store i8* %67, i8** %68, align 8
  %70 = load i8**, i8*** %7, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %7, align 8
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %57

75:                                               ; preds = %57
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %77 = load i8**, i8*** %8, align 8
  %78 = bitcast i8** %77 to i8*
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %79, 2
  %81 = call i32 @gfs2_dir_write_data(%struct.gfs2_inode* %76, i8* %78, i32 0, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %83, 2
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %104

87:                                               ; preds = %75
  %88 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %89 = call i32 @gfs2_dir_hash_inval(%struct.gfs2_inode* %88)
  %90 = load i8**, i8*** %8, align 8
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %92 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %91, i32 0, i32 1
  store i8** %90, i8*** %92, align 8
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %94 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %97, i32 %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  store i32 0, i32* %2, align 4
  br label %133

104:                                              ; preds = %86
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %106 = load i8**, i8*** %7, align 8
  %107 = bitcast i8** %106 to i8*
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @gfs2_dir_write_data(%struct.gfs2_inode* %105, i8* %107, i32 0, i32 %108)
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %111 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %110, i32 0, i32 2
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @i_size_write(i32* %111, i32 %112)
  %114 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %116 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %114, i32 %117)
  %119 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %120 = call i32 @brelse(%struct.buffer_head* %119)
  br label %121

121:                                              ; preds = %104, %55
  %122 = load i8**, i8*** %8, align 8
  %123 = call i64 @is_vmalloc_addr(i8** %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i8**, i8*** %8, align 8
  %127 = call i32 @vfree(i8** %126)
  br label %131

128:                                              ; preds = %121
  %129 = load i8**, i8*** %8, align 8
  %130 = call i32 @kfree(i8** %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %87, %46, %25
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i8** @gfs2_dir_get_hash_table(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i8** @kmalloc(i32, i32) #1

declare dso_local i8** @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dir_write_data(%struct.gfs2_inode*, i8*, i32, i32) #1

declare dso_local i32 @gfs2_dir_hash_inval(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @i_size_write(i32*, i32) #1

declare dso_local i64 @is_vmalloc_addr(i8**) #1

declare dso_local i32 @vfree(i8**) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
