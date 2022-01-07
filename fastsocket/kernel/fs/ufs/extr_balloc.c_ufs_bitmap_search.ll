; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_balloc.c_ufs_bitmap_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_balloc.c_ufs_bitmap_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_cg_private_info = type { i32, i32, i32 }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.ufs_super_block_first = type { i32 }
%struct.ufs_cylinder_group = type { i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@ufs_bitmap_search.mask_arr = internal constant [9 x i32] [i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023], align 16
@ufs_bitmap_search.want_arr = internal constant [9 x i32] [i32 0, i32 2, i32 6, i32 14, i32 30, i32 62, i32 126, i32 254, i32 510], align 16
@.str = private unnamed_addr constant [35 x i8] c"ENTER, cg %u, goal %llu, count %u\0A\00", align 1
@ufs_fragtable_8fpb = common dso_local global i32 0, align 4
@ufs_fragtable_other = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ufs_bitmap_search\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"bitmap corrupted on cg %u, start %u, length %u, count %u, freeoff %u\0A\00", align 1
@INVBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"EXIT, result %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"block not in map on cg %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"EXIT (FAILED)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ufs_cg_private_info*, i32, i32)* @ufs_bitmap_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_bitmap_search(%struct.super_block* %0, %struct.ufs_cg_private_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ufs_cg_private_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ufs_sb_private_info*, align 8
  %11 = alloca %struct.ufs_super_block_first*, align 8
  %12 = alloca %struct.ufs_cylinder_group*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ufs_cg_private_info* %1, %struct.ufs_cg_private_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %24, align 8
  store %struct.ufs_sb_private_info* %25, %struct.ufs_sb_private_info** %10, align 8
  %26 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %27 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %30, i32 %31)
  %33 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %34 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %33)
  store %struct.ufs_super_block_first* %34, %struct.ufs_super_block_first** %11, align 8
  %35 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %36 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %35)
  %37 = call %struct.ufs_cylinder_group* @ubh_get_ucg(i32 %36)
  store %struct.ufs_cylinder_group* %37, %struct.ufs_cylinder_group** %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ufs_dtogd(%struct.ufs_sb_private_info* %41, i32 %42)
  %44 = ashr i32 %43, 3
  store i32 %44, i32* %13, align 4
  br label %50

45:                                               ; preds = %4
  %46 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %47 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 3
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %52 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 7
  %55 = ashr i32 %54, 3
  %56 = load i32, i32* %13, align 4
  %57 = sub i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %59 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %60 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %59)
  %61 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %62 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add i32 %63, %64
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %68 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %73

71:                                               ; preds = %50
  %72 = load i32, i32* @ufs_fragtable_8fpb, align 4
  br label %75

73:                                               ; preds = %50
  %74 = load i32, i32* @ufs_fragtable_other, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i32, i32* %9, align 4
  %78 = sub i32 %77, 1
  %79 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %80 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 7
  %83 = add i32 %78, %82
  %84 = shl i32 1, %83
  %85 = call i32 @ubh_scanc(%struct.ufs_sb_private_info* %58, i32 %60, i32 %65, i32 %66, i32 %76, i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %133

88:                                               ; preds = %75
  %89 = load i32, i32* %13, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %14, align 4
  %91 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %92 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %93 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %92)
  %94 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %95 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %99 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* @ufs_fragtable_8fpb, align 4
  br label %106

104:                                              ; preds = %88
  %105 = load i32, i32* @ufs_fragtable_other, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load i32, i32* %9, align 4
  %109 = sub i32 %108, 1
  %110 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %111 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 7
  %114 = add i32 %109, %113
  %115 = shl i32 1, %114
  %116 = call i32 @ubh_scanc(%struct.ufs_sb_private_info* %91, i32 %93, i32 %96, i32 %97, i32 %107, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %106
  %120 = load %struct.super_block*, %struct.super_block** %6, align 8
  %121 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %122 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %128 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @ufs_error(%struct.super_block* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %124, i32 %125, i32 %126, i32 %129)
  %131 = load i32, i32* @INVBLOCK, align 4
  store i32 %131, i32* %5, align 4
  br label %211

132:                                              ; preds = %106
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %132, %75
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = add i32 %134, %135
  %137 = load i32, i32* %15, align 4
  %138 = sub i32 %136, %137
  %139 = shl i32 %138, 3
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %142 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 8
  store i32 %144, i32* %20, align 4
  br label %145

145:                                              ; preds = %197, %133
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %20, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %203

149:                                              ; preds = %145
  %150 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %151 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %150)
  %152 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %153 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @ubh_blkmap(i32 %151, i32 %154, i32 %155)
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %18, align 4
  %158 = shl i32 %157, 1
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %9, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [9 x i32], [9 x i32]* @ufs_bitmap_search.mask_arr, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %9, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [9 x i32], [9 x i32]* @ufs_bitmap_search.want_arr, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %167

167:                                              ; preds = %193, %149
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %170 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %9, align 4
  %173 = sub i32 %171, %172
  %174 = icmp ule i32 %168, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %167
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* %19, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* %17, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %183)
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %16, align 4
  %187 = add i32 %185, %186
  store i32 %187, i32* %5, align 4
  br label %211

188:                                              ; preds = %175
  %189 = load i32, i32* %19, align 4
  %190 = shl i32 %189, 1
  store i32 %190, i32* %19, align 4
  %191 = load i32, i32* %17, align 4
  %192 = shl i32 %191, 1
  store i32 %192, i32* %17, align 4
  br label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %16, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %167

196:                                              ; preds = %167
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %199 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %21, align 4
  br label %145

203:                                              ; preds = %145
  %204 = load %struct.super_block*, %struct.super_block** %6, align 8
  %205 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %7, align 8
  %206 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @ufs_error(%struct.super_block* %204, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %207)
  %209 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %210 = load i32, i32* @INVBLOCK, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %203, %181, %119
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_cylinder_group* @ubh_get_ucg(i32) #1

declare dso_local i32 @UCPI_UBH(%struct.ufs_cg_private_info*) #1

declare dso_local i32 @ufs_dtogd(%struct.ufs_sb_private_info*, i32) #1

declare dso_local i32 @ubh_scanc(%struct.ufs_sb_private_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ufs_error(%struct.super_block*, i8*, i8*, i32, ...) #1

declare dso_local i32 @ubh_blkmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
