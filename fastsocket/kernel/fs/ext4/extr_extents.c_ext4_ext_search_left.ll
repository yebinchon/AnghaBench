; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_search_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_search_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, i32, %struct.ext4_extent_idx*, %struct.ext4_extent* }
%struct.ext4_extent_idx = type { i32 }
%struct.ext4_extent = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"path == NULL *logical %d!\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"EXT_FIRST_EXTENT != ex *logical %d ee_block %d!\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ix (%d) != EXT_FIRST_INDEX (%d) (depth %d)!\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"logical %d < ee_block %d + ee_len %d!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_search_left(%struct.inode* %0, %struct.ext4_ext_path* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ext4_extent_idx*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %15 = icmp eq %struct.ext4_ext_path* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.inode*, i8*, i32, ...) @EXT4_ERROR_INODE(%struct.inode* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %182

26:                                               ; preds = %4
  %27 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i64*, i64** %9, align 8
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %34, i32 0, i32 3
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %35, align 8
  %37 = icmp eq %struct.ext4_extent* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %182

39:                                               ; preds = %33, %26
  %40 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %40, i64 %42
  %44 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %43, i32 0, i32 3
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %44, align 8
  store %struct.ext4_extent* %45, %struct.ext4_extent** %11, align 8
  %46 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %47 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %51 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %141

55:                                               ; preds = %39
  %56 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %56, i64 %58
  %60 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(i32 %61)
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %64 = icmp ne %struct.ext4_extent* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %55
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %73 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = call i32 (%struct.inode*, i8*, i32, ...) @EXT4_ERROR_INODE(%struct.inode* %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %182

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %139, %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %12, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %140

84:                                               ; preds = %80
  %85 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i64 %87
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i32 0, i32 2
  %90 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %89, align 8
  store %struct.ext4_extent_idx* %90, %struct.ext4_extent_idx** %10, align 8
  %91 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %10, align 8
  %92 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %92, i64 %94
  %96 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(i32 %97)
  %99 = icmp ne %struct.ext4_extent_idx* %91, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %84
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %10, align 8
  %106 = icmp ne %struct.ext4_extent_idx* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %10, align 8
  %109 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  br label %112

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %107
  %113 = phi i32 [ %110, %107 ], [ 0, %111 ]
  %114 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %114, i64 %116
  %118 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(i32 %119)
  %121 = icmp ne %struct.ext4_extent_idx* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %112
  %123 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %123, i64 %125
  %127 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(i32 %128)
  %130 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  br label %133

132:                                              ; preds = %112
  br label %133

133:                                              ; preds = %132, %122
  %134 = phi i32 [ %131, %122 ], [ 0, %132 ]
  %135 = load i32, i32* %12, align 4
  %136 = call i32 (%struct.inode*, i8*, i32, ...) @EXT4_ERROR_INODE(%struct.inode* %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %134, i32 %135)
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %182

139:                                              ; preds = %84
  br label %80

140:                                              ; preds = %80
  store i32 0, i32* %5, align 4
  br label %182

141:                                              ; preds = %39
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %145 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %147, %148
  %150 = icmp slt i32 %143, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %141
  %155 = load %struct.inode*, %struct.inode** %6, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %159 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le32_to_cpu(i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = call i32 (%struct.inode*, i8*, i32, ...) @EXT4_ERROR_INODE(%struct.inode* %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %161, i32 %162)
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %182

166:                                              ; preds = %141
  %167 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %168 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le32_to_cpu(i32 %169)
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %170, %171
  %173 = sub nsw i32 %172, 1
  %174 = load i32*, i32** %8, align 8
  store i32 %173, i32* %174, align 4
  %175 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %176 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %175)
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %176, %178
  %180 = sub nsw i64 %179, 1
  %181 = load i64*, i64** %9, align 8
  store i64 %180, i64* %181, align 8
  store i32 0, i32* %5, align 4
  br label %182

182:                                              ; preds = %166, %154, %140, %133, %68, %38, %19
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i32, ...) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(i32) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(i32) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
