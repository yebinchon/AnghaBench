; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_split_extent_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_split_extent_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i8*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"ext4_split_extents_at: inode %lu, logicalblock %llu\0A\00", align 1
@EXT4_EXT_MARK_UNINIT2 = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DIO = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNINIT1 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXT4_EXT_MAY_ZEROOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, i64, i32, i32)* @ext4_split_extent_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_split_extent_at(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ext4_extent*, align 8
  %17 = alloca %struct.ext4_extent, align 8
  %18 = alloca %struct.ext4_extent, align 8
  %19 = alloca %struct.ext4_extent*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.ext4_extent* null, %struct.ext4_extent** %19, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @ext_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26)
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %30 = call i32 @ext4_ext_show_leaf(%struct.inode* %28, %struct.ext4_ext_path* %29)
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = call i32 @ext_depth(%struct.inode* %31)
  store i32 %32, i32* %21, align 4
  %33 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %34 = load i32, i32* %21, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %33, i64 %35
  %37 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %36, i32 0, i32 0
  %38 = load %struct.ext4_extent*, %struct.ext4_extent** %37, align 8
  store %struct.ext4_extent* %38, %struct.ext4_extent** %16, align 8
  %39 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %40 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @le32_to_cpu(i32 %41)
  store i64 %42, i64* %15, align 8
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %44 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %43)
  store i32 %44, i32* %20, align 4
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %15, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %49 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %48)
  %50 = add nsw i64 %47, %49
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %15, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %6
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i32, i32* %20, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = icmp sge i64 %55, %59
  br label %61

61:                                               ; preds = %54, %6
  %62 = phi i1 [ true, %6 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %68 = load i32, i32* %21, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %67, i64 %69
  %71 = call i32 @ext4_ext_get_access(i32* %65, %struct.inode* %66, %struct.ext4_ext_path* %70)
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %22, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %204

75:                                               ; preds = %61
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @EXT4_EXT_MARK_UNINIT2, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %86 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %85)
  br label %90

87:                                               ; preds = %79
  %88 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %89 = call i32 @ext4_ext_mark_initialized(%struct.ext4_extent* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @EXT4_GET_BLOCKS_DIO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %98 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %99 = call i32 @ext4_ext_try_to_merge(%struct.inode* %96, %struct.ext4_ext_path* %97, %struct.ext4_extent* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %104 = load i32, i32* %21, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %103, i64 %105
  %107 = call i32 @ext4_ext_dirty(i32* %101, %struct.inode* %102, %struct.ext4_ext_path* %106)
  store i32 %107, i32* %22, align 4
  br label %204

108:                                              ; preds = %75
  %109 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %110 = call i32 @memcpy(%struct.ext4_extent* %18, %struct.ext4_extent* %109, i32 16)
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %15, align 8
  %113 = sub nsw i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %117 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @EXT4_EXT_MARK_UNINIT1, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %108
  %123 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %124 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %123)
  br label %125

125:                                              ; preds = %122, %108
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %129 = load i32, i32* %21, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %128, i64 %130
  %132 = call i32 @ext4_ext_dirty(i32* %126, %struct.inode* %127, %struct.ext4_ext_path* %131)
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %209

136:                                              ; preds = %125
  store %struct.ext4_extent* %17, %struct.ext4_extent** %19, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @cpu_to_le32(i64 %137)
  %139 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %140 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %20, align 4
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %15, align 8
  %145 = sub nsw i64 %143, %144
  %146 = sub nsw i64 %142, %145
  %147 = trunc i64 %146 to i32
  %148 = call i8* @cpu_to_le16(i32 %147)
  %149 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %150 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %152 = load i64, i64* %14, align 8
  %153 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %151, i64 %152)
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @EXT4_EXT_MARK_UNINIT2, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %136
  %159 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %160 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %159)
  br label %161

161:                                              ; preds = %158, %136
  %162 = load i32*, i32** %8, align 8
  %163 = load %struct.inode*, %struct.inode** %9, align 8
  %164 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @ext4_ext_insert_extent(i32* %162, %struct.inode* %163, %struct.ext4_ext_path* %164, %struct.ext4_extent* %17, i32 %165)
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* @ENOSPC, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %198

171:                                              ; preds = %161
  %172 = load i32, i32* @EXT4_EXT_MAY_ZEROOUT, align 4
  %173 = load i32, i32* %12, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %171
  %177 = load %struct.inode*, %struct.inode** %9, align 8
  %178 = call i32 @ext4_ext_zeroout(%struct.inode* %177, %struct.ext4_extent* %18)
  store i32 %178, i32* %22, align 4
  %179 = load i32, i32* %22, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %209

182:                                              ; preds = %176
  %183 = load i32, i32* %20, align 4
  %184 = call i8* @cpu_to_le16(i32 %183)
  %185 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %186 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load %struct.inode*, %struct.inode** %9, align 8
  %188 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %189 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %190 = call i32 @ext4_ext_try_to_merge(%struct.inode* %187, %struct.ext4_ext_path* %188, %struct.ext4_extent* %189)
  %191 = load i32*, i32** %8, align 8
  %192 = load %struct.inode*, %struct.inode** %9, align 8
  %193 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %194 = load i32, i32* %21, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %193, i64 %195
  %197 = call i32 @ext4_ext_dirty(i32* %191, %struct.inode* %192, %struct.ext4_ext_path* %196)
  store i32 %197, i32* %22, align 4
  br label %204

198:                                              ; preds = %171, %161
  %199 = load i32, i32* %22, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %209

202:                                              ; preds = %198
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203, %182, %100, %74
  %205 = load %struct.inode*, %struct.inode** %9, align 8
  %206 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %207 = call i32 @ext4_ext_show_leaf(%struct.inode* %205, %struct.ext4_ext_path* %206)
  %208 = load i32, i32* %22, align 4
  store i32 %208, i32* %7, align 4
  br label %222

209:                                              ; preds = %201, %181, %135
  %210 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %213 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = load %struct.inode*, %struct.inode** %9, align 8
  %216 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %217 = load i32, i32* %21, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %216, i64 %218
  %220 = call i32 @ext4_ext_dirty(i32* %214, %struct.inode* %215, %struct.ext4_ext_path* %219)
  %221 = load i32, i32* %22, align 4
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %209, %204
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local i32 @ext_debug(i8*, i32, i64) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_mark_initialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_try_to_merge(%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @memcpy(%struct.ext4_extent*, %struct.ext4_extent*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i32 @ext4_ext_insert_extent(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_zeroout(%struct.inode*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
