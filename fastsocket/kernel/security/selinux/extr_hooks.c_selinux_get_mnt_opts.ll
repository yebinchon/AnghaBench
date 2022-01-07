; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_get_mnt_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_get_mnt_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.inode_security_struct* }
%struct.inode_security_struct = type { i32 }
%struct.security_mnt_opts = type { i32, i8**, i32* }

@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ss_initialized = common dso_local global i32 0, align 4
@SE_MNTMASK = common dso_local global i8 0, align 1
@SE_SBLABELSUPP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSCONTEXT_MNT = common dso_local global i32 0, align 4
@CONTEXT_MNT = common dso_local global i32 0, align 4
@DEFCONTEXT_MNT = common dso_local global i32 0, align 4
@ROOTCONTEXT_MNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.security_mnt_opts*)* @selinux_get_mnt_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_get_mnt_opts(%struct.super_block* %0, %struct.security_mnt_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.security_mnt_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.superblock_security_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.security_mnt_opts* %1, %struct.security_mnt_opts** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %15, align 8
  store %struct.superblock_security_struct* %16, %struct.superblock_security_struct** %8, align 8
  store i8* null, i8** %9, align 8
  %17 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %18 = call i32 @security_init_mnt_opts(%struct.security_mnt_opts* %17)
  %19 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %20 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SE_SBINITIALIZED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %275

28:                                               ; preds = %2
  %29 = load i32, i32* @ss_initialized, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %275

34:                                               ; preds = %28
  %35 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %36 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8, i8* @SE_MNTMASK, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %11, align 1
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %60, %34
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %52 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i8, i8* %11, align 1
  %57 = sext i8 %56 to i32
  %58 = ashr i32 %57, 1
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %11, align 1
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %65 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SE_SBLABELSUPP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %72 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %77 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call i8* @kcalloc(i32 %78, i32 8, i32 %79)
  %81 = bitcast i8* %80 to i8**
  %82 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %83 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %82, i32 0, i32 1
  store i8** %81, i8*** %83, align 8
  %84 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %85 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %75
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %271

91:                                               ; preds = %75
  %92 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %93 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_ATOMIC, align 4
  %96 = call i8* @kcalloc(i32 %94, i32 4, i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %99 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %98, i32 0, i32 2
  store i32* %97, i32** %99, align 8
  %100 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %101 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %91
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %271

107:                                              ; preds = %91
  store i32 0, i32* %7, align 4
  %108 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %109 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @FSCONTEXT_MNT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %107
  %115 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %116 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @security_sid_to_context(i32 %117, i8** %9, i32* %10)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %271

122:                                              ; preds = %114
  %123 = load i8*, i8** %9, align 8
  %124 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %125 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %123, i8** %129, align 8
  %130 = load i32, i32* @FSCONTEXT_MNT, align 4
  %131 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %132 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %130, i32* %137, align 4
  br label %138

138:                                              ; preds = %122, %107
  %139 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %140 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CONTEXT_MNT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %169

145:                                              ; preds = %138
  %146 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %147 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @security_sid_to_context(i32 %148, i8** %9, i32* %10)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %271

153:                                              ; preds = %145
  %154 = load i8*, i8** %9, align 8
  %155 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %156 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %155, i32 0, i32 1
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  store i8* %154, i8** %160, align 8
  %161 = load i32, i32* @CONTEXT_MNT, align 4
  %162 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %163 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32 %161, i32* %168, align 4
  br label %169

169:                                              ; preds = %153, %138
  %170 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %171 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @DEFCONTEXT_MNT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %200

176:                                              ; preds = %169
  %177 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %178 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @security_sid_to_context(i32 %179, i8** %9, i32* %10)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %271

184:                                              ; preds = %176
  %185 = load i8*, i8** %9, align 8
  %186 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %187 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %186, i32 0, i32 1
  %188 = load i8**, i8*** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  store i8* %185, i8** %191, align 8
  %192 = load i32, i32* @DEFCONTEXT_MNT, align 4
  %193 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %194 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %192, i32* %199, align 4
  br label %200

200:                                              ; preds = %184, %169
  %201 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %202 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @ROOTCONTEXT_MNT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %200
  %208 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %209 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load %struct.inode*, %struct.inode** %213, align 8
  store %struct.inode* %214, %struct.inode** %12, align 8
  %215 = load %struct.inode*, %struct.inode** %12, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 0
  %217 = load %struct.inode_security_struct*, %struct.inode_security_struct** %216, align 8
  store %struct.inode_security_struct* %217, %struct.inode_security_struct** %13, align 8
  %218 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %219 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @security_sid_to_context(i32 %220, i8** %9, i32* %10)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %207
  br label %271

225:                                              ; preds = %207
  %226 = load i8*, i8** %9, align 8
  %227 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %228 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %227, i32 0, i32 1
  %229 = load i8**, i8*** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  store i8* %226, i8** %232, align 8
  %233 = load i32, i32* @ROOTCONTEXT_MNT, align 4
  %234 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %235 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %233, i32* %240, align 4
  br label %241

241:                                              ; preds = %225, %200
  %242 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %8, align 8
  %243 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @SE_SBLABELSUPP, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %263

248:                                              ; preds = %241
  %249 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %250 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %249, i32 0, i32 1
  %251 = load i8**, i8*** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  store i8* null, i8** %254, align 8
  %255 = load i32, i32* @SE_SBLABELSUPP, align 4
  %256 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %257 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 %255, i32* %262, align 4
  br label %263

263:                                              ; preds = %248, %241
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %266 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %264, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @BUG_ON(i32 %269)
  store i32 0, i32* %3, align 4
  br label %275

271:                                              ; preds = %224, %183, %152, %121, %104, %88
  %272 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %5, align 8
  %273 = call i32 @security_free_mnt_opts(%struct.security_mnt_opts* %272)
  %274 = load i32, i32* %6, align 4
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %271, %263, %31, %25
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @security_init_mnt_opts(%struct.security_mnt_opts*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @security_sid_to_context(i32, i8**, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @security_free_mnt_opts(%struct.security_mnt_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
