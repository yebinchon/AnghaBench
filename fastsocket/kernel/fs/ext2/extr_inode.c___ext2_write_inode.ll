; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c___ext2_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c___ext2_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i64, %struct.super_block* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.super_block = type { i32 }
%struct.ext2_inode_info = type { i32, i32, i32, i32, i32, i32, i8**, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ext2_inode = type { i8**, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i8* }

@EIO = common dso_local global i32 0, align 4
@EXT2_STATE_NEW = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@EXT2_FEATURE_RO_COMPAT_LARGE_FILE = common dso_local global i32 0, align 4
@EXT2_GOOD_OLD_REV = common dso_local global i32 0, align 4
@EXT2_N_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"IO error syncing ext2 inode [%s:%08lx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @__ext2_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext2_write_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2_inode_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext2_inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %15)
  store %struct.ext2_inode_info* %16, %struct.ext2_inode_info** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 12
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.super_block*, %struct.super_block** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.ext2_inode* @ext2_get_inode(%struct.super_block* %29, i64 %30, %struct.buffer_head** %11)
  store %struct.ext2_inode* %31, %struct.ext2_inode** %12, align 8
  store i32 0, i32* %14, align 4
  %32 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %33 = call i64 @IS_ERR(%struct.ext2_inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %352

38:                                               ; preds = %2
  %39 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %40 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EXT2_STATE_NEW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %47 = load %struct.super_block*, %struct.super_block** %7, align 8
  %48 = call %struct.TYPE_10__* @EXT2_SB(%struct.super_block* %47)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memset(%struct.ext2_inode* %46, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %54 = call i32 @ext2_get_inode_flags(%struct.ext2_inode_info* %53)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %60 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %59, i32 0, i32 20
  store i8* %58, i8** %60, align 8
  %61 = load %struct.super_block*, %struct.super_block** %7, align 8
  %62 = load i32, i32* @NO_UID32, align 4
  %63 = call i32 @test_opt(%struct.super_block* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @low_16_bits(i32 %66)
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %70 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %69, i32 0, i32 19
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @low_16_bits(i32 %71)
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %75 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %74, i32 0, i32 18
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %77 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @high_16_bits(i32 %81)
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %85 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %84, i32 0, i32 17
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @high_16_bits(i32 %86)
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %90 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %89, i32 0, i32 16
  store i8* %88, i8** %90, align 8
  br label %96

91:                                               ; preds = %65
  %92 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %93 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %92, i32 0, i32 17
  store i8* null, i8** %93, align 8
  %94 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %95 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %94, i32 0, i32 16
  store i8* null, i8** %95, align 8
  br label %96

96:                                               ; preds = %91, %80
  br label %112

97:                                               ; preds = %52
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @fs_high2lowuid(i32 %98)
  %100 = call i8* @cpu_to_le16(i32 %99)
  %101 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %102 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %101, i32 0, i32 19
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @fs_high2lowgid(i32 %103)
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %107 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %106, i32 0, i32 18
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %109 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %108, i32 0, i32 17
  store i8* null, i8** %109, align 8
  %110 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %111 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %110, i32 0, i32 16
  store i8* null, i8** %111, align 8
  br label %112

112:                                              ; preds = %97, %96
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %118 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %117, i32 0, i32 15
  store i8* %116, i8** %118, align 8
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @cpu_to_le32(i32 %121)
  %123 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %124 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %123, i32 0, i32 14
  store i8* %122, i8** %124, align 8
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %131 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %130, i32 0, i32 13
  store i8* %129, i8** %131, align 8
  %132 = load %struct.inode*, %struct.inode** %4, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %138 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %137, i32 0, i32 12
  store i8* %136, i8** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %145 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %144, i32 0, i32 11
  store i8* %143, i8** %145, align 8
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %151 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %150, i32 0, i32 10
  store i8* %149, i8** %151, align 8
  %152 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %153 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %157 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %156, i32 0, i32 9
  store i8* %155, i8** %157, align 8
  %158 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %159 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @cpu_to_le32(i32 %160)
  %162 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %163 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %162, i32 0, i32 8
  store i8* %161, i8** %163, align 8
  %164 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %165 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %169 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %168, i32 0, i32 7
  store i8* %167, i8** %169, align 8
  %170 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %171 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %174 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  %175 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %176 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %179 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %181 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @cpu_to_le32(i32 %182)
  %184 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %185 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load %struct.inode*, %struct.inode** %4, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @S_ISREG(i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %112
  %192 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %193 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @cpu_to_le32(i32 %194)
  %196 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %197 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  br label %238

198:                                              ; preds = %112
  %199 = load %struct.inode*, %struct.inode** %4, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = ashr i32 %201, 32
  %203 = call i8* @cpu_to_le32(i32 %202)
  %204 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %205 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  %206 = load %struct.inode*, %struct.inode** %4, align 8
  %207 = getelementptr inbounds %struct.inode, %struct.inode* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = icmp ugt i64 %209, 2147483647
  br i1 %210, label %211, label %237

211:                                              ; preds = %198
  %212 = load %struct.super_block*, %struct.super_block** %7, align 8
  %213 = load i32, i32* @EXT2_FEATURE_RO_COMPAT_LARGE_FILE, align 4
  %214 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.super_block* %212, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %211
  %217 = load %struct.super_block*, %struct.super_block** %7, align 8
  %218 = call %struct.TYPE_10__* @EXT2_SB(%struct.super_block* %217)
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i32, i32* @EXT2_GOOD_OLD_REV, align 4
  %224 = call i8* @cpu_to_le32(i32 %223)
  %225 = icmp eq i8* %222, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %216, %211
  %227 = call i32 (...) @lock_kernel()
  %228 = load %struct.super_block*, %struct.super_block** %7, align 8
  %229 = call i32 @ext2_update_dynamic_rev(%struct.super_block* %228)
  %230 = load %struct.super_block*, %struct.super_block** %7, align 8
  %231 = load i32, i32* @EXT2_FEATURE_RO_COMPAT_LARGE_FILE, align 4
  %232 = call i32 @EXT2_SET_RO_COMPAT_FEATURE(%struct.super_block* %230, i32 %231)
  %233 = call i32 (...) @unlock_kernel()
  %234 = load %struct.super_block*, %struct.super_block** %7, align 8
  %235 = call i32 @ext2_write_super(%struct.super_block* %234)
  br label %236

236:                                              ; preds = %226, %216
  br label %237

237:                                              ; preds = %236, %198
  br label %238

238:                                              ; preds = %237, %191
  %239 = load %struct.inode*, %struct.inode** %4, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i8* @cpu_to_le32(i32 %241)
  %243 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %244 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %243, i32 0, i32 1
  store i8* %242, i8** %244, align 8
  %245 = load %struct.inode*, %struct.inode** %4, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i64 @S_ISCHR(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %238
  %251 = load %struct.inode*, %struct.inode** %4, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @S_ISBLK(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %295

256:                                              ; preds = %250, %238
  %257 = load %struct.inode*, %struct.inode** %4, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @old_valid_dev(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %256
  %263 = load %struct.inode*, %struct.inode** %4, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @old_encode_dev(i32 %265)
  %267 = call i8* @cpu_to_le32(i32 %266)
  %268 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %269 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %268, i32 0, i32 0
  %270 = load i8**, i8*** %269, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 0
  store i8* %267, i8** %271, align 8
  %272 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %273 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %272, i32 0, i32 0
  %274 = load i8**, i8*** %273, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 1
  store i8* null, i8** %275, align 8
  br label %294

276:                                              ; preds = %256
  %277 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %278 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %277, i32 0, i32 0
  %279 = load i8**, i8*** %278, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 0
  store i8* null, i8** %280, align 8
  %281 = load %struct.inode*, %struct.inode** %4, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @new_encode_dev(i32 %283)
  %285 = call i8* @cpu_to_le32(i32 %284)
  %286 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %287 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %286, i32 0, i32 0
  %288 = load i8**, i8*** %287, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 1
  store i8* %285, i8** %289, align 8
  %290 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %291 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %290, i32 0, i32 0
  %292 = load i8**, i8*** %291, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 2
  store i8* null, i8** %293, align 8
  br label %294

294:                                              ; preds = %276, %262
  br label %318

295:                                              ; preds = %250
  store i32 0, i32* %13, align 4
  br label %296

296:                                              ; preds = %314, %295
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %317

300:                                              ; preds = %296
  %301 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %302 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %301, i32 0, i32 6
  %303 = load i8**, i8*** %302, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %303, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %309 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %308, i32 0, i32 0
  %310 = load i8**, i8*** %309, align 8
  %311 = load i32, i32* %13, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %310, i64 %312
  store i8* %307, i8** %313, align 8
  br label %314

314:                                              ; preds = %300
  %315 = load i32, i32* %13, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %13, align 4
  br label %296

317:                                              ; preds = %296
  br label %318

318:                                              ; preds = %317, %294
  %319 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %320 = call i32 @mark_buffer_dirty(%struct.buffer_head* %319)
  %321 = load i32, i32* %5, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %342

323:                                              ; preds = %318
  %324 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %325 = call i32 @sync_dirty_buffer(%struct.buffer_head* %324)
  %326 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %327 = call i64 @buffer_req(%struct.buffer_head* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %341

329:                                              ; preds = %323
  %330 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %331 = call i32 @buffer_uptodate(%struct.buffer_head* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %341, label %333

333:                                              ; preds = %329
  %334 = load %struct.super_block*, %struct.super_block** %7, align 8
  %335 = getelementptr inbounds %struct.super_block, %struct.super_block* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i64, i64* %8, align 8
  %338 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %336, i64 %337)
  %339 = load i32, i32* @EIO, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %14, align 4
  br label %341

341:                                              ; preds = %333, %329, %323
  br label %342

342:                                              ; preds = %341, %318
  %343 = load i32, i32* @EXT2_STATE_NEW, align 4
  %344 = xor i32 %343, -1
  %345 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %346 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %347, %344
  store i32 %348, i32* %346, align 8
  %349 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %350 = call i32 @brelse(%struct.buffer_head* %349)
  %351 = load i32, i32* %14, align 4
  store i32 %351, i32* %3, align 4
  br label %352

352:                                              ; preds = %342, %35
  %353 = load i32, i32* %3, align 4
  ret i32 %353
}

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_inode* @ext2_get_inode(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.ext2_inode*) #1

declare dso_local i32 @memset(%struct.ext2_inode*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @ext2_get_inode_flags(%struct.ext2_inode_info*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @low_16_bits(i32) #1

declare dso_local i32 @high_16_bits(i32) #1

declare dso_local i32 @fs_high2lowuid(i32) #1

declare dso_local i32 @fs_high2lowgid(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ext2_update_dynamic_rev(%struct.super_block*) #1

declare dso_local i32 @EXT2_SET_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @ext2_write_super(%struct.super_block*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @old_valid_dev(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
