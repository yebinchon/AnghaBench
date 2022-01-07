; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_catalog.c_hfsplus_rename_cat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_catalog.c_hfsplus_rename_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i8*, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DBG_CAT_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rename_cat: %u - %lu,%s - %lu,%s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_rename_cat(i32 %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3, %struct.qstr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.hfs_find_data, align 4
  %13 = alloca %struct.hfs_find_data, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store %struct.qstr* %4, %struct.qstr** %10, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* @DBG_CAT_MOD, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.qstr*, %struct.qstr** %8, align 8
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.qstr*, %struct.qstr** %10, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dprint(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  store %struct.super_block* %36, %struct.super_block** %11, align 8
  %37 = load %struct.super_block*, %struct.super_block** %11, align 8
  %38 = call i32 @HFSPLUS_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hfs_find_init(i32 %41, %struct.hfs_find_data* %12)
  %43 = bitcast %struct.hfs_find_data* %13 to i8*
  %44 = bitcast %struct.hfs_find_data* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 16, i1 false)
  %45 = load %struct.super_block*, %struct.super_block** %11, align 8
  %46 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qstr*, %struct.qstr** %8, align 8
  %52 = call i32 @hfsplus_cat_build_key(%struct.super_block* %45, i32 %47, i32 %50, %struct.qstr* %51)
  %53 = call i32 @hfs_brec_find(%struct.hfs_find_data* %12)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %5
  br label %180

57:                                               ; preds = %5
  %58 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hfs_bnode_read(i32 %59, i32* %14, i32 %61, i32 %63)
  %65 = load %struct.super_block*, %struct.super_block** %11, align 8
  %66 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.qstr*, %struct.qstr** %10, align 8
  %72 = call i32 @hfsplus_cat_build_key(%struct.super_block* %65, i32 %67, i32 %70, %struct.qstr* %71)
  %73 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %57
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @EEXIST, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %180

85:                                               ; preds = %57
  %86 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %13, i32* %14, i32 %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %180

92:                                               ; preds = %85
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.inode*, %struct.inode** %9, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 2
  store i8* %97, i8** %101, align 8
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = call i32 @mark_inode_dirty(%struct.inode* %102)
  %104 = load %struct.super_block*, %struct.super_block** %11, align 8
  %105 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.qstr*, %struct.qstr** %8, align 8
  %111 = call i32 @hfsplus_cat_build_key(%struct.super_block* %104, i32 %106, i32 %109, %struct.qstr* %110)
  %112 = call i32 @hfs_brec_find(%struct.hfs_find_data* %12)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %92
  br label %180

116:                                              ; preds = %92
  %117 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %12)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %180

121:                                              ; preds = %116
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 8
  %126 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %127 = load %struct.inode*, %struct.inode** %7, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.inode*, %struct.inode** %7, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 2
  store i8* %126, i8** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = call i32 @mark_inode_dirty(%struct.inode* %131)
  %133 = load %struct.super_block*, %struct.super_block** %11, align 8
  %134 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @hfsplus_cat_build_key(%struct.super_block* %133, i32 %135, i32 %136, %struct.qstr* null)
  %138 = call i32 @hfs_brec_find(%struct.hfs_find_data* %12)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %121
  br label %180

142:                                              ; preds = %121
  %143 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @hfs_bnode_read_u16(i32 %144, i32 %146)
  store i32 %147, i32* %16, align 4
  %148 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %12)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %180

152:                                              ; preds = %142
  %153 = load %struct.super_block*, %struct.super_block** %11, align 8
  %154 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @hfsplus_cat_build_key(%struct.super_block* %153, i32 %155, i32 %156, %struct.qstr* null)
  %158 = load %struct.super_block*, %struct.super_block** %11, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load %struct.inode*, %struct.inode** %9, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.qstr*, %struct.qstr** %10, align 8
  %164 = call i32 @hfsplus_fill_cat_thread(%struct.super_block* %158, i32* %14, i32 %159, i32 %162, %struct.qstr* %163)
  store i32 %164, i32* %15, align 4
  %165 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %165, i32* %17, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* @ENOENT, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %152
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* @EEXIST, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %17, align 4
  br label %176

176:                                              ; preds = %173, %170
  br label %180

177:                                              ; preds = %152
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %13, i32* %14, i32 %178)
  store i32 %179, i32* %17, align 4
  br label %180

180:                                              ; preds = %177, %176, %151, %141, %120, %115, %91, %84, %56
  %181 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @hfs_bnode_put(i32 %182)
  %184 = call i32 @hfs_find_exit(%struct.hfs_find_data* %12)
  %185 = load i32, i32* %17, align 4
  ret i32 %185
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @HFSPLUS_SB(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hfsplus_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, i32*, i32, i32) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, i32*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read_u16(i32, i32) #1

declare dso_local i32 @hfsplus_fill_cat_thread(%struct.super_block*, i32*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfs_bnode_put(i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
