; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_catalog.c_hfs_cat_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_catalog.c_hfs_cat_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i8*, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, i32 }
%union.hfs_cat_rec = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DBG_CAT_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rename_cat: %u - %lu,%s - %lu,%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i8* null, align 8
@HFS_CDR_FIL = common dso_local global i32 0, align 4
@HFS_FIL_THD = common dso_local global i32 0, align 4
@HFS_CDR_FTH = common dso_local global i32 0, align 4
@HFS_CDR_THD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_cat_move(i32 %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3, %struct.qstr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.hfs_find_data, align 4
  %13 = alloca %struct.hfs_find_data, align 4
  %14 = alloca %union.hfs_cat_rec, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store %struct.qstr* %4, %struct.qstr** %10, align 8
  %18 = load i32, i32* @DBG_CAT_MOD, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qstr*, %struct.qstr** %8, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.qstr*, %struct.qstr** %10, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dprint(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %11, align 8
  %36 = load %struct.super_block*, %struct.super_block** %11, align 8
  %37 = call %struct.TYPE_4__* @HFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hfs_find_init(i32 %39, %struct.hfs_find_data* %12)
  %41 = bitcast %struct.hfs_find_data* %13 to i8*
  %42 = bitcast %struct.hfs_find_data* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 16, i1 false)
  %43 = load %struct.super_block*, %struct.super_block** %11, align 8
  %44 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.qstr*, %struct.qstr** %8, align 8
  %50 = call i32 @hfs_cat_build_key(%struct.super_block* %43, i32 %45, i32 %48, %struct.qstr* %49)
  %51 = call i32 @hfs_brec_find(%struct.hfs_find_data* %12)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %5
  br label %207

55:                                               ; preds = %5
  %56 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ugt i64 %58, 4
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %55
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %17, align 4
  br label %207

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @hfs_bnode_read(i32 %69, %union.hfs_cat_rec* %14, i32 %71, i32 %73)
  %75 = load %struct.super_block*, %struct.super_block** %11, align 8
  %76 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.qstr*, %struct.qstr** %10, align 8
  %82 = call i32 @hfs_cat_build_key(%struct.super_block* %75, i32 %77, i32 %80, %struct.qstr* %81)
  %83 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %67
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @EEXIST, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %207

95:                                               ; preds = %67
  %96 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %13, %union.hfs_cat_rec* %14, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %207

102:                                              ; preds = %95
  %103 = load %struct.inode*, %struct.inode** %9, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.inode*, %struct.inode** %9, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 2
  store i8* %107, i8** %111, align 8
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = call i32 @mark_inode_dirty(%struct.inode* %112)
  %114 = load %struct.super_block*, %struct.super_block** %11, align 8
  %115 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.qstr*, %struct.qstr** %8, align 8
  %121 = call i32 @hfs_cat_build_key(%struct.super_block* %114, i32 %116, i32 %119, %struct.qstr* %120)
  %122 = call i32 @hfs_brec_find(%struct.hfs_find_data* %12)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %102
  br label %207

126:                                              ; preds = %102
  %127 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %12)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %207

131:                                              ; preds = %126
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 8
  %136 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %137 = load %struct.inode*, %struct.inode** %7, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %7, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 2
  store i8* %136, i8** %140, align 8
  %141 = load %struct.inode*, %struct.inode** %7, align 8
  %142 = call i32 @mark_inode_dirty(%struct.inode* %141)
  %143 = bitcast %union.hfs_cat_rec* %14 to i32*
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @HFS_CDR_FIL, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %131
  %149 = bitcast %union.hfs_cat_rec* %14 to %struct.TYPE_3__*
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @HFS_FIL_THD, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  br label %207

156:                                              ; preds = %148, %131
  %157 = load %struct.super_block*, %struct.super_block** %11, align 8
  %158 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @hfs_cat_build_key(%struct.super_block* %157, i32 %159, i32 %160, %struct.qstr* null)
  %162 = call i32 @hfs_brec_find(%struct.hfs_find_data* %12)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %207

166:                                              ; preds = %156
  %167 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %12)
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %207

171:                                              ; preds = %166
  %172 = load %struct.super_block*, %struct.super_block** %11, align 8
  %173 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @hfs_cat_build_key(%struct.super_block* %172, i32 %174, i32 %175, %struct.qstr* null)
  %177 = load %struct.super_block*, %struct.super_block** %11, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @HFS_CDR_FIL, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %171
  %182 = load i32, i32* @HFS_CDR_FTH, align 4
  br label %185

183:                                              ; preds = %171
  %184 = load i32, i32* @HFS_CDR_THD, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %187 = load %struct.inode*, %struct.inode** %9, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.qstr*, %struct.qstr** %10, align 8
  %191 = call i32 @hfs_cat_build_thread(%struct.super_block* %177, %union.hfs_cat_rec* %14, i32 %186, i32 %189, %struct.qstr* %190)
  store i32 %191, i32* %15, align 4
  %192 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* @ENOENT, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %185
  %198 = load i32, i32* %17, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @EEXIST, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %200, %197
  br label %207

204:                                              ; preds = %185
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %13, %union.hfs_cat_rec* %14, i32 %205)
  store i32 %206, i32* %17, align 4
  br label %207

207:                                              ; preds = %204, %203, %170, %165, %155, %130, %125, %101, %94, %64, %54
  %208 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @hfs_bnode_put(i32 %209)
  %211 = call i32 @hfs_find_exit(%struct.hfs_find_data* %12)
  %212 = load i32, i32* %17, align 4
  ret i32 %212
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_4__* @HFS_SB(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hfs_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %union.hfs_cat_rec*, i32, i32) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, %union.hfs_cat_rec*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_cat_build_thread(%struct.super_block*, %union.hfs_cat_rec*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfs_bnode_put(i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
