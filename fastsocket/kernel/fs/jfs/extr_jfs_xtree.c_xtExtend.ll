; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtExtend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtExtend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.btstack = type { i32 }
%struct.xtsplit = type { i32, i32, i32, i32*, i64, i64, %struct.metapage* }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"xtExtend: nxoff:0x%lx nxlen:0x%x\00", align 1
@XT_INSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"xtExtend: xtSearch did not find extent\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"xtExtend: extension is not contiguous\00", align 1
@COMMIT_Nolink = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4
@MAXXLEN = common dso_local global i64 0, align 8
@XAD_NEW = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@BT_INTERNAL = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i32 0, align 4
@XAD_EXTENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtExtend(i32 %0, %struct.inode* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btstack, align 4
  %21 = alloca %struct.xtsplit, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.tlock*, align 8
  %25 = alloca %struct.xtlock*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.xtlock* null, %struct.xtlock** %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @jfs_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28)
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub nsw i64 %31, 1
  %33 = load i32, i32* @XT_INSERT, align 4
  %34 = call i32 @xtSearch(%struct.inode* %30, i64 %32, i32* null, i32* %13, %struct.btstack* %20, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %310

38:                                               ; preds = %5
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.btstack, %struct.btstack* %20, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %16, align 8
  %43 = load %struct.metapage*, %struct.metapage** %14, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @XT_GETSEARCH(%struct.inode* %39, i32 %41, i64 %42, %struct.metapage* %43, %struct.TYPE_14__* %44, i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.metapage*, %struct.metapage** %14, align 8
  %51 = call i32 @XT_PUTPAGE(%struct.metapage* %50)
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @jfs_error(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %310

58:                                               ; preds = %38
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %63
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %22, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %66 = call i64 @offsetXAD(%struct.TYPE_15__* %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %68 = call i64 @lengthXAD(%struct.TYPE_15__* %67)
  %69 = add nsw i64 %66, %68
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %58
  %73 = load %struct.metapage*, %struct.metapage** %14, align 8
  %74 = call i32 @XT_PUTPAGE(%struct.metapage* %73)
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @jfs_error(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %310

81:                                               ; preds = %58
  %82 = load %struct.metapage*, %struct.metapage** %14, align 8
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = call i32 @BT_MARK_DIRTY(%struct.metapage* %82, %struct.inode* %83)
  %85 = load i32, i32* @COMMIT_Nolink, align 4
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = call i32 @test_cflag(i32 %85, %struct.inode* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = load %struct.metapage*, %struct.metapage** %14, align 8
  %93 = load i32, i32* @tlckXTREE, align 4
  %94 = load i32, i32* @tlckGROW, align 4
  %95 = or i32 %93, %94
  %96 = call %struct.tlock* @txLock(i32 %90, %struct.inode* %91, %struct.metapage* %92, i32 %95)
  store %struct.tlock* %96, %struct.tlock** %24, align 8
  %97 = load %struct.tlock*, %struct.tlock** %24, align 8
  %98 = getelementptr inbounds %struct.tlock, %struct.tlock* %97, i32 0, i32 0
  %99 = bitcast i32* %98 to %struct.xtlock*
  store %struct.xtlock* %99, %struct.xtlock** %25, align 8
  br label %100

100:                                              ; preds = %89, %81
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %102 = call i64 @lengthXAD(%struct.TYPE_15__* %101)
  %103 = load i64, i64* %10, align 8
  %104 = add nsw i64 %102, %103
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @MAXXLEN, align 8
  %107 = sub nsw i64 %105, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %19, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %252

111:                                              ; preds = %100
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %113 = call i64 @offsetXAD(%struct.TYPE_15__* %112)
  %114 = load i64, i64* @MAXXLEN, align 8
  %115 = add nsw i64 %113, %114
  store i64 %115, i64* %9, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %117 = call i64 @addressXAD(%struct.TYPE_15__* %116)
  %118 = load i64, i64* @MAXXLEN, align 8
  %119 = add nsw i64 %117, %118
  store i64 %119, i64* %23, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le16_to_cpu(i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @le16_to_cpu(i32 %129)
  %131 = icmp eq i32 %125, %130
  br i1 %131, label %132, label %226

132:                                              ; preds = %111
  %133 = load %struct.metapage*, %struct.metapage** %14, align 8
  %134 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %21, i32 0, i32 6
  store %struct.metapage* %133, %struct.metapage** %134, align 8
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  %137 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %21, i32 0, i32 0
  store i32 %136, i32* %137, align 8
  %138 = load i32, i32* @XAD_NEW, align 4
  %139 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %21, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %21, i32 0, i32 5
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* %19, align 4
  %143 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %21, i32 0, i32 2
  store i32 %142, i32* %143, align 8
  %144 = load i64, i64* %23, align 8
  %145 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %21, i32 0, i32 4
  store i64 %144, i64* %145, align 8
  %146 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %21, i32 0, i32 3
  store i32* null, i32** %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = call i32 @xtSplitUp(i32 %147, %struct.inode* %148, %struct.xtsplit* %21, %struct.btstack* %20)
  store i32 %149, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %132
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %6, align 4
  br label %310

153:                                              ; preds = %132
  %154 = load %struct.inode*, %struct.inode** %8, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.metapage*, %struct.metapage** %14, align 8
  %157 = load i32, i32* @PSIZE, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @XT_GETPAGE(%struct.inode* %154, i64 %155, %struct.metapage* %156, i32 %157, %struct.TYPE_14__* %158, i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %6, align 4
  br label %310

165:                                              ; preds = %153
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @BT_INTERNAL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %225

173:                                              ; preds = %165
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @XTENTRYSTART, align 4
  %179 = add nsw i32 %178, 1
  %180 = call i32 @cpu_to_le16(i32 %179)
  %181 = icmp eq i32 %177, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @ASSERT(i32 %182)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %185, align 8
  %187 = load i32, i32* @XTENTRYSTART, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i64 %188
  store %struct.TYPE_15__* %189, %struct.TYPE_15__** %22, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %191 = call i64 @addressXAD(%struct.TYPE_15__* %190)
  store i64 %191, i64* %16, align 8
  %192 = load %struct.metapage*, %struct.metapage** %14, align 8
  %193 = call i32 @XT_PUTPAGE(%struct.metapage* %192)
  %194 = load %struct.inode*, %struct.inode** %8, align 8
  %195 = load i64, i64* %16, align 8
  %196 = load %struct.metapage*, %struct.metapage** %14, align 8
  %197 = load i32, i32* @PSIZE, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @XT_GETPAGE(%struct.inode* %194, i64 %195, %struct.metapage* %196, i32 %197, %struct.TYPE_14__* %198, i32 %199)
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %173
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %6, align 4
  br label %310

205:                                              ; preds = %173
  %206 = load %struct.metapage*, %struct.metapage** %14, align 8
  %207 = load %struct.inode*, %struct.inode** %8, align 8
  %208 = call i32 @BT_MARK_DIRTY(%struct.metapage* %206, %struct.inode* %207)
  %209 = load i32, i32* @COMMIT_Nolink, align 4
  %210 = load %struct.inode*, %struct.inode** %8, align 8
  %211 = call i32 @test_cflag(i32 %209, %struct.inode* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %205
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.inode*, %struct.inode** %8, align 8
  %216 = load %struct.metapage*, %struct.metapage** %14, align 8
  %217 = load i32, i32* @tlckXTREE, align 4
  %218 = load i32, i32* @tlckGROW, align 4
  %219 = or i32 %217, %218
  %220 = call %struct.tlock* @txLock(i32 %214, %struct.inode* %215, %struct.metapage* %216, i32 %219)
  store %struct.tlock* %220, %struct.tlock** %24, align 8
  %221 = load %struct.tlock*, %struct.tlock** %24, align 8
  %222 = getelementptr inbounds %struct.tlock, %struct.tlock* %221, i32 0, i32 0
  %223 = bitcast i32* %222 to %struct.xtlock*
  store %struct.xtlock* %223, %struct.xtlock** %25, align 8
  br label %224

224:                                              ; preds = %213, %205
  br label %225

225:                                              ; preds = %224, %165
  br label %244

226:                                              ; preds = %111
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = load i32, i32* %17, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i64 %232
  store %struct.TYPE_15__* %233, %struct.TYPE_15__** %22, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %235 = load i32, i32* @XAD_NEW, align 4
  %236 = load i64, i64* %9, align 8
  %237 = load i32, i32* %19, align 4
  %238 = load i64, i64* %23, align 8
  %239 = call i32 @XT_PUTENTRY(%struct.TYPE_15__* %234, i32 %235, i64 %236, i32 %237, i64 %238)
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = call i32 @le16_add_cpu(i32* %242, i32 1)
  br label %244

244:                                              ; preds = %226, %225
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i64 %249
  store %struct.TYPE_15__* %250, %struct.TYPE_15__** %22, align 8
  %251 = load i64, i64* @MAXXLEN, align 8
  store i64 %251, i64* %10, align 8
  br label %252

252:                                              ; preds = %244, %110
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %254 = load i64, i64* %10, align 8
  %255 = call i32 @XADlength(%struct.TYPE_15__* %253, i64 %254)
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @XAD_NEW, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %252
  %263 = load i32, i32* @XAD_EXTENDED, align 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %262, %252
  %269 = load i32, i32* @COMMIT_Nolink, align 4
  %270 = load %struct.inode*, %struct.inode** %8, align 8
  %271 = call i32 @test_cflag(i32 %269, %struct.inode* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %306, label %273

273:                                              ; preds = %268
  %274 = load %struct.xtlock*, %struct.xtlock** %25, align 8
  %275 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %273
  %280 = load i32, i32* %17, align 4
  %281 = load %struct.xtlock*, %struct.xtlock** %25, align 8
  %282 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @min(i32 %280, i32 %284)
  br label %288

286:                                              ; preds = %273
  %287 = load i32, i32* %17, align 4
  br label %288

288:                                              ; preds = %286, %279
  %289 = phi i32 [ %285, %279 ], [ %287, %286 ]
  %290 = load %struct.xtlock*, %struct.xtlock** %25, align 8
  %291 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  store i32 %289, i32* %292, align 4
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @le16_to_cpu(i32 %296)
  %298 = load %struct.xtlock*, %struct.xtlock** %25, align 8
  %299 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = sub nsw i32 %297, %301
  %303 = load %struct.xtlock*, %struct.xtlock** %25, align 8
  %304 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 1
  store i32 %302, i32* %305, align 4
  br label %306

306:                                              ; preds = %288, %268
  %307 = load %struct.metapage*, %struct.metapage** %14, align 8
  %308 = call i32 @XT_PUTPAGE(%struct.metapage* %307)
  %309 = load i32, i32* %12, align 4
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %306, %203, %163, %151, %72, %49, %36
  %311 = load i32, i32* %6, align 4
  ret i32 %311
}

declare dso_local i32 @jfs_info(i8*, i32, i64) #1

declare dso_local i32 @xtSearch(%struct.inode*, i64, i32*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @XT_GETSEARCH(%struct.inode*, i32, i64, %struct.metapage*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @XT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i64 @offsetXAD(%struct.TYPE_15__*) #1

declare dso_local i64 @lengthXAD(%struct.TYPE_15__*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local i32 @test_cflag(i32, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i64 @addressXAD(%struct.TYPE_15__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @xtSplitUp(i32, %struct.inode*, %struct.xtsplit*, %struct.btstack*) #1

declare dso_local i32 @XT_GETPAGE(%struct.inode*, i64, %struct.metapage*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @XT_PUTENTRY(%struct.TYPE_15__*, i32, i64, i32, i64) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @XADlength(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
