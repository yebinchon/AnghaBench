; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_do_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_do_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.inode = type { i32, i32, %struct.super_block*, i32, i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i64, i32, i32 }
%struct.super_block = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.ext3_iloc = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.ext3_inode = type { i8*, i8**, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ext3_inode_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i8**, i32, i32 }
%struct.TYPE_11__ = type { %struct.buffer_head*, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i8* }

@EXT3_STATE_NEW = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@EXT3_FEATURE_RO_COMPAT_LARGE_FILE = common dso_local global i32 0, align 4
@EXT3_GOOD_OLD_REV = common dso_local global i32 0, align 4
@EXT3_N_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.inode*, %struct.ext3_iloc*)* @ext3_do_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_do_update_inode(%struct.TYPE_17__* %0, %struct.inode* %1, %struct.ext3_iloc* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext3_iloc*, align 8
  %7 = alloca %struct.ext3_inode*, align 8
  %8 = alloca %struct.ext3_inode_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ext3_iloc* %2, %struct.ext3_iloc** %6, align 8
  %14 = load %struct.ext3_iloc*, %struct.ext3_iloc** %6, align 8
  %15 = call %struct.ext3_inode* @ext3_raw_inode(%struct.ext3_iloc* %14)
  store %struct.ext3_inode* %15, %struct.ext3_inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.ext3_inode_info* @EXT3_I(%struct.inode* %16)
  store %struct.ext3_inode_info* %17, %struct.ext3_inode_info** %8, align 8
  %18 = load %struct.ext3_iloc*, %struct.ext3_iloc** %6, align 8
  %19 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %18, i32 0, i32 0
  %20 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  store %struct.buffer_head* %20, %struct.buffer_head** %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %226, %3
  %22 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %23 = call i32 @lock_buffer(%struct.buffer_head* %22)
  %24 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %25 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EXT3_STATE_NEW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  %34 = load %struct.super_block*, %struct.super_block** %33, align 8
  %35 = call %struct.TYPE_11__* @EXT3_SB(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memset(%struct.ext3_inode* %31, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %41 = call i32 @ext3_get_inode_flags(%struct.ext3_inode_info* %40)
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @cpu_to_le16(i64 %44)
  %46 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %47 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %46, i32 0, i32 21
  store i8* %45, i8** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  %50 = load %struct.super_block*, %struct.super_block** %49, align 8
  %51 = load i32, i32* @NO_UID32, align 4
  %52 = call i32 @test_opt(%struct.super_block* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %39
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @low_16_bits(i32 %57)
  %59 = call i8* @cpu_to_le16(i64 %58)
  %60 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %61 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %60, i32 0, i32 20
  store i8* %59, i8** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @low_16_bits(i32 %64)
  %66 = call i8* @cpu_to_le16(i64 %65)
  %67 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %68 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %67, i32 0, i32 19
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %70 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %54
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @high_16_bits(i32 %76)
  %78 = call i8* @cpu_to_le16(i64 %77)
  %79 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %80 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %79, i32 0, i32 18
  store i8* %78, i8** %80, align 8
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @high_16_bits(i32 %83)
  %85 = call i8* @cpu_to_le16(i64 %84)
  %86 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %87 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %86, i32 0, i32 17
  store i8* %85, i8** %87, align 8
  br label %93

88:                                               ; preds = %54
  %89 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %90 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %89, i32 0, i32 18
  store i8* null, i8** %90, align 8
  %91 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %92 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %91, i32 0, i32 17
  store i8* null, i8** %92, align 8
  br label %93

93:                                               ; preds = %88, %73
  br label %113

94:                                               ; preds = %39
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @fs_high2lowuid(i32 %97)
  %99 = call i8* @cpu_to_le16(i64 %98)
  %100 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %101 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %100, i32 0, i32 20
  store i8* %99, i8** %101, align 8
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @fs_high2lowgid(i32 %104)
  %106 = call i8* @cpu_to_le16(i64 %105)
  %107 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %108 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %107, i32 0, i32 19
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %110 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %109, i32 0, i32 18
  store i8* null, i8** %110, align 8
  %111 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %112 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %111, i32 0, i32 17
  store i8* null, i8** %112, align 8
  br label %113

113:                                              ; preds = %94, %93
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @cpu_to_le16(i64 %116)
  %118 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %119 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %118, i32 0, i32 16
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %121 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %125 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %124, i32 0, i32 15
  store i8* %123, i8** %125, align 8
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @cpu_to_le32(i32 %129)
  %131 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %132 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %131, i32 0, i32 14
  store i8* %130, i8** %132, align 8
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %139 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %138, i32 0, i32 13
  store i8* %137, i8** %139, align 8
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %146 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %145, i32 0, i32 12
  store i8* %144, i8** %146, align 8
  %147 = load %struct.inode*, %struct.inode** %5, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @cpu_to_le32(i32 %149)
  %151 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %152 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %151, i32 0, i32 11
  store i8* %150, i8** %152, align 8
  %153 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %154 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %158 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %157, i32 0, i32 10
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %160 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @cpu_to_le32(i32 %161)
  %163 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %164 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %163, i32 0, i32 9
  store i8* %162, i8** %164, align 8
  %165 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %166 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %170 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %169, i32 0, i32 5
  store i8* %168, i8** %170, align 8
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @S_ISREG(i64 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %113
  %177 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %178 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = call i8* @cpu_to_le32(i32 %179)
  %181 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %182 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  br label %242

183:                                              ; preds = %113
  %184 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %185 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = ashr i32 %186, 32
  %188 = call i8* @cpu_to_le32(i32 %187)
  %189 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %190 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %192 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = icmp ugt i64 %194, 2147483647
  br i1 %195, label %196, label %241

196:                                              ; preds = %183
  %197 = load %struct.inode*, %struct.inode** %5, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 2
  %199 = load %struct.super_block*, %struct.super_block** %198, align 8
  store %struct.super_block* %199, %struct.super_block** %13, align 8
  %200 = load %struct.super_block*, %struct.super_block** %13, align 8
  %201 = load i32, i32* @EXT3_FEATURE_RO_COMPAT_LARGE_FILE, align 4
  %202 = call i32 @EXT3_HAS_RO_COMPAT_FEATURE(%struct.super_block* %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %196
  %205 = load %struct.super_block*, %struct.super_block** %13, align 8
  %206 = call %struct.TYPE_11__* @EXT3_SB(%struct.super_block* %205)
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* @EXT3_GOOD_OLD_REV, align 4
  %212 = call i8* @cpu_to_le32(i32 %211)
  %213 = icmp eq i8* %210, %212
  br i1 %213, label %214, label %240

214:                                              ; preds = %204, %196
  %215 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %216 = call i32 @unlock_buffer(%struct.buffer_head* %215)
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %218 = load %struct.super_block*, %struct.super_block** %13, align 8
  %219 = call %struct.TYPE_11__* @EXT3_SB(%struct.super_block* %218)
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load %struct.buffer_head*, %struct.buffer_head** %220, align 8
  %222 = call i32 @ext3_journal_get_write_access(%struct.TYPE_17__* %217, %struct.buffer_head* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %214
  br label %361

226:                                              ; preds = %214
  %227 = load %struct.super_block*, %struct.super_block** %13, align 8
  %228 = call i32 @ext3_update_dynamic_rev(%struct.super_block* %227)
  %229 = load %struct.super_block*, %struct.super_block** %13, align 8
  %230 = load i32, i32* @EXT3_FEATURE_RO_COMPAT_LARGE_FILE, align 4
  %231 = call i32 @EXT3_SET_RO_COMPAT_FEATURE(%struct.super_block* %229, i32 %230)
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  store i32 1, i32* %233, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %235 = load %struct.super_block*, %struct.super_block** %13, align 8
  %236 = call %struct.TYPE_11__* @EXT3_SB(%struct.super_block* %235)
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load %struct.buffer_head*, %struct.buffer_head** %237, align 8
  %239 = call i32 @ext3_journal_dirty_metadata(%struct.TYPE_17__* %234, %struct.buffer_head* %238)
  store i32 %239, i32* %10, align 4
  br label %21

240:                                              ; preds = %204
  br label %241

241:                                              ; preds = %240, %183
  br label %242

242:                                              ; preds = %241, %176
  %243 = load %struct.inode*, %struct.inode** %5, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @cpu_to_le32(i32 %245)
  %247 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %248 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  %249 = load %struct.inode*, %struct.inode** %5, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = call i64 @S_ISCHR(i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %242
  %255 = load %struct.inode*, %struct.inode** %5, align 8
  %256 = getelementptr inbounds %struct.inode, %struct.inode* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @S_ISBLK(i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %299

260:                                              ; preds = %254, %242
  %261 = load %struct.inode*, %struct.inode** %5, align 8
  %262 = getelementptr inbounds %struct.inode, %struct.inode* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @old_valid_dev(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %260
  %267 = load %struct.inode*, %struct.inode** %5, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @old_encode_dev(i32 %269)
  %271 = call i8* @cpu_to_le32(i32 %270)
  %272 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %273 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %272, i32 0, i32 1
  %274 = load i8**, i8*** %273, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 0
  store i8* %271, i8** %275, align 8
  %276 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %277 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %276, i32 0, i32 1
  %278 = load i8**, i8*** %277, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i64 1
  store i8* null, i8** %279, align 8
  br label %298

280:                                              ; preds = %260
  %281 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %282 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %281, i32 0, i32 1
  %283 = load i8**, i8*** %282, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 0
  store i8* null, i8** %284, align 8
  %285 = load %struct.inode*, %struct.inode** %5, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @new_encode_dev(i32 %287)
  %289 = call i8* @cpu_to_le32(i32 %288)
  %290 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %291 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %290, i32 0, i32 1
  %292 = load i8**, i8*** %291, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 1
  store i8* %289, i8** %293, align 8
  %294 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %295 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %294, i32 0, i32 1
  %296 = load i8**, i8*** %295, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 2
  store i8* null, i8** %297, align 8
  br label %298

298:                                              ; preds = %280, %266
  br label %322

299:                                              ; preds = %254
  store i32 0, i32* %12, align 4
  br label %300

300:                                              ; preds = %318, %299
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* @EXT3_N_BLOCKS, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %321

304:                                              ; preds = %300
  %305 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %306 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %305, i32 0, i32 9
  %307 = load i8**, i8*** %306, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8*, i8** %307, i64 %309
  %311 = load i8*, i8** %310, align 8
  %312 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %313 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %312, i32 0, i32 1
  %314 = load i8**, i8*** %313, align 8
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %314, i64 %316
  store i8* %311, i8** %317, align 8
  br label %318

318:                                              ; preds = %304
  %319 = load i32, i32* %12, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %12, align 4
  br label %300

321:                                              ; preds = %300
  br label %322

322:                                              ; preds = %321, %298
  %323 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %324 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %323, i32 0, i32 8
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %322
  %328 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %329 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %328, i32 0, i32 8
  %330 = load i64, i64* %329, align 8
  %331 = call i8* @cpu_to_le16(i64 %330)
  %332 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %333 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %332, i32 0, i32 0
  store i8* %331, i8** %333, align 8
  br label %334

334:                                              ; preds = %327, %322
  %335 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %336 = call i32 @BUFFER_TRACE(%struct.buffer_head* %335, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %337 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %338 = call i32 @unlock_buffer(%struct.buffer_head* %337)
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %340 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %341 = call i32 @ext3_journal_dirty_metadata(%struct.TYPE_17__* %339, %struct.buffer_head* %340)
  store i32 %341, i32* %11, align 4
  %342 = load i32, i32* %10, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %334
  %345 = load i32, i32* %11, align 4
  store i32 %345, i32* %10, align 4
  br label %346

346:                                              ; preds = %344, %334
  %347 = load i32, i32* @EXT3_STATE_NEW, align 4
  %348 = xor i32 %347, -1
  %349 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %350 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %351, %348
  store i32 %352, i32* %350, align 8
  %353 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %354 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %353, i32 0, i32 7
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @atomic_set(i32* %354, i32 %359)
  br label %361

361:                                              ; preds = %346, %225
  %362 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %363 = call i32 @brelse(%struct.buffer_head* %362)
  %364 = load %struct.inode*, %struct.inode** %5, align 8
  %365 = getelementptr inbounds %struct.inode, %struct.inode* %364, i32 0, i32 2
  %366 = load %struct.super_block*, %struct.super_block** %365, align 8
  %367 = load i32, i32* %10, align 4
  %368 = call i32 @ext3_std_error(%struct.super_block* %366, i32 %367)
  %369 = load i32, i32* %10, align 4
  ret i32 %369
}

declare dso_local %struct.ext3_inode* @ext3_raw_inode(%struct.ext3_iloc*) #1

declare dso_local %struct.ext3_inode_info* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(%struct.ext3_inode*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @ext3_get_inode_flags(%struct.ext3_inode_info*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i64 @low_16_bits(i32) #1

declare dso_local i64 @high_16_bits(i32) #1

declare dso_local i64 @fs_high2lowuid(i32) #1

declare dso_local i64 @fs_high2lowgid(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @S_ISREG(i64) #1

declare dso_local i32 @EXT3_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_get_write_access(%struct.TYPE_17__*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_update_dynamic_rev(%struct.super_block*) #1

declare dso_local i32 @EXT3_SET_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext3_journal_dirty_metadata(%struct.TYPE_17__*, %struct.buffer_head*) #1

declare dso_local i64 @S_ISCHR(i64) #1

declare dso_local i64 @S_ISBLK(i64) #1

declare dso_local i64 @old_valid_dev(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext3_std_error(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
