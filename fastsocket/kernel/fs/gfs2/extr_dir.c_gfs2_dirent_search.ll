; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dirent_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dirent_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_dirent = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_leaf = type { i32 }

@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_dirent* (%struct.inode*, %struct.qstr*, i32, %struct.buffer_head**)* @gfs2_dirent_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode* %0, %struct.qstr* %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.gfs2_dirent*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.gfs2_dirent*, align 8
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gfs2_leaf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %18)
  store %struct.gfs2_inode* %19, %struct.gfs2_inode** %12, align 8
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %107

26:                                               ; preds = %4
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @i_size_read(%struct.inode* %34)
  %36 = zext i32 %35 to i64
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %40 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.gfs2_dirent* @ERR_PTR(i32 %42)
  store %struct.gfs2_dirent* %43, %struct.gfs2_dirent** %5, align 8
  br label %145

44:                                               ; preds = %26
  %45 = load %struct.qstr*, %struct.qstr** %7, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %49 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 32, %50
  %52 = ashr i32 %47, %51
  store i32 %52, i32* %16, align 4
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @get_first_leaf(%struct.gfs2_inode* %53, i32 %54, %struct.buffer_head** %10)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %13, align 4
  %60 = call %struct.gfs2_dirent* @ERR_PTR(i32 %59)
  store %struct.gfs2_dirent* %60, %struct.gfs2_dirent** %5, align 8
  br label %145

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %94, %61
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.qstr*, %struct.qstr** %7, align 8
  %72 = call %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %63, i64 %66, i32 %69, i32 %70, %struct.qstr* %71, i32* null)
  store %struct.gfs2_dirent* %72, %struct.gfs2_dirent** %11, align 8
  %73 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %74 = icmp ne %struct.gfs2_dirent* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %126

76:                                               ; preds = %62
  %77 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %80, %struct.gfs2_leaf** %14, align 8
  %81 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %14, align 8
  %82 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be64_to_cpu(i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %76
  br label %98

90:                                               ; preds = %76
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @get_leaf(%struct.gfs2_inode* %91, i32 %92, %struct.buffer_head** %10)
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %62, label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = call %struct.gfs2_dirent* @ERR_PTR(i32 %102)
  br label %105

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %101
  %106 = phi %struct.gfs2_dirent* [ %103, %101 ], [ null, %104 ]
  store %struct.gfs2_dirent* %106, %struct.gfs2_dirent** %5, align 8
  br label %145

107:                                              ; preds = %4
  %108 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %109 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %108, %struct.buffer_head** %10)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %13, align 4
  %114 = call %struct.gfs2_dirent* @ERR_PTR(i32 %113)
  store %struct.gfs2_dirent* %114, %struct.gfs2_dirent** %5, align 8
  br label %145

115:                                              ; preds = %107
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %118 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %121 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.qstr*, %struct.qstr** %7, align 8
  %125 = call %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %116, i64 %119, i32 %122, i32 %123, %struct.qstr* %124, i32* null)
  store %struct.gfs2_dirent* %125, %struct.gfs2_dirent** %11, align 8
  br label %126

126:                                              ; preds = %115, %75
  %127 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %128 = icmp eq %struct.gfs2_dirent* %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %131 = call i64 @IS_ERR(%struct.gfs2_dirent* %130)
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi i1 [ true, %126 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %140 = call i32 @brelse(%struct.buffer_head* %139)
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  br label %141

141:                                              ; preds = %138, %133
  %142 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %142, %struct.buffer_head** %143, align 8
  %144 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  store %struct.gfs2_dirent* %144, %struct.gfs2_dirent** %5, align 8
  br label %145

145:                                              ; preds = %141, %112, %105, %58, %38
  %146 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  ret %struct.gfs2_dirent* %146
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local %struct.gfs2_dirent* @ERR_PTR(i32) #1

declare dso_local i32 @get_first_leaf(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode*, i64, i32, i32, %struct.qstr*, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
