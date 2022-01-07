; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_leaf_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_leaf_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.ext4_extent* }
%struct.ext4_extent = type { i8*, i8* }

@.str = private unnamed_addr constant [87 x i8] c"new_ext_end(%u) should be less than or equal to oext->ee_block(%u) + oext_alen(%d) - 1\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i32*)* @mext_leaf_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_leaf_block(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, %struct.ext4_extent* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_ext_path*, align 8
  %9 = alloca %struct.ext4_extent*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca %struct.ext4_extent*, align 8
  %13 = alloca %struct.ext4_extent*, align 8
  %14 = alloca %struct.ext4_extent*, align 8
  %15 = alloca %struct.ext4_extent, align 8
  %16 = alloca %struct.ext4_extent, align 8
  %17 = alloca %struct.ext4_extent, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %8, align 8
  store %struct.ext4_extent* %3, %struct.ext4_extent** %9, align 8
  store i32* %4, i32** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @ext_depth(%struct.inode* %25)
  store i32 %26, i32* %23, align 4
  %27 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %28 = load i32, i32* %23, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %27, i64 %29
  %31 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %30, i32 0, i32 1
  %32 = load %struct.ext4_extent*, %struct.ext4_extent** %31, align 8
  store %struct.ext4_extent* %32, %struct.ext4_extent** %11, align 8
  store %struct.ext4_extent* %32, %struct.ext4_extent** %13, align 8
  store %struct.ext4_extent* %32, %struct.ext4_extent** %12, align 8
  %33 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %34 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %33)
  store i32 %34, i32* %20, align 4
  %35 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %17, i32 0, i32 1
  store i8* null, i8** %35, align 8
  %36 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  store i8* null, i8** %36, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %42 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %41)
  %43 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %15, i64 %42)
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %45 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %15)
  store i32 %48, i32* %21, align 4
  %49 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @le32_to_cpu(i8* %50)
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  %55 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %15)
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = sub nsw i64 %58, 1
  store i64 %59, i64* %19, align 8
  %60 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %61 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @le32_to_cpu(i8* %62)
  %64 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @le32_to_cpu(i8* %65)
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %5
  %69 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @le32_to_cpu(i8* %70)
  %72 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %73 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @le32_to_cpu(i8* %74)
  %76 = load i32, i32* %20, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp slt i32 %71, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @le32_to_cpu(i8* %81)
  %83 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %84 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @le32_to_cpu(i8* %85)
  %87 = sub nsw i32 %82, %86
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %91 = call i32 @copy_extent_status(%struct.ext4_extent* %90, %struct.ext4_extent* %16)
  br label %122

92:                                               ; preds = %68, %5
  %93 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %94 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %94, i64 %96
  %98 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(i32 %99)
  %101 = icmp ugt %struct.ext4_extent* %93, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %92
  %103 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %104 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %103, i64 -1
  store %struct.ext4_extent* %104, %struct.ext4_extent** %14, align 8
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %107 = call i64 @ext4_can_extents_be_merged(%struct.inode* %105, %struct.ext4_extent* %106, %struct.ext4_extent* %15)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %110, %struct.ext4_extent** %12, align 8
  %111 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %112 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %111)
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %112, %113
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  store i8* %115, i8** %116, align 8
  %117 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %118 = call i32 @copy_extent_status(%struct.ext4_extent* %117, %struct.ext4_extent* %16)
  %119 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %15, i32 0, i32 1
  store i8* null, i8** %119, align 8
  br label %120

120:                                              ; preds = %109, %102
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %79
  %123 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %124 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @le32_to_cpu(i8* %125)
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %126, %127
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %18, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %122
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %138 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @le32_to_cpu(i8* %139)
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @ext4_error(i32 %135, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %140, i32 %141)
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %24, align 4
  br label %203

145:                                              ; preds = %122
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %147 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @le32_to_cpu(i8* %148)
  %150 = load i32, i32* %18, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %196

152:                                              ; preds = %145
  %153 = load i32, i32* %18, align 4
  %154 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %155 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @le32_to_cpu(i8* %156)
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %157, %158
  %160 = sub nsw i32 %159, 1
  %161 = icmp slt i32 %153, %160
  br i1 %161, label %162, label %196

162:                                              ; preds = %152
  %163 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %164 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @le32_to_cpu(i8* %165)
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %166, %167
  %169 = sub nsw i32 %168, 1
  %170 = load i32, i32* %18, align 4
  %171 = sub nsw i32 %169, %170
  %172 = call i8* @cpu_to_le16(i32 %171)
  %173 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %17, i32 0, i32 1
  store i8* %172, i8** %173, align 8
  %174 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %175 = call i32 @copy_extent_status(%struct.ext4_extent* %174, %struct.ext4_extent* %17)
  %176 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %17)
  store i32 %176, i32* %22, align 4
  %177 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %178 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %177)
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = load i32, i32* %22, align 4
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %181, %183
  %185 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %17, i64 %184)
  %186 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %187 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @le32_to_cpu(i8* %188)
  %190 = load i32, i32* %20, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32, i32* %22, align 4
  %193 = sub nsw i32 %191, %192
  %194 = call i8* @cpu_to_le32(i32 %193)
  %195 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %17, i32 0, i32 0
  store i8* %194, i8** %195, align 8
  br label %196

196:                                              ; preds = %162, %152, %145
  %197 = load i32*, i32** %6, align 8
  %198 = load %struct.inode*, %struct.inode** %7, align 8
  %199 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %200 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %201 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %202 = call i32 @mext_insert_extents(i32* %197, %struct.inode* %198, %struct.ext4_ext_path* %199, %struct.ext4_extent* %200, %struct.ext4_extent* %201, %struct.ext4_extent* %16, %struct.ext4_extent* %15, %struct.ext4_extent* %17)
  store i32 %202, i32* %24, align 4
  br label %203

203:                                              ; preds = %196, %132
  %204 = load i32, i32* %24, align 4
  ret i32 %204
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @copy_extent_status(%struct.ext4_extent*, %struct.ext4_extent*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(i32) #1

declare dso_local i64 @ext4_can_extents_be_merged(%struct.inode*, %struct.ext4_extent*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_error(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mext_insert_extents(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
