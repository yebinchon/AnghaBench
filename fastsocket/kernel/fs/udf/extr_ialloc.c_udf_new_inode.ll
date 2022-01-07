; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_ialloc.c_udf_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_ialloc.c_udf_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, %struct.super_block*, i32, i32, i32, i64, i32, i32, i32 }
%struct.super_block = type { i64 }
%struct.udf_sb_info = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.udf_inode_info = type { i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.logicalVolIntegrityDesc = type { i64 }
%struct.logicalVolIntegrityDescImpUse = type { i32, i32 }
%struct.logicalVolHeaderDesc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@UDF_FLAG_USE_EXTENDED_FE = common dso_local global i32 0, align 4
@UDF_VERS_USE_EXTENDED_FE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@UDF_FLAG_USE_AD_IN_ICB = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i32 0, align 4
@UDF_FLAG_USE_SHORT_AD = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_LONG = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @udf_new_inode(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.udf_sb_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.udf_inode_info*, align 8
  %14 = alloca %struct.udf_inode_info*, align 8
  %15 = alloca %struct.logicalVolIntegrityDesc*, align 8
  %16 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  %17 = alloca %struct.logicalVolHeaderDesc*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 3
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %8, align 8
  %22 = load %struct.super_block*, %struct.super_block** %8, align 8
  %23 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %22)
  store %struct.udf_sb_info* %23, %struct.udf_sb_info** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %29)
  store %struct.udf_inode_info* %30, %struct.udf_inode_info** %14, align 8
  %31 = load %struct.super_block*, %struct.super_block** %8, align 8
  %32 = call %struct.inode* @new_inode(%struct.super_block* %31)
  store %struct.inode* %32, %struct.inode** %10, align 8
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %296

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %43)
  store %struct.udf_inode_info* %44, %struct.udf_inode_info** %13, align 8
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 3
  %47 = load %struct.super_block*, %struct.super_block** %46, align 8
  %48 = load i32, i32* @UDF_FLAG_USE_EXTENDED_FE, align 4
  %49 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %39
  %52 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %53 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i64, i64* @UDF_VERS_USE_EXTENDED_FE, align 8
  %55 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %56 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i64, i64* @UDF_VERS_USE_EXTENDED_FE, align 8
  %61 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %62 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 3
  %66 = load %struct.super_block*, %struct.super_block** %65, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %68, 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kzalloc(i64 %69, i32 %70)
  %72 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %73 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  br label %89

75:                                               ; preds = %39
  %76 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %77 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 3
  %80 = load %struct.super_block*, %struct.super_block** %79, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kzalloc(i64 %83, i32 %84)
  %86 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %87 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  br label %89

89:                                               ; preds = %75, %63
  %90 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %91 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call i32 @iput(%struct.inode* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %296

101:                                              ; preds = %89
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 3
  %104 = load %struct.super_block*, %struct.super_block** %103, align 8
  %105 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %106 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @udf_new_block(%struct.super_block* %104, i32* null, i32 %108, i32 %109, i32* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %101
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = call i32 @iput(%struct.inode* %116)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %296

118:                                              ; preds = %101
  %119 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %120 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %119, i32 0, i32 1
  %121 = call i32 @mutex_lock(i32* %120)
  %122 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %123 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = icmp ne %struct.TYPE_5__* %124, null
  br i1 %125, label %126, label %172

126:                                              ; preds = %118
  %127 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %128 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %132, %struct.logicalVolIntegrityDesc** %15, align 8
  %133 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %134 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.udf_sb_info* %133)
  store %struct.logicalVolIntegrityDescImpUse* %134, %struct.logicalVolIntegrityDescImpUse** %16, align 8
  %135 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %15, align 8
  %136 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to %struct.logicalVolHeaderDesc*
  store %struct.logicalVolHeaderDesc* %138, %struct.logicalVolHeaderDesc** %17, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i64 @S_ISDIR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %126
  %143 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %16, align 8
  %144 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %143, i32 0, i32 1
  %145 = call i32 @le32_add_cpu(i32* %144, i32 1)
  br label %150

146:                                              ; preds = %126
  %147 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %16, align 8
  %148 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %147, i32 0, i32 0
  %149 = call i32 @le32_add_cpu(i32* %148, i32 1)
  br label %150

150:                                              ; preds = %146, %142
  %151 = load %struct.logicalVolHeaderDesc*, %struct.logicalVolHeaderDesc** %17, align 8
  %152 = getelementptr inbounds %struct.logicalVolHeaderDesc, %struct.logicalVolHeaderDesc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le64_to_cpu(i32 %153)
  store i32 %154, i32* %18, align 4
  %155 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %156 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = and i64 %159, 4294967295
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %150
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %163, 16
  store i32 %164, i32* %18, align 4
  br label %165

165:                                              ; preds = %162, %150
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @cpu_to_le64(i32 %166)
  %168 = load %struct.logicalVolHeaderDesc*, %struct.logicalVolHeaderDesc** %17, align 8
  %169 = getelementptr inbounds %struct.logicalVolHeaderDesc, %struct.logicalVolHeaderDesc* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load %struct.super_block*, %struct.super_block** %8, align 8
  %171 = call i32 @udf_updated_lvid(%struct.super_block* %170)
  br label %172

172:                                              ; preds = %165, %118
  %173 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %174 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %173, i32 0, i32 1
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.inode*, %struct.inode** %10, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = call i32 (...) @current_fsuid()
  %180 = load %struct.inode*, %struct.inode** %10, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 10
  store i32 %179, i32* %181, align 8
  %182 = load %struct.inode*, %struct.inode** %5, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @S_ISGID, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %172
  %189 = load %struct.inode*, %struct.inode** %5, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.inode*, %struct.inode** %10, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 9
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %6, align 4
  %195 = call i64 @S_ISDIR(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %188
  %198 = load i32, i32* @S_ISGID, align 4
  %199 = load i32, i32* %6, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %197, %188
  br label %206

202:                                              ; preds = %172
  %203 = call i32 (...) @current_fsgid()
  %204 = load %struct.inode*, %struct.inode** %10, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 9
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %202, %201
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %209 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  %211 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %212 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %216 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 4
  %218 = load %struct.super_block*, %struct.super_block** %8, align 8
  %219 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %220 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %219, i32 0, i32 7
  %221 = call i32 @udf_get_lb_pblock(%struct.super_block* %218, %struct.TYPE_6__* %220, i32 0)
  %222 = load %struct.inode*, %struct.inode** %10, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 8
  store i32 %221, i32* %223, align 8
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 7
  store i64 0, i64* %225, align 8
  %226 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %227 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %226, i32 0, i32 6
  store i64 0, i64* %227, align 8
  %228 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %229 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %228, i32 0, i32 5
  store i64 0, i64* %229, align 8
  %230 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %231 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %230, i32 0, i32 4
  store i64 0, i64* %231, align 8
  %232 = load %struct.inode*, %struct.inode** %10, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 3
  %234 = load %struct.super_block*, %struct.super_block** %233, align 8
  %235 = load i32, i32* @UDF_FLAG_USE_AD_IN_ICB, align 4
  %236 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %206
  %239 = load i32, i32* @ICBTAG_FLAG_AD_IN_ICB, align 4
  %240 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %241 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  br label %258

242:                                              ; preds = %206
  %243 = load %struct.inode*, %struct.inode** %10, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 3
  %245 = load %struct.super_block*, %struct.super_block** %244, align 8
  %246 = load i32, i32* @UDF_FLAG_USE_SHORT_AD, align 4
  %247 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %242
  %250 = load i32, i32* @ICBTAG_FLAG_AD_SHORT, align 4
  %251 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %252 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  br label %257

253:                                              ; preds = %242
  %254 = load i32, i32* @ICBTAG_FLAG_AD_LONG, align 4
  %255 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %256 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 4
  br label %257

257:                                              ; preds = %253, %249
  br label %258

258:                                              ; preds = %257, %238
  %259 = load %struct.inode*, %struct.inode** %10, align 8
  %260 = getelementptr inbounds %struct.inode, %struct.inode* %259, i32 0, i32 3
  %261 = load %struct.super_block*, %struct.super_block** %260, align 8
  %262 = call i32 @current_fs_time(%struct.super_block* %261)
  %263 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %264 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  %265 = load %struct.inode*, %struct.inode** %10, align 8
  %266 = getelementptr inbounds %struct.inode, %struct.inode* %265, i32 0, i32 4
  store i32 %262, i32* %266, align 8
  %267 = load %struct.inode*, %struct.inode** %10, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 5
  store i32 %262, i32* %268, align 4
  %269 = load %struct.inode*, %struct.inode** %10, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 6
  store i32 %262, i32* %270, align 8
  %271 = load %struct.inode*, %struct.inode** %10, align 8
  %272 = call i32 @insert_inode_hash(%struct.inode* %271)
  %273 = load %struct.inode*, %struct.inode** %10, align 8
  %274 = call i32 @mark_inode_dirty(%struct.inode* %273)
  %275 = load %struct.inode*, %struct.inode** %10, align 8
  %276 = call i64 @vfs_dq_alloc_inode(%struct.inode* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %293

278:                                              ; preds = %258
  %279 = load %struct.inode*, %struct.inode** %10, align 8
  %280 = call i32 @vfs_dq_drop(%struct.inode* %279)
  %281 = load i32, i32* @S_NOQUOTA, align 4
  %282 = load %struct.inode*, %struct.inode** %10, align 8
  %283 = getelementptr inbounds %struct.inode, %struct.inode* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  %286 = load %struct.inode*, %struct.inode** %10, align 8
  %287 = getelementptr inbounds %struct.inode, %struct.inode* %286, i32 0, i32 1
  store i64 0, i64* %287, align 8
  %288 = load %struct.inode*, %struct.inode** %10, align 8
  %289 = call i32 @iput(%struct.inode* %288)
  %290 = load i32, i32* @EDQUOT, align 4
  %291 = sub nsw i32 0, %290
  %292 = load i32*, i32** %7, align 8
  store i32 %291, i32* %292, align 4
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %296

293:                                              ; preds = %258
  %294 = load i32*, i32** %7, align 8
  store i32 0, i32* %294, align 4
  %295 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %295, %struct.inode** %4, align 8
  br label %296

296:                                              ; preds = %293, %278, %115, %95, %35
  %297 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %297
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @udf_new_block(%struct.super_block*, i32*, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.udf_sb_info*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @udf_updated_lvid(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.super_block*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @current_fs_time(%struct.super_block*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @vfs_dq_alloc_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_drop(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
