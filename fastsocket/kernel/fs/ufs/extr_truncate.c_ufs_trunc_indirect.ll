; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_trunc_indirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_trunc_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i64, i32, i32 }
%struct.ufs_buffer_head = type { i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [36 x i8] c"ENTER: ino %lu, offset %llu, p: %p\0A\00", align 1
@DIRECT_BLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"EXIT: ino %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i8*)* @ufs_trunc_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_trunc_indirect(%struct.inode* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ufs_sb_private_info*, align 8
  %10 = alloca %struct.ufs_buffer_head*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21, i8* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  store %struct.super_block* %31, %struct.super_block** %8, align 8
  %32 = load %struct.super_block*, %struct.super_block** %8, align 8
  %33 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %34, align 8
  store %struct.ufs_sb_private_info* %35, %struct.ufs_sb_private_info** %9, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %36 = load %struct.super_block*, %struct.super_block** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %36, i8* %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %211

42:                                               ; preds = %3
  %43 = load %struct.super_block*, %struct.super_block** %8, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %46 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.ufs_buffer_head* @ubh_bread(%struct.super_block* %43, i64 %44, i32 %47)
  store %struct.ufs_buffer_head* %48, %struct.ufs_buffer_head** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.super_block*, %struct.super_block** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %50, i8* %51)
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %56 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %55)
  store i32 1, i32* %4, align 4
  br label %211

57:                                               ; preds = %42
  %58 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %59 = icmp ne %struct.ufs_buffer_head* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %61, i8* %62)
  store i32 0, i32* %4, align 4
  br label %211

64:                                               ; preds = %57
  %65 = load i64, i64* @DIRECT_BLOCK, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* @DIRECT_BLOCK, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub nsw i64 %69, %70
  br label %73

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i64 [ %71, %68 ], [ 0, %72 ]
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %135, %73
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %79 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %138

82:                                               ; preds = %76
  %83 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %84 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %83, %struct.ufs_buffer_head* %84, i64 %85)
  store i8* %86, i8** %11, align 8
  %87 = load %struct.super_block*, %struct.super_block** %8, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %87, i8* %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %82
  br label %135

93:                                               ; preds = %82
  %94 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %94, i8* %95)
  %97 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %98 = call i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head* %97)
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %15, align 8
  %103 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %104 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %16, align 4
  br label %132

106:                                              ; preds = %93
  %107 = load i32, i32* %16, align 4
  %108 = icmp ugt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i32, i32* %16, align 4
  %113 = zext i32 %112 to i64
  %114 = sub nsw i64 %111, %113
  %115 = icmp eq i64 %110, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %118 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %16, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %16, align 4
  br label %131

122:                                              ; preds = %109, %106
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @ufs_free_blocks(%struct.inode* %123, i64 %124, i32 %125)
  %127 = load i64, i64* %12, align 8
  store i64 %127, i64* %15, align 8
  %128 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %129 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %122, %116
  br label %132

132:                                              ; preds = %131, %101
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = call i32 @mark_inode_dirty(%struct.inode* %133)
  br label %135

135:                                              ; preds = %132, %92
  %136 = load i64, i64* %14, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %14, align 8
  br label %76

138:                                              ; preds = %76
  %139 = load i32, i32* %16, align 4
  %140 = icmp ugt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.inode*, %struct.inode** %5, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @ufs_free_blocks(%struct.inode* %142, i64 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %138
  store i64 0, i64* %14, align 8
  br label %147

147:                                              ; preds = %163, %146
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %150 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %147
  %154 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %155 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %156 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %157 = load i64, i64* %14, align 8
  %158 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %155, %struct.ufs_buffer_head* %156, i64 %157)
  %159 = call i32 @ufs_is_data_ptr_zero(%struct.ufs_sb_private_info* %154, i8* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %153
  br label %166

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %14, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %14, align 8
  br label %147

166:                                              ; preds = %161, %147
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %169 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sge i64 %167, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %166
  %173 = load %struct.super_block*, %struct.super_block** %8, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %173, i8* %174)
  store i64 %175, i64* %12, align 8
  %176 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %176, i8* %177)
  %179 = load %struct.inode*, %struct.inode** %5, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %182 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ufs_free_blocks(%struct.inode* %179, i64 %180, i32 %183)
  %185 = load %struct.inode*, %struct.inode** %5, align 8
  %186 = call i32 @mark_inode_dirty(%struct.inode* %185)
  %187 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %188 = call i32 @ubh_bforget(%struct.ufs_buffer_head* %187)
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %10, align 8
  br label %189

189:                                              ; preds = %172, %166
  %190 = load %struct.inode*, %struct.inode** %5, align 8
  %191 = call i64 @IS_SYNC(%struct.inode* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %195 = icmp ne %struct.ufs_buffer_head* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %198 = call i64 @ubh_buffer_dirty(%struct.ufs_buffer_head* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %202 = call i32 @ubh_sync_block(%struct.ufs_buffer_head* %201)
  br label %203

203:                                              ; preds = %200, %196, %193, %189
  %204 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %205 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %204)
  %206 = load %struct.inode*, %struct.inode** %5, align 8
  %207 = getelementptr inbounds %struct.inode, %struct.inode* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %17, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %203, %60, %54, %41
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @UFSD(i8*, i32, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local %struct.ufs_buffer_head* @ubh_bread(%struct.super_block*, i64, i32) #1

declare dso_local i32 @ubh_brelse(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info*, i8*) #1

declare dso_local i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i64) #1

declare dso_local i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ufs_free_blocks(%struct.inode*, i64, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ufs_is_data_ptr_zero(%struct.ufs_sb_private_info*, i8*) #1

declare dso_local i32 @ubh_bforget(%struct.ufs_buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i64 @ubh_buffer_dirty(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ubh_sync_block(%struct.ufs_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
