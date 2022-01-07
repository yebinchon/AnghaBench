; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtSplitRoot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtSplitRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.inode = type { %struct.TYPE_6__, i32, i32*, i64 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i64, i64, i32 }
%struct.xtsplit = type { i32, %struct.metapage*, i32, i32, i32, i32, %struct.pxdlist* }
%struct.metapage = type { %struct.TYPE_6__, i32, i32*, i64 }
%struct.pxdlist = type { i64, i32* }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.metapage }
%struct.TYPE_9__ = type { i32 }

@xtStat = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"xtSplitRoot: ip:0x%p rmp:0x%p\00", align 1
@BT_LEAF = common dso_local global i32 0, align 4
@BT_INTERNAL = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i64 0, align 8
@L2XTSLOTSIZE = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckNEW = common dso_local global i32 0, align 4
@XAD_NEW = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"xtSplitRoot: sp:0x%p rp:0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.xtsplit*, %struct.metapage**)* @xtSplitRoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtSplitRoot(i32 %0, %struct.inode* %1, %struct.xtsplit* %2, %struct.metapage** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.xtsplit*, align 8
  %9 = alloca %struct.metapage**, align 8
  %10 = alloca %struct.metapage*, align 8
  %11 = alloca %struct.metapage*, align 8
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.pxdlist*, align 8
  %19 = alloca %struct.tlock*, align 8
  %20 = alloca %struct.xtlock*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.xtsplit* %2, %struct.xtsplit** %8, align 8
  store %struct.metapage** %3, %struct.metapage*** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = bitcast %struct.inode* %21 to %struct.metapage*
  %23 = call %struct.TYPE_10__* @JFS_IP(%struct.metapage* %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store %struct.metapage* %24, %struct.metapage** %10, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xtStat, i32 0, i32 0), align 4
  %26 = call i32 @INCREMENT(i32 %25)
  %27 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %28 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %27, i32 0, i32 6
  %29 = load %struct.pxdlist*, %struct.pxdlist** %28, align 8
  store %struct.pxdlist* %29, %struct.pxdlist** %18, align 8
  %30 = load %struct.pxdlist*, %struct.pxdlist** %18, align 8
  %31 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.pxdlist*, %struct.pxdlist** %18, align 8
  %34 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32* %36, i32** %17, align 8
  %37 = load %struct.pxdlist*, %struct.pxdlist** %18, align 8
  %38 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = call i32 @addressPXD(i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = bitcast %struct.inode* %43 to %struct.metapage*
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @PSIZE, align 4
  %47 = call %struct.metapage* @get_metapage(%struct.metapage* %44, i32 %45, i32 %46, i32 1)
  store %struct.metapage* %47, %struct.metapage** %11, align 8
  %48 = load %struct.metapage*, %struct.metapage** %11, align 8
  %49 = icmp eq %struct.metapage* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %4
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %302

53:                                               ; preds = %4
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = bitcast %struct.inode* %54 to %struct.metapage*
  %56 = load i32*, i32** %17, align 8
  %57 = call i32 @lengthPXD(i32* %56)
  %58 = call i64 @vfs_dq_alloc_block(%struct.metapage* %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.metapage*, %struct.metapage** %11, align 8
  %62 = call i32 @release_metapage(%struct.metapage* %61)
  %63 = load i32, i32* @EDQUOT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %302

65:                                               ; preds = %53
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = bitcast %struct.inode* %66 to %struct.metapage*
  %68 = load %struct.metapage*, %struct.metapage** %11, align 8
  %69 = call i32 @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.metapage* %67, %struct.metapage* %68)
  %70 = load %struct.metapage*, %struct.metapage** %11, align 8
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = bitcast %struct.inode* %71 to %struct.metapage*
  %73 = call i32 @BT_MARK_DIRTY(%struct.metapage* %70, %struct.metapage* %72)
  %74 = load %struct.metapage*, %struct.metapage** %11, align 8
  %75 = getelementptr inbounds %struct.metapage, %struct.metapage* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.metapage*
  store %struct.metapage* %77, %struct.metapage** %12, align 8
  %78 = load %struct.metapage*, %struct.metapage** %10, align 8
  %79 = getelementptr inbounds %struct.metapage, %struct.metapage* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BT_LEAF, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %65
  %86 = load i32, i32* @BT_LEAF, align 4
  br label %89

87:                                               ; preds = %65
  %88 = load i32, i32* @BT_INTERNAL, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.metapage*, %struct.metapage** %12, align 8
  %92 = getelementptr inbounds %struct.metapage, %struct.metapage* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.metapage*, %struct.metapage** %12, align 8
  %97 = getelementptr inbounds %struct.metapage, %struct.metapage* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 8
  %99 = load i64, i64* @XTENTRYSTART, align 8
  %100 = call i8* @cpu_to_le16(i64 %99)
  %101 = load %struct.metapage*, %struct.metapage** %12, align 8
  %102 = getelementptr inbounds %struct.metapage, %struct.metapage* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 8
  %104 = load i32, i32* @PSIZE, align 4
  %105 = load i32, i32* @L2XTSLOTSIZE, align 4
  %106 = ashr i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = call i8* @cpu_to_le16(i64 %107)
  %109 = load %struct.metapage*, %struct.metapage** %12, align 8
  %110 = getelementptr inbounds %struct.metapage, %struct.metapage* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  %112 = load %struct.metapage*, %struct.metapage** %12, align 8
  %113 = getelementptr inbounds %struct.metapage, %struct.metapage* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  store i64 0, i64* %114, align 8
  %115 = load %struct.metapage*, %struct.metapage** %12, align 8
  %116 = getelementptr inbounds %struct.metapage, %struct.metapage* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.metapage*, %struct.metapage** %10, align 8
  %119 = getelementptr inbounds %struct.metapage, %struct.metapage* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @le16_to_cpu(i8* %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %15, align 4
  %124 = load %struct.metapage*, %struct.metapage** %12, align 8
  %125 = getelementptr inbounds %struct.metapage, %struct.metapage* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @XTENTRYSTART, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load %struct.metapage*, %struct.metapage** %10, align 8
  %130 = getelementptr inbounds %struct.metapage, %struct.metapage* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @XTENTRYSTART, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @XTENTRYSTART, align 8
  %137 = sub i64 %135, %136
  %138 = load i32, i32* @L2XTSLOTSIZE, align 4
  %139 = zext i32 %138 to i64
  %140 = shl i64 %137, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @memmove(i32* %128, i32* %133, i32 %141)
  %143 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %144 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %89
  %150 = load %struct.metapage*, %struct.metapage** %12, align 8
  %151 = getelementptr inbounds %struct.metapage, %struct.metapage* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load %struct.metapage*, %struct.metapage** %12, align 8
  %158 = getelementptr inbounds %struct.metapage, %struct.metapage* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %14, align 4
  %165 = sub nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  %168 = trunc i64 %167 to i32
  %169 = call i32 @memmove(i32* %156, i32* %162, i32 %168)
  br label %170

170:                                              ; preds = %149, %89
  %171 = load %struct.metapage*, %struct.metapage** %12, align 8
  %172 = getelementptr inbounds %struct.metapage, %struct.metapage* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32* %176, i32** %16, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %179 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %182 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %185 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %188 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @XT_PUTENTRY(i32* %177, i32 %180, i32 %183, i32 %186, i32 %189)
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = call i8* @cpu_to_le16(i64 %193)
  %195 = load %struct.metapage*, %struct.metapage** %12, align 8
  %196 = getelementptr inbounds %struct.metapage, %struct.metapage* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  %198 = load i32, i32* @COMMIT_Nolink, align 4
  %199 = load %struct.inode*, %struct.inode** %7, align 8
  %200 = bitcast %struct.inode* %199 to %struct.metapage*
  %201 = call i32 @test_cflag(i32 %198, %struct.metapage* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %229, label %203

203:                                              ; preds = %170
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.inode*, %struct.inode** %7, align 8
  %206 = bitcast %struct.inode* %205 to %struct.metapage*
  %207 = load %struct.metapage*, %struct.metapage** %11, align 8
  %208 = load i32, i32* @tlckXTREE, align 4
  %209 = load i32, i32* @tlckNEW, align 4
  %210 = or i32 %208, %209
  %211 = call %struct.tlock* @txLock(i32 %204, %struct.metapage* %206, %struct.metapage* %207, i32 %210)
  store %struct.tlock* %211, %struct.tlock** %19, align 8
  %212 = load %struct.tlock*, %struct.tlock** %19, align 8
  %213 = getelementptr inbounds %struct.tlock, %struct.tlock* %212, i32 0, i32 0
  %214 = bitcast i32* %213 to %struct.xtlock*
  store %struct.xtlock* %214, %struct.xtlock** %20, align 8
  %215 = load i64, i64* @XTENTRYSTART, align 8
  %216 = load %struct.xtlock*, %struct.xtlock** %20, align 8
  %217 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  store i64 %215, i64* %218, align 8
  %219 = load %struct.metapage*, %struct.metapage** %12, align 8
  %220 = getelementptr inbounds %struct.metapage, %struct.metapage* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @le16_to_cpu(i8* %222)
  %224 = load i64, i64* @XTENTRYSTART, align 8
  %225 = sub i64 %223, %224
  %226 = load %struct.xtlock*, %struct.xtlock** %20, align 8
  %227 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  store i64 %225, i64* %228, align 8
  br label %229

229:                                              ; preds = %203, %170
  %230 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %231 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %230, i32 0, i32 1
  %232 = load %struct.metapage*, %struct.metapage** %231, align 8
  %233 = load %struct.inode*, %struct.inode** %7, align 8
  %234 = bitcast %struct.inode* %233 to %struct.metapage*
  %235 = call i32 @BT_MARK_DIRTY(%struct.metapage* %232, %struct.metapage* %234)
  %236 = load %struct.metapage*, %struct.metapage** %10, align 8
  %237 = getelementptr inbounds %struct.metapage, %struct.metapage* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = load i64, i64* @XTENTRYSTART, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  store i32* %240, i32** %16, align 8
  %241 = load i32*, i32** %16, align 8
  %242 = load i32, i32* @XAD_NEW, align 4
  %243 = load %struct.inode*, %struct.inode** %7, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call %struct.TYPE_9__* @JFS_SBI(i32 %245)
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @XT_PUTENTRY(i32* %241, i32 %242, i32 0, i32 %248, i32 %249)
  %251 = load i32, i32* @BT_LEAF, align 4
  %252 = xor i32 %251, -1
  %253 = load %struct.metapage*, %struct.metapage** %10, align 8
  %254 = getelementptr inbounds %struct.metapage, %struct.metapage* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %256, %252
  store i32 %257, i32* %255, align 8
  %258 = load i32, i32* @BT_INTERNAL, align 4
  %259 = load %struct.metapage*, %struct.metapage** %10, align 8
  %260 = getelementptr inbounds %struct.metapage, %struct.metapage* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %258
  store i32 %263, i32* %261, align 8
  %264 = load i64, i64* @XTENTRYSTART, align 8
  %265 = add i64 %264, 1
  %266 = call i8* @cpu_to_le16(i64 %265)
  %267 = load %struct.metapage*, %struct.metapage** %10, align 8
  %268 = getelementptr inbounds %struct.metapage, %struct.metapage* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  store i8* %266, i8** %269, align 8
  %270 = load i32, i32* @COMMIT_Nolink, align 4
  %271 = load %struct.inode*, %struct.inode** %7, align 8
  %272 = bitcast %struct.inode* %271 to %struct.metapage*
  %273 = call i32 @test_cflag(i32 %270, %struct.metapage* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %296, label %275

275:                                              ; preds = %229
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.inode*, %struct.inode** %7, align 8
  %278 = bitcast %struct.inode* %277 to %struct.metapage*
  %279 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %280 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %279, i32 0, i32 1
  %281 = load %struct.metapage*, %struct.metapage** %280, align 8
  %282 = load i32, i32* @tlckXTREE, align 4
  %283 = load i32, i32* @tlckGROW, align 4
  %284 = or i32 %282, %283
  %285 = call %struct.tlock* @txLock(i32 %276, %struct.metapage* %278, %struct.metapage* %281, i32 %284)
  store %struct.tlock* %285, %struct.tlock** %19, align 8
  %286 = load %struct.tlock*, %struct.tlock** %19, align 8
  %287 = getelementptr inbounds %struct.tlock, %struct.tlock* %286, i32 0, i32 0
  %288 = bitcast i32* %287 to %struct.xtlock*
  store %struct.xtlock* %288, %struct.xtlock** %20, align 8
  %289 = load i64, i64* @XTENTRYSTART, align 8
  %290 = load %struct.xtlock*, %struct.xtlock** %20, align 8
  %291 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  store i64 %289, i64* %292, align 8
  %293 = load %struct.xtlock*, %struct.xtlock** %20, align 8
  %294 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 1
  store i64 1, i64* %295, align 8
  br label %296

296:                                              ; preds = %275, %229
  %297 = load %struct.metapage*, %struct.metapage** %11, align 8
  %298 = load %struct.metapage**, %struct.metapage*** %9, align 8
  store %struct.metapage* %297, %struct.metapage** %298, align 8
  %299 = load %struct.metapage*, %struct.metapage** %10, align 8
  %300 = load %struct.metapage*, %struct.metapage** %12, align 8
  %301 = call i32 @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.metapage* %299, %struct.metapage* %300)
  store i32 0, i32* %5, align 4
  br label %302

302:                                              ; preds = %296, %60, %50
  %303 = load i32, i32* %5, align 4
  ret i32 %303
}

declare dso_local %struct.TYPE_10__* @JFS_IP(%struct.metapage*) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local %struct.metapage* @get_metapage(%struct.metapage*, i32, i32, i32) #1

declare dso_local i64 @vfs_dq_alloc_block(%struct.metapage*, i32) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @jfs_info(i8*, %struct.metapage*, %struct.metapage*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.metapage*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @XT_PUTENTRY(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @test_cflag(i32, %struct.metapage*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.metapage*, %struct.metapage*, i32) #1

declare dso_local %struct.TYPE_9__* @JFS_SBI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
