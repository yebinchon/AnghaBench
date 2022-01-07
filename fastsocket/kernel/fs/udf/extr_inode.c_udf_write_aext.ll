; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_write_aext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_write_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.kernel_lb_addr = type { i32 }
%struct.short_ad = type { i8*, i8* }
%struct.long_ad = type { i32, i32, i8* }
%struct.udf_inode_info = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.allocExtDesc = type { i32 }
%struct.TYPE_6__ = type { i32 }

@UDF_FLAG_STRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_write_aext(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.short_ad*, align 8
  %15 = alloca %struct.long_ad*, align 8
  %16 = alloca %struct.udf_inode_info*, align 8
  %17 = alloca %struct.allocExtDesc*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_position* %1, %struct.extent_position** %8, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %18)
  store %struct.udf_inode_info* %19, %struct.udf_inode_info** %16, align 8
  %20 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %21 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %5
  %25 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %26 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %30 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %33)
  %35 = sub nsw i32 %32, %34
  %36 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %37 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %13, align 8
  br label %52

41:                                               ; preds = %5
  %42 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %43 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %48 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32* %51, i32** %13, align 8
  br label %52

52:                                               ; preds = %41, %24
  %53 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %54 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %86 [
    i32 128, label %56
    i32 129, label %69
  ]

56:                                               ; preds = %52
  %57 = load i32*, i32** %13, align 8
  %58 = bitcast i32* %57 to %struct.short_ad*
  store %struct.short_ad* %58, %struct.short_ad** %14, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.short_ad*, %struct.short_ad** %14, align 8
  %62 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %64 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.short_ad*, %struct.short_ad** %14, align 8
  %68 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  store i32 16, i32* %12, align 4
  br label %87

69:                                               ; preds = %52
  %70 = load i32*, i32** %13, align 8
  %71 = bitcast i32* %70 to %struct.long_ad*
  store %struct.long_ad* %71, %struct.long_ad** %15, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.long_ad*, %struct.long_ad** %15, align 8
  %75 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %77 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cpu_to_lelb(i32 %78)
  %80 = load %struct.long_ad*, %struct.long_ad** %15, align 8
  %81 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.long_ad*, %struct.long_ad** %15, align 8
  %83 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memset(i32 %84, i32 0, i32 4)
  store i32 16, i32* %12, align 4
  br label %87

86:                                               ; preds = %52
  store i32 -1, i32* %6, align 4
  br label %146

87:                                               ; preds = %69, %56
  %88 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %89 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = icmp ne %struct.TYPE_5__* %90, null
  br i1 %91, label %92, label %131

92:                                               ; preds = %87
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %97 = call i32 @UDF_QUERY_FLAG(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.TYPE_6__* @UDF_SB(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 513
  br i1 %106, label %107, label %125

107:                                              ; preds = %99, %92
  %108 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %109 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = bitcast i32* %112 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %113, %struct.allocExtDesc** %17, align 8
  %114 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %115 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.allocExtDesc*, %struct.allocExtDesc** %17, align 8
  %120 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @le32_to_cpu(i32 %121)
  %123 = add i64 %122, 4
  %124 = call i32 @udf_update_tag(i32* %118, i64 %123)
  br label %125

125:                                              ; preds = %107, %99
  %126 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %127 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load %struct.inode*, %struct.inode** %7, align 8
  %130 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %128, %struct.inode* %129)
  br label %134

131:                                              ; preds = %87
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = call i32 @mark_inode_dirty(%struct.inode* %132)
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %140 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %134
  %144 = load i32, i32* %10, align 4
  %145 = ashr i32 %144, 30
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %143, %86
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @UDF_QUERY_FLAG(i32, i32) #1

declare dso_local %struct.TYPE_6__* @UDF_SB(i32) #1

declare dso_local i32 @udf_update_tag(i32*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_5__*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
