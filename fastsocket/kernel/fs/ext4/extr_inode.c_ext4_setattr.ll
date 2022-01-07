; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i64, i64, i64, i32, i64, i32 }
%struct.iattr = type { i32, i64, i64, i64 }
%struct.ext4_sb_info = type { i64 }
%struct.TYPE_2__ = type { i64 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ext4_sb_info*, align 8
  %12 = alloca i32*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.iattr*, %struct.iattr** %5, align 8
  %17 = getelementptr inbounds %struct.iattr, %struct.iattr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load %struct.iattr*, %struct.iattr** %5, align 8
  %21 = call i32 @inode_change_ok(%struct.inode* %19, %struct.iattr* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %264

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ATTR_UID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.iattr*, %struct.iattr** %5, align 8
  %33 = getelementptr inbounds %struct.iattr, %struct.iattr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %31, %26
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ATTR_GID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %120

44:                                               ; preds = %39
  %45 = load %struct.iattr*, %struct.iattr** %5, align 8
  %46 = getelementptr inbounds %struct.iattr, %struct.iattr* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %120

52:                                               ; preds = %44, %31
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @EXT4_MAXQUOTAS_INIT_BLOCKS(i32 %56)
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @EXT4_MAXQUOTAS_DEL_BLOCKS(i32 %60)
  %62 = add nsw i32 %57, %61
  %63 = add nsw i32 %62, 3
  %64 = call i32* @ext4_journal_start(%struct.inode* %53, i32 %63)
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i64 @IS_ERR(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %7, align 4
  br label %252

71:                                               ; preds = %52
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load %struct.iattr*, %struct.iattr** %5, align 8
  %74 = call i64 @vfs_dq_transfer(%struct.inode* %72, %struct.iattr* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EDQUOT, align 4
  %78 = sub nsw i32 0, %77
  br label %80

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @ext4_journal_stop(i32* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %264

88:                                               ; preds = %80
  %89 = load %struct.iattr*, %struct.iattr** %5, align 8
  %90 = getelementptr inbounds %struct.iattr, %struct.iattr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ATTR_UID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.iattr*, %struct.iattr** %5, align 8
  %97 = getelementptr inbounds %struct.iattr, %struct.iattr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.iattr*, %struct.iattr** %5, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ATTR_GID, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.iattr*, %struct.iattr** %5, align 8
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %101
  %115 = load i32*, i32** %10, align 8
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = call i32 @ext4_mark_inode_dirty(i32* %115, %struct.inode* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @ext4_journal_stop(i32* %118)
  br label %120

120:                                              ; preds = %114, %44, %39
  %121 = load %struct.iattr*, %struct.iattr** %5, align 8
  %122 = getelementptr inbounds %struct.iattr, %struct.iattr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ATTR_SIZE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %120
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %130 = call i32 @ext4_test_inode_flag(%struct.inode* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %127
  %133 = load %struct.inode*, %struct.inode** %6, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call %struct.ext4_sb_info* @EXT4_SB(i32 %135)
  store %struct.ext4_sb_info* %136, %struct.ext4_sb_info** %11, align 8
  %137 = load %struct.iattr*, %struct.iattr** %5, align 8
  %138 = getelementptr inbounds %struct.iattr, %struct.iattr* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %141 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %139, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %132
  %145 = load i32, i32* @EFBIG, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %264

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147, %127
  br label %149

149:                                              ; preds = %148, %120
  %150 = load %struct.inode*, %struct.inode** %6, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @S_ISREG(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %229

155:                                              ; preds = %149
  %156 = load %struct.iattr*, %struct.iattr** %5, align 8
  %157 = getelementptr inbounds %struct.iattr, %struct.iattr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ATTR_SIZE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %229

162:                                              ; preds = %155
  %163 = load %struct.iattr*, %struct.iattr** %5, align 8
  %164 = getelementptr inbounds %struct.iattr, %struct.iattr* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.inode*, %struct.inode** %6, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %165, %168
  br i1 %169, label %170, label %229

170:                                              ; preds = %162
  %171 = load %struct.inode*, %struct.inode** %6, align 8
  %172 = call i32* @ext4_journal_start(%struct.inode* %171, i32 3)
  store i32* %172, i32** %12, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = call i64 @IS_ERR(i32* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32*, i32** %12, align 8
  %178 = call i32 @PTR_ERR(i32* %177)
  store i32 %178, i32* %7, align 4
  br label %252

179:                                              ; preds = %170
  %180 = load i32*, i32** %12, align 8
  %181 = load %struct.inode*, %struct.inode** %6, align 8
  %182 = call i32 @ext4_orphan_add(i32* %180, %struct.inode* %181)
  store i32 %182, i32* %7, align 4
  %183 = load %struct.iattr*, %struct.iattr** %5, align 8
  %184 = getelementptr inbounds %struct.iattr, %struct.iattr* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.inode*, %struct.inode** %6, align 8
  %187 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %186)
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = load %struct.inode*, %struct.inode** %6, align 8
  %191 = call i32 @ext4_mark_inode_dirty(i32* %189, %struct.inode* %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %179
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %194, %179
  %197 = load i32*, i32** %12, align 8
  %198 = call i32 @ext4_journal_stop(i32* %197)
  %199 = load %struct.inode*, %struct.inode** %6, align 8
  %200 = call i64 @ext4_should_order_data(%struct.inode* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %226

202:                                              ; preds = %196
  %203 = load %struct.inode*, %struct.inode** %6, align 8
  %204 = load %struct.iattr*, %struct.iattr** %5, align 8
  %205 = getelementptr inbounds %struct.iattr, %struct.iattr* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @ext4_begin_ordered_truncate(%struct.inode* %203, i64 %206)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %202
  %211 = load %struct.inode*, %struct.inode** %6, align 8
  %212 = call i32* @ext4_journal_start(%struct.inode* %211, i32 3)
  store i32* %212, i32** %12, align 8
  %213 = load i32*, i32** %12, align 8
  %214 = call i64 @IS_ERR(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load %struct.inode*, %struct.inode** %6, align 8
  %218 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %217)
  br label %252

219:                                              ; preds = %210
  %220 = load i32*, i32** %12, align 8
  %221 = load %struct.inode*, %struct.inode** %6, align 8
  %222 = call i32 @ext4_orphan_del(i32* %220, %struct.inode* %221)
  %223 = load i32*, i32** %12, align 8
  %224 = call i32 @ext4_journal_stop(i32* %223)
  br label %252

225:                                              ; preds = %202
  br label %226

226:                                              ; preds = %225, %196
  %227 = load %struct.inode*, %struct.inode** %6, align 8
  %228 = call i32 @ext4_truncate(%struct.inode* %227)
  br label %229

229:                                              ; preds = %226, %162, %155, %149
  %230 = load %struct.inode*, %struct.inode** %6, align 8
  %231 = load %struct.iattr*, %struct.iattr** %5, align 8
  %232 = call i32 @inode_setattr(%struct.inode* %230, %struct.iattr* %231)
  store i32 %232, i32* %8, align 4
  %233 = load %struct.inode*, %struct.inode** %6, align 8
  %234 = getelementptr inbounds %struct.inode, %struct.inode* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %229
  %238 = load %struct.inode*, %struct.inode** %6, align 8
  %239 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %238)
  br label %240

240:                                              ; preds = %237, %229
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @ATTR_MODE, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.inode*, %struct.inode** %6, align 8
  %250 = call i32 @ext4_acl_chmod(%struct.inode* %249)
  store i32 %250, i32* %8, align 4
  br label %251

251:                                              ; preds = %248, %243, %240
  br label %252

252:                                              ; preds = %251, %219, %216, %176, %68
  %253 = load %struct.inode*, %struct.inode** %6, align 8
  %254 = getelementptr inbounds %struct.inode, %struct.inode* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @ext4_std_error(i32 %255, i32 %256)
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %252
  %261 = load i32, i32* %8, align 4
  store i32 %261, i32* %7, align 4
  br label %262

262:                                              ; preds = %260, %252
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %262, %144, %84, %24
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_MAXQUOTAS_INIT_BLOCKS(i32) #1

declare dso_local i32 @EXT4_MAXQUOTAS_DEL_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @vfs_dq_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @ext4_should_order_data(%struct.inode*) #1

declare dso_local i32 @ext4_begin_ordered_truncate(%struct.inode*, i64) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_truncate(%struct.inode*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ext4_acl_chmod(%struct.inode*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
