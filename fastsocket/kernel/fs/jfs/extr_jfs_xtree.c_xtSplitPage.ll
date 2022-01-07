; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtSplitPage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtSplitPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.inode = type { i32 }
%struct.xtsplit = type { i32, i32, i32, i32, i32, %struct.pxdlist*, %struct.metapage* }
%struct.pxdlist = type { i64, i32* }
%struct.metapage = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i8*, i32 }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@xtStat = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@EDQUOT = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xtSplitPage: ip:0x%p smp:0x%p rmp:0x%p\00", align 1
@BT_TYPE = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i64 0, align 8
@COMMIT_Nolink = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckNEW = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"xtSplitPage: sp:0x%p rp:0x%p\00", align 1
@tlckRELINK = common dso_local global i32 0, align 4
@L2XTSLOTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.xtsplit*, %struct.metapage**, i64*)* @xtSplitPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtSplitPage(i32 %0, %struct.inode* %1, %struct.xtsplit* %2, %struct.metapage** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.xtsplit*, align 8
  %10 = alloca %struct.metapage**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.metapage*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.metapage*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.pxdlist*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.tlock*, align 8
  %30 = alloca %struct.xtlock*, align 8
  %31 = alloca %struct.xtlock*, align 8
  %32 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.xtsplit* %2, %struct.xtsplit** %9, align 8
  store %struct.metapage** %3, %struct.metapage*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.xtlock* null, %struct.xtlock** %30, align 8
  store %struct.xtlock* null, %struct.xtlock** %31, align 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %34 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %33, i32 0, i32 6
  %35 = load %struct.metapage*, %struct.metapage** %34, align 8
  store %struct.metapage* %35, %struct.metapage** %13, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = load %struct.metapage*, %struct.metapage** %13, align 8
  %38 = call %struct.TYPE_10__* @XT_PAGE(%struct.inode* %36, %struct.metapage* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %14, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtStat, i32 0, i32 0), align 4
  %40 = call i32 @INCREMENT(i32 %39)
  %41 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %42 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %41, i32 0, i32 5
  %43 = load %struct.pxdlist*, %struct.pxdlist** %42, align 8
  store %struct.pxdlist* %43, %struct.pxdlist** %27, align 8
  %44 = load %struct.pxdlist*, %struct.pxdlist** %27, align 8
  %45 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.pxdlist*, %struct.pxdlist** %27, align 8
  %48 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32* %50, i32** %28, align 8
  %51 = load %struct.pxdlist*, %struct.pxdlist** %27, align 8
  %52 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load i32*, i32** %28, align 8
  %56 = call i64 @addressPXD(i32* %55)
  store i64 %56, i64* %17, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load i32*, i32** %28, align 8
  %59 = call i64 @lengthPXD(i32* %58)
  %60 = call i64 @vfs_dq_alloc_block(%struct.inode* %57, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %5
  %63 = load i32, i32* @EDQUOT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %539

65:                                               ; preds = %5
  %66 = load i32*, i32** %28, align 8
  %67 = call i64 @lengthPXD(i32* %66)
  %68 = load i32, i32* %32, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %32, align 4
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i32, i32* @PSIZE, align 4
  %75 = call %struct.metapage* @get_metapage(%struct.inode* %72, i64 %73, i32 %74, i32 1)
  store %struct.metapage* %75, %struct.metapage** %15, align 8
  %76 = load %struct.metapage*, %struct.metapage** %15, align 8
  %77 = icmp eq %struct.metapage* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %539

81:                                               ; preds = %65
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = bitcast %struct.inode* %82 to %struct.TYPE_10__*
  %84 = load %struct.metapage*, %struct.metapage** %13, align 8
  %85 = load %struct.metapage*, %struct.metapage** %15, align 8
  %86 = call i32 (i8*, %struct.TYPE_10__*, ...) @jfs_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %83, %struct.metapage* %84, %struct.metapage* %85)
  %87 = load %struct.metapage*, %struct.metapage** %15, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = call i32 @BT_MARK_DIRTY(%struct.metapage* %87, %struct.inode* %88)
  %90 = load %struct.metapage*, %struct.metapage** %15, align 8
  %91 = getelementptr inbounds %struct.metapage, %struct.metapage* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %16, align 8
  %94 = load i32*, i32** %28, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @BT_TYPE, align 4
  %104 = and i32 %102, %103
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  store i8* %111, i8** %114, align 8
  %115 = load i64, i64* @XTENTRYSTART, align 8
  %116 = call i8* @cpu_to_le16(i64 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load %struct.metapage*, %struct.metapage** %13, align 8
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = call i32 @BT_MARK_DIRTY(%struct.metapage* %120, %struct.inode* %121)
  %123 = load i32, i32* @COMMIT_Nolink, align 4
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = call i32 @test_cflag(i32 %123, %struct.inode* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %152, label %127

127:                                              ; preds = %81
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = load %struct.metapage*, %struct.metapage** %15, align 8
  %131 = load i32, i32* @tlckXTREE, align 4
  %132 = load i32, i32* @tlckNEW, align 4
  %133 = or i32 %131, %132
  %134 = call %struct.tlock* @txLock(i32 %128, %struct.inode* %129, %struct.metapage* %130, i32 %133)
  store %struct.tlock* %134, %struct.tlock** %29, align 8
  %135 = load %struct.tlock*, %struct.tlock** %29, align 8
  %136 = getelementptr inbounds %struct.tlock, %struct.tlock* %135, i32 0, i32 0
  %137 = bitcast i32* %136 to %struct.xtlock*
  store %struct.xtlock* %137, %struct.xtlock** %31, align 8
  %138 = load i64, i64* @XTENTRYSTART, align 8
  %139 = load %struct.xtlock*, %struct.xtlock** %31, align 8
  %140 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.inode*, %struct.inode** %8, align 8
  %144 = load %struct.metapage*, %struct.metapage** %13, align 8
  %145 = load i32, i32* @tlckXTREE, align 4
  %146 = load i32, i32* @tlckGROW, align 4
  %147 = or i32 %145, %146
  %148 = call %struct.tlock* @txLock(i32 %142, %struct.inode* %143, %struct.metapage* %144, i32 %147)
  store %struct.tlock* %148, %struct.tlock** %29, align 8
  %149 = load %struct.tlock*, %struct.tlock** %29, align 8
  %150 = getelementptr inbounds %struct.tlock, %struct.tlock* %149, i32 0, i32 0
  %151 = bitcast i32* %150 to %struct.xtlock*
  store %struct.xtlock* %151, %struct.xtlock** %30, align 8
  br label %152

152:                                              ; preds = %127, %81
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @le64_to_cpu(i8* %156)
  store i64 %157, i64* %20, align 8
  %158 = load i64, i64* %20, align 8
  %159 = call i8* @cpu_to_le64(i64 %158)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  store i8* %159, i8** %162, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 5
  %166 = call i64 @addressPXD(i32* %165)
  %167 = call i8* @cpu_to_le64(i64 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  store i8* %167, i8** %170, align 8
  %171 = load i64, i64* %17, align 8
  %172 = call i8* @cpu_to_le64(i64 %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 4
  store i8* %172, i8** %175, align 8
  %176 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %177 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %21, align 4
  %179 = load i64, i64* %20, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %232

181:                                              ; preds = %152
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @le16_to_cpu(i8* %187)
  %189 = icmp eq i64 %183, %188
  br i1 %189, label %190, label %232

190:                                              ; preds = %181
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @XTENTRYSTART, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %26, align 8
  %196 = load i32*, i32** %26, align 8
  %197 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %198 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %201 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %204 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %207 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @XT_PUTENTRY(i32* %196, i32 %199, i32 %202, i32 %205, i32 %208)
  %210 = load i64, i64* @XTENTRYSTART, align 8
  %211 = add i64 %210, 1
  %212 = call i8* @cpu_to_le16(i64 %211)
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  store i8* %212, i8** %215, align 8
  %216 = load i32, i32* @COMMIT_Nolink, align 4
  %217 = load %struct.inode*, %struct.inode** %8, align 8
  %218 = call i32 @test_cflag(i32 %216, %struct.inode* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %190
  %221 = load %struct.xtlock*, %struct.xtlock** %31, align 8
  %222 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %220, %190
  %225 = load %struct.metapage*, %struct.metapage** %15, align 8
  %226 = load %struct.metapage**, %struct.metapage*** %10, align 8
  store %struct.metapage* %225, %struct.metapage** %226, align 8
  %227 = load i64, i64* %17, align 8
  %228 = load i64*, i64** %11, align 8
  store i64 %227, i64* %228, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %231 = call i32 (i8*, %struct.TYPE_10__*, ...) @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %229, %struct.TYPE_10__* %230)
  store i32 0, i32* %6, align 4
  br label %548

232:                                              ; preds = %181, %152
  %233 = load i64, i64* %20, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %272

235:                                              ; preds = %232
  %236 = load %struct.inode*, %struct.inode** %8, align 8
  %237 = load i64, i64* %20, align 8
  %238 = load %struct.metapage*, %struct.metapage** %18, align 8
  %239 = load i32, i32* @PSIZE, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @XT_GETPAGE(%struct.inode* %236, i64 %237, %struct.metapage* %238, i32 %239, %struct.TYPE_10__* %240, i32 %241)
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %235
  %246 = load %struct.metapage*, %struct.metapage** %15, align 8
  %247 = call i32 @XT_PUTPAGE(%struct.metapage* %246)
  br label %539

248:                                              ; preds = %235
  %249 = load %struct.metapage*, %struct.metapage** %18, align 8
  %250 = load %struct.inode*, %struct.inode** %8, align 8
  %251 = call i32 @BT_MARK_DIRTY(%struct.metapage* %249, %struct.inode* %250)
  %252 = load i32, i32* @COMMIT_Nolink, align 4
  %253 = load %struct.inode*, %struct.inode** %8, align 8
  %254 = call i32 @test_cflag(i32 %252, %struct.inode* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %248
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.inode*, %struct.inode** %8, align 8
  %259 = load %struct.metapage*, %struct.metapage** %18, align 8
  %260 = load i32, i32* @tlckXTREE, align 4
  %261 = load i32, i32* @tlckRELINK, align 4
  %262 = or i32 %260, %261
  %263 = call %struct.tlock* @txLock(i32 %257, %struct.inode* %258, %struct.metapage* %259, i32 %262)
  store %struct.tlock* %263, %struct.tlock** %29, align 8
  br label %264

264:                                              ; preds = %256, %248
  %265 = load i64, i64* %17, align 8
  %266 = call i8* @cpu_to_le64(i64 %265)
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 3
  store i8* %266, i8** %269, align 8
  %270 = load %struct.metapage*, %struct.metapage** %18, align 8
  %271 = call i32 @XT_PUTPAGE(%struct.metapage* %270)
  br label %272

272:                                              ; preds = %264, %232
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 2
  %276 = load i8*, i8** %275, align 8
  %277 = call i64 @le16_to_cpu(i8* %276)
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %22, align 4
  %279 = load i32, i32* %22, align 4
  %280 = ashr i32 %279, 1
  store i32 %280, i32* %23, align 4
  %281 = load i32, i32* %22, align 4
  %282 = load i32, i32* %23, align 4
  %283 = sub nsw i32 %281, %282
  store i32 %283, i32* %24, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* %23, align 4
  %286 = icmp sle i32 %284, %285
  br i1 %286, label %287, label %389

287:                                              ; preds = %272
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* @XTENTRYSTART, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %23, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %24, align 4
  %300 = load i32, i32* @L2XTSLOTSIZE, align 4
  %301 = shl i32 %299, %300
  %302 = call i32 @memmove(i32* %292, i32* %298, i32 %301)
  %303 = load i32, i32* %21, align 4
  %304 = load i32, i32* %23, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %326

306:                                              ; preds = %287
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %21, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %21, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %23, align 4
  %321 = load i32, i32* %21, align 4
  %322 = sub nsw i32 %320, %321
  %323 = load i32, i32* @L2XTSLOTSIZE, align 4
  %324 = shl i32 %322, %323
  %325 = call i32 @memmove(i32* %313, i32* %319, i32 %324)
  br label %326

326:                                              ; preds = %306, %287
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %21, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32* %332, i32** %26, align 8
  %333 = load i32*, i32** %26, align 8
  %334 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %335 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %338 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %341 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %344 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @XT_PUTENTRY(i32* %333, i32 %336, i32 %339, i32 %342, i32 %345)
  %347 = load i32, i32* %23, align 4
  %348 = add nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = call i8* @cpu_to_le16(i64 %349)
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  store i8* %350, i8** %353, align 8
  %354 = load i32, i32* @COMMIT_Nolink, align 4
  %355 = load %struct.inode*, %struct.inode** %8, align 8
  %356 = call i32 @test_cflag(i32 %354, %struct.inode* %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %380, label %358

358:                                              ; preds = %326
  %359 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %360 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %358
  %365 = load i32, i32* %21, align 4
  %366 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %367 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = trunc i64 %369 to i32
  %371 = call i32 @min(i32 %365, i32 %370)
  br label %374

372:                                              ; preds = %358
  %373 = load i32, i32* %21, align 4
  br label %374

374:                                              ; preds = %372, %364
  %375 = phi i32 [ %371, %364 ], [ %373, %372 ]
  %376 = sext i32 %375 to i64
  %377 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %378 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  store i64 %376, i64* %379, align 8
  br label %380

380:                                              ; preds = %374, %326
  %381 = load i64, i64* @XTENTRYSTART, align 8
  %382 = load i32, i32* %24, align 4
  %383 = sext i32 %382 to i64
  %384 = add i64 %381, %383
  %385 = call i8* @cpu_to_le16(i64 %384)
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 1
  store i8* %385, i8** %388, align 8
  br label %499

389:                                              ; preds = %272
  %390 = load i32, i32* %21, align 4
  %391 = load i32, i32* %23, align 4
  %392 = sub nsw i32 %390, %391
  store i32 %392, i32* %25, align 4
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = load i64, i64* @XTENTRYSTART, align 8
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %23, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %25, align 4
  %405 = load i32, i32* @L2XTSLOTSIZE, align 4
  %406 = shl i32 %404, %405
  %407 = call i32 @memmove(i32* %397, i32* %403, i32 %406)
  %408 = load i64, i64* @XTENTRYSTART, align 8
  %409 = load i32, i32* %25, align 4
  %410 = sext i32 %409 to i64
  %411 = add i64 %410, %408
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %25, align 4
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %25, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  store i32* %418, i32** %26, align 8
  %419 = load i32*, i32** %26, align 8
  %420 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %421 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %424 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %427 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %430 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @XT_PUTENTRY(i32* %419, i32 %422, i32 %425, i32 %428, i32 %431)
  %433 = load i32, i32* %21, align 4
  %434 = load i32, i32* %22, align 4
  %435 = icmp slt i32 %433, %434
  br i1 %435, label %436, label %456

436:                                              ; preds = %389
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i32 0, i32 1
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %25, align 4
  %441 = add nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %439, i64 %442
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %445 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %21, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %22, align 4
  %451 = load i32, i32* %21, align 4
  %452 = sub nsw i32 %450, %451
  %453 = load i32, i32* @L2XTSLOTSIZE, align 4
  %454 = shl i32 %452, %453
  %455 = call i32 @memmove(i32* %443, i32* %449, i32 %454)
  br label %456

456:                                              ; preds = %436, %389
  %457 = load i32, i32* %23, align 4
  %458 = sext i32 %457 to i64
  %459 = call i8* @cpu_to_le16(i64 %458)
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %461, i32 0, i32 1
  store i8* %459, i8** %462, align 8
  %463 = load i32, i32* @COMMIT_Nolink, align 4
  %464 = load %struct.inode*, %struct.inode** %8, align 8
  %465 = call i32 @test_cflag(i32 %463, %struct.inode* %464)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %489, label %467

467:                                              ; preds = %456
  %468 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %469 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %481

473:                                              ; preds = %467
  %474 = load i32, i32* %23, align 4
  %475 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %476 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = trunc i64 %478 to i32
  %480 = call i32 @min(i32 %474, i32 %479)
  br label %483

481:                                              ; preds = %467
  %482 = load i32, i32* %23, align 4
  br label %483

483:                                              ; preds = %481, %473
  %484 = phi i32 [ %480, %473 ], [ %482, %481 ]
  %485 = sext i32 %484 to i64
  %486 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %487 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %487, i32 0, i32 0
  store i64 %485, i64* %488, align 8
  br label %489

489:                                              ; preds = %483, %456
  %490 = load i64, i64* @XTENTRYSTART, align 8
  %491 = load i32, i32* %24, align 4
  %492 = sext i32 %491 to i64
  %493 = add i64 %490, %492
  %494 = add i64 %493, 1
  %495 = call i8* @cpu_to_le16(i64 %494)
  %496 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %497, i32 0, i32 1
  store i8* %495, i8** %498, align 8
  br label %499

499:                                              ; preds = %489, %380
  %500 = load i32, i32* @COMMIT_Nolink, align 4
  %501 = load %struct.inode*, %struct.inode** %8, align 8
  %502 = call i32 @test_cflag(i32 %500, %struct.inode* %501)
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %530, label %504

504:                                              ; preds = %499
  %505 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i32 0, i32 1
  %508 = load i8*, i8** %507, align 8
  %509 = call i64 @le16_to_cpu(i8* %508)
  %510 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %511 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = sub i64 %509, %513
  %515 = trunc i64 %514 to i32
  %516 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %517 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 1
  store i32 %515, i32* %518, align 8
  %519 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 1
  %522 = load i8*, i8** %521, align 8
  %523 = call i64 @le16_to_cpu(i8* %522)
  %524 = load i64, i64* @XTENTRYSTART, align 8
  %525 = sub i64 %523, %524
  %526 = trunc i64 %525 to i32
  %527 = load %struct.xtlock*, %struct.xtlock** %31, align 8
  %528 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %528, i32 0, i32 1
  store i32 %526, i32* %529, align 8
  br label %530

530:                                              ; preds = %504, %499
  %531 = load %struct.metapage*, %struct.metapage** %15, align 8
  %532 = load %struct.metapage**, %struct.metapage*** %10, align 8
  store %struct.metapage* %531, %struct.metapage** %532, align 8
  %533 = load i64, i64* %17, align 8
  %534 = load i64*, i64** %11, align 8
  store i64 %533, i64* %534, align 8
  %535 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %537 = call i32 (i8*, %struct.TYPE_10__*, ...) @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %535, %struct.TYPE_10__* %536)
  %538 = load i32, i32* %12, align 4
  store i32 %538, i32* %6, align 4
  br label %548

539:                                              ; preds = %245, %78, %62
  %540 = load i32, i32* %32, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %546

542:                                              ; preds = %539
  %543 = load %struct.inode*, %struct.inode** %8, align 8
  %544 = load i32, i32* %32, align 4
  %545 = call i32 @vfs_dq_free_block(%struct.inode* %543, i32 %544)
  br label %546

546:                                              ; preds = %542, %539
  %547 = load i32, i32* %12, align 4
  store i32 %547, i32* %6, align 4
  br label %548

548:                                              ; preds = %546, %530, %224
  %549 = load i32, i32* %6, align 4
  ret i32 %549
}

declare dso_local %struct.TYPE_10__* @XT_PAGE(%struct.inode*, %struct.metapage*) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i64 @vfs_dq_alloc_block(%struct.inode*, i64) #1

declare dso_local i64 @lengthPXD(i32*) #1

declare dso_local %struct.metapage* @get_metapage(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @jfs_info(i8*, %struct.TYPE_10__*, ...) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @test_cflag(i32, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @XT_PUTENTRY(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XT_GETPAGE(%struct.inode*, i64, %struct.metapage*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @XT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vfs_dq_free_block(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
