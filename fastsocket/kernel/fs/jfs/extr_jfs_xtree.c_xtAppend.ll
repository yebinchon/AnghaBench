; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtAppend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.btstack = type { i32, i32 }
%struct.xtsplit = type { i32, i32, i32, i8*, i8*, %struct.metapage*, %struct.pxdlist* }
%struct.pxdlist = type { i64, i32*, i64 }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"xtAppend: xoff:0x%lx maxblocks:%d xlen:%d xaddr:0x%lx\00", align 1
@XT_INSERT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XAD_NEW = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtAppend(i32 %0, %struct.inode* %1, i32 %2, i8* %3, i32 %4, i32* %5, i8** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.metapage*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.btstack, align 4
  %26 = alloca %struct.xtsplit, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.tlock*, align 8
  %30 = alloca %struct.xtlock*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.pxdlist, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %37 = load i8**, i8*** %16, align 8
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %22, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %33, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %33, align 4
  %45 = load i8*, i8** %22, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = call i32 @jfs_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* @XT_INSERT, align 4
  %51 = call i32 @xtSearch(%struct.inode* %48, i8* %49, i8** %36, i32* %28, %struct.btstack* %25, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %8
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %9, align 4
  br label %270

55:                                               ; preds = %8
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = getelementptr inbounds %struct.btstack, %struct.btstack* %25, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %21, align 8
  %60 = load %struct.metapage*, %struct.metapage** %19, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %62 = load i32, i32* %23, align 4
  %63 = call i32 @XT_GETSEARCH(%struct.inode* %56, i32 %58, i8* %59, %struct.metapage* %60, %struct.TYPE_8__* %61, i32 %62)
  %64 = load i32, i32* %28, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @EEXIST, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %18, align 4
  br label %266

69:                                               ; preds = %55
  %70 = load i8*, i8** %36, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %33, align 4
  %74 = load i8*, i8** %36, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @min(i32 %73, i32 %79)
  store i32 %80, i32* %33, align 4
  br label %81

81:                                               ; preds = %72, %69
  %82 = load i32, i32* @XAD_NEW, align 4
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le16_to_cpu(i32 %88)
  store i32 %89, i32* %24, align 4
  %90 = load i32, i32* %24, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %191

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.btstack, %struct.btstack* %25, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %31, align 4
  %101 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %26, i32 0, i32 6
  store %struct.pxdlist* %34, %struct.pxdlist** %101, align 8
  %102 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %34, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %34, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %34, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32* %106, i32** %35, align 8
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_9__* @JFS_SBI(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %32, align 4
  br label %113

113:                                              ; preds = %135, %98
  %114 = load i32, i32* %31, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %113
  %117 = load %struct.inode*, %struct.inode** %11, align 8
  %118 = load i8*, i8** %22, align 8
  %119 = load i32, i32* %32, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @dbAllocBottomUp(%struct.inode* %117, i8* %118, i8* %121)
  store i32 %122, i32* %18, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load i32*, i32** %35, align 8
  %126 = load i8*, i8** %22, align 8
  %127 = call i32 @PXDaddress(i32* %125, i8* %126)
  %128 = load i32*, i32** %35, align 8
  %129 = load i32, i32* %32, align 4
  %130 = call i32 @PXDlength(i32* %128, i32 %129)
  %131 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %34, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %135

134:                                              ; preds = %116
  br label %266

135:                                              ; preds = %124
  %136 = load i32, i32* %31, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %31, align 4
  %138 = load i32*, i32** %35, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %35, align 8
  %140 = load i32, i32* %32, align 4
  %141 = load i8*, i8** %22, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr i8, i8* %141, i64 %142
  store i8* %143, i8** %22, align 8
  %144 = load i32, i32* %32, align 4
  %145 = load i32, i32* %14, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %113

147:                                              ; preds = %113
  %148 = load i32, i32* %33, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @min(i32 %148, i32 %149)
  store i32 %150, i32* %33, align 4
  %151 = load %struct.inode*, %struct.inode** %11, align 8
  %152 = load i8*, i8** %22, align 8
  %153 = load i32, i32* %33, align 4
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = call i32 @dbAllocBottomUp(%struct.inode* %151, i8* %152, i8* %155)
  store i32 %156, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %266

159:                                              ; preds = %147
  %160 = load %struct.metapage*, %struct.metapage** %19, align 8
  %161 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %26, i32 0, i32 5
  store %struct.metapage* %160, %struct.metapage** %161, align 8
  %162 = load i32, i32* %23, align 4
  %163 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %26, i32 0, i32 0
  store i32 %162, i32* %163, align 8
  %164 = load i32, i32* %12, align 4
  %165 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %26, i32 0, i32 1
  store i32 %164, i32* %165, align 4
  %166 = load i8*, i8** %13, align 8
  %167 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %26, i32 0, i32 4
  store i8* %166, i8** %167, align 8
  %168 = load i32, i32* %33, align 4
  %169 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %26, i32 0, i32 2
  store i32 %168, i32* %169, align 8
  %170 = load i8*, i8** %22, align 8
  %171 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %26, i32 0, i32 3
  store i8* %170, i8** %171, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.inode*, %struct.inode** %11, align 8
  %174 = call i32 @xtSplitUp(i32 %172, %struct.inode* %173, %struct.xtsplit* %26, %struct.btstack* %25)
  store i32 %174, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %159
  %177 = load %struct.inode*, %struct.inode** %11, align 8
  %178 = load i8**, i8*** %16, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = load i32*, i32** %15, align 8
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = call i32 @dbFree(%struct.inode* %177, i8* %179, i8* %183)
  %185 = load i32, i32* %18, align 4
  store i32 %185, i32* %9, align 4
  br label %270

186:                                              ; preds = %159
  %187 = load i8*, i8** %22, align 8
  %188 = load i8**, i8*** %16, align 8
  store i8* %187, i8** %188, align 8
  %189 = load i32, i32* %33, align 4
  %190 = load i32*, i32** %15, align 8
  store i32 %189, i32* %190, align 4
  store i32 0, i32* %9, align 4
  br label %270

191:                                              ; preds = %97
  %192 = load %struct.inode*, %struct.inode** %11, align 8
  %193 = load i8*, i8** %22, align 8
  %194 = load i32, i32* %33, align 4
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = call i32 @dbAllocBottomUp(%struct.inode* %192, i8* %193, i8* %196)
  store i32 %197, i32* %18, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %266

200:                                              ; preds = %191
  %201 = load %struct.metapage*, %struct.metapage** %19, align 8
  %202 = load %struct.inode*, %struct.inode** %11, align 8
  %203 = call i32 @BT_MARK_DIRTY(%struct.metapage* %201, %struct.inode* %202)
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.inode*, %struct.inode** %11, align 8
  %206 = load %struct.metapage*, %struct.metapage** %19, align 8
  %207 = load i32, i32* @tlckXTREE, align 4
  %208 = load i32, i32* @tlckGROW, align 4
  %209 = or i32 %207, %208
  %210 = call %struct.tlock* @txLock(i32 %204, %struct.inode* %205, %struct.metapage* %206, i32 %209)
  store %struct.tlock* %210, %struct.tlock** %29, align 8
  %211 = load %struct.tlock*, %struct.tlock** %29, align 8
  %212 = getelementptr inbounds %struct.tlock, %struct.tlock* %211, i32 0, i32 0
  %213 = bitcast i32* %212 to %struct.xtlock*
  store %struct.xtlock* %213, %struct.xtlock** %30, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %23, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32* %219, i32** %27, align 8
  %220 = load i32*, i32** %27, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load i8*, i8** %13, align 8
  %223 = load i32, i32* %33, align 4
  %224 = load i8*, i8** %22, align 8
  %225 = call i32 @XT_PUTENTRY(i32* %220, i32 %221, i8* %222, i32 %223, i8* %224)
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = call i32 @le16_add_cpu(i32* %228, i32 1)
  %230 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %231 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %200
  %236 = load i32, i32* %23, align 4
  %237 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %238 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @min(i32 %236, i32 %240)
  br label %244

242:                                              ; preds = %200
  %243 = load i32, i32* %23, align 4
  br label %244

244:                                              ; preds = %242, %235
  %245 = phi i32 [ %241, %235 ], [ %243, %242 ]
  %246 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %247 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  store i32 %245, i32* %248, align 4
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @le16_to_cpu(i32 %252)
  %254 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %255 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %253, %257
  %259 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %260 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  store i32 %258, i32* %261, align 4
  %262 = load i8*, i8** %22, align 8
  %263 = load i8**, i8*** %16, align 8
  store i8* %262, i8** %263, align 8
  %264 = load i32, i32* %33, align 4
  %265 = load i32*, i32** %15, align 8
  store i32 %264, i32* %265, align 4
  br label %266

266:                                              ; preds = %244, %199, %158, %134, %66
  %267 = load %struct.metapage*, %struct.metapage** %19, align 8
  %268 = call i32 @XT_PUTPAGE(%struct.metapage* %267)
  %269 = load i32, i32* %18, align 4
  store i32 %269, i32* %9, align 4
  br label %270

270:                                              ; preds = %266, %186, %176, %53
  %271 = load i32, i32* %9, align 4
  ret i32 %271
}

declare dso_local i32 @jfs_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xtSearch(%struct.inode*, i8*, i8**, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @XT_GETSEARCH(%struct.inode*, i32, i8*, %struct.metapage*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_9__* @JFS_SBI(i32) #1

declare dso_local i32 @dbAllocBottomUp(%struct.inode*, i8*, i8*) #1

declare dso_local i32 @PXDaddress(i32*, i8*) #1

declare dso_local i32 @PXDlength(i32*, i32) #1

declare dso_local i32 @xtSplitUp(i32, %struct.inode*, %struct.xtsplit*, %struct.btstack*) #1

declare dso_local i32 @dbFree(%struct.inode*, i8*, i8*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @XT_PUTENTRY(i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @XT_PUTPAGE(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
