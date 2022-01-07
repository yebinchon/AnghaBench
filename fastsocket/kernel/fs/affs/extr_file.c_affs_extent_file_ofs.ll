; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_extent_file_ofs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_extent_file_ofs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"AFFS: extent_file(%u, %d)\0A\00", align 1
@T_DATA = common dso_local global i32 0, align 4
@BH_New = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"extent_file_ofs\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"next block already set for %d (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @affs_extent_file_ofs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_extent_file_ofs(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = call %struct.TYPE_4__* @AFFS_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call %struct.TYPE_5__* @AFFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %93

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.buffer_head* @affs_bread_ino(%struct.inode* %40, i32 %41, i32 0)
  store %struct.buffer_head* %42, %struct.buffer_head** %7, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = call i64 @IS_ERR(%struct.buffer_head* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = call i32 @PTR_ERR(%struct.buffer_head* %47)
  store i32 %48, i32* %3, align 4
  br label %228

49:                                               ; preds = %39
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @min(i32 %52, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sgt i32 %63, %64
  br label %66

66:                                               ; preds = %62, %49
  %67 = phi i1 [ true, %49 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %71 = call i64 @AFFS_DATA(%struct.buffer_head* %70)
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @memset(i64 %74, i32 0, i32 %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %78 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @be32_add_cpu(i8** %79, i32 %80)
  %82 = load %struct.super_block*, %struct.super_block** %6, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %84 = call i32 @affs_fix_checksum(%struct.super_block* %82, %struct.buffer_head* %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %85, %struct.inode* %86)
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %109

93:                                               ; preds = %2
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call %struct.buffer_head* @affs_bread_ino(%struct.inode* %97, i32 %99, i32 0)
  store %struct.buffer_head* %100, %struct.buffer_head** %7, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %102 = call i64 @IS_ERR(%struct.buffer_head* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %106 = call i32 @PTR_ERR(%struct.buffer_head* %105)
  store i32 %106, i32* %3, align 4
  br label %228

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %93
  br label %109

109:                                              ; preds = %108, %66
  br label %110

110:                                              ; preds = %204, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %210

114:                                              ; preds = %110
  %115 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %115, %struct.buffer_head** %8, align 8
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call %struct.buffer_head* @affs_getzeroblk_ino(%struct.inode* %116, i32 %117)
  store %struct.buffer_head* %118, %struct.buffer_head** %7, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %120 = call i64 @IS_ERR(%struct.buffer_head* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %219

123:                                              ; preds = %114
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i32 @min(i32 %124, i32 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp sgt i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @BUG_ON(i32 %132)
  %134 = load i32, i32* @T_DATA, align 4
  %135 = call i8* @cpu_to_be32(i32 %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %137 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %136)
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  store i8* %135, i8** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @cpu_to_be32(i32 %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %144 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %143)
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  store i8* %142, i8** %145, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i8* @cpu_to_be32(i32 %146)
  %148 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %149 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  store i8* %147, i8** %150, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i8* @cpu_to_be32(i32 %151)
  %153 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %154 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %153)
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i8* %152, i8** %155, align 8
  %156 = load %struct.super_block*, %struct.super_block** %6, align 8
  %157 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %158 = call i32 @affs_fix_checksum(%struct.super_block* %156, %struct.buffer_head* %157)
  %159 = load i64, i64* @BH_New, align 8
  %160 = shl i64 1, %159
  %161 = xor i64 %160, -1
  %162 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = and i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %167 = load %struct.inode*, %struct.inode** %4, align 8
  %168 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %166, %struct.inode* %167)
  %169 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %170 = icmp ne %struct.buffer_head* %169, null
  br i1 %170, label %171, label %204

171:                                              ; preds = %123
  %172 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %173 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %172)
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @be32_to_cpu(i8* %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %171
  %180 = load %struct.super_block*, %struct.super_block** %6, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @affs_warning(%struct.super_block* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %179, %171
  %185 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %186 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @cpu_to_be32(i32 %187)
  %189 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %190 = call %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head* %189)
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  store i8* %188, i8** %191, align 8
  %192 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %193 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %194 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i32 @affs_adjust_checksum(%struct.buffer_head* %192, i32 %197)
  %199 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %200 = load %struct.inode*, %struct.inode** %4, align 8
  %201 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %199, %struct.inode* %200)
  %202 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %203 = call i32 @affs_brelse(%struct.buffer_head* %202)
  br label %204

204:                                              ; preds = %184, %123
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %110

210:                                              ; preds = %110
  %211 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %212 = call i32 @affs_brelse(%struct.buffer_head* %211)
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.inode*, %struct.inode** %4, align 8
  %215 = call %struct.TYPE_5__* @AFFS_I(%struct.inode* %214)
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 4
  %217 = load %struct.inode*, %struct.inode** %4, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 1
  store i32 %213, i32* %218, align 4
  store i32 0, i32* %3, align 4
  br label %228

219:                                              ; preds = %122
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.inode*, %struct.inode** %4, align 8
  %222 = call %struct.TYPE_5__* @AFFS_I(%struct.inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 4
  %224 = load %struct.inode*, %struct.inode** %4, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 1
  store i32 %220, i32* %225, align 4
  %226 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %227 = call i32 @PTR_ERR(%struct.buffer_head* %226)
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %219, %210, %104, %46
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @AFFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_5__* @AFFS_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @affs_bread_ino(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @AFFS_DATA(%struct.buffer_head*) #1

declare dso_local i32 @be32_add_cpu(i8**, i32) #1

declare dso_local %struct.TYPE_6__* @AFFS_DATA_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local %struct.buffer_head* @affs_getzeroblk_ino(%struct.inode*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @affs_warning(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local i32 @affs_adjust_checksum(%struct.buffer_head*, i32) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
