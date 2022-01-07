; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i64*, i64*, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64*, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.nfsd4_readdir = type { i32, i32, i64*, %struct.TYPE_10__, i32*, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@nfserr_resource = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@nfserr_toosmall = common dso_local global i64 0, align 8
@nfsd4_encode_dirent = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@nfserr_symlink = common dso_local global i64 0, align 8
@nfserr_notdir = common dso_local global i64 0, align 8
@nfserr_eof = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_readdir*)* @nfsd4_encode_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_readdir(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_readdir* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfsd4_readdir*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nfsd4_readdir* %2, %struct.nfsd4_readdir** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %4, align 8
  br label %244

18:                                               ; preds = %3
  %19 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @nfserr_resource, align 8
  store i64 %26, i64* %4, align 8
  br label %244

27:                                               ; preds = %18
  %28 = call i32 @RESERVE_SPACE(i32 8)
  %29 = load i64*, i64** %13, align 8
  store i64* %29, i64** %11, align 8
  %30 = call i32 @WRITE32(i32 0)
  %31 = call i32 @WRITE32(i32 0)
  %32 = call i32 (...) @ADJUST_ARGS()
  %33 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = bitcast i64* %35 to i8*
  %37 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %38 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %36 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %51 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 8
  %57 = load i64*, i64** %13, align 8
  store i64* %57, i64** %12, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %61 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %27
  %65 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %66 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %27
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 2
  %71 = sub nsw i32 %70, 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* @nfserr_toosmall, align 8
  store i64 %75, i64* %6, align 8
  br label %240

76:                                               ; preds = %68
  %77 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %78 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %83 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %81, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i64* @page_address(i32 %90)
  store i64* %91, i64** %10, align 8
  %92 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %93 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %97 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i64*, i64** %10, align 8
  %99 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %100 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %99, i32 0, i32 2
  store i64* %98, i64** %100, align 8
  %101 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %102 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %101, i32 0, i32 4
  store i32* null, i32** %102, align 8
  %103 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %104 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %9, align 4
  %106 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %107 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %110 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %113 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %112, i32 0, i32 3
  %114 = load i32, i32* @nfsd4_encode_dirent, align 4
  %115 = call i64 @nfsd_readdir(i32 %108, i32 %111, i32* %9, %struct.TYPE_10__* %113, i32 %114)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @nfs_ok, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %76
  %120 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %121 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @nfserr_toosmall, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %128 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load i64*, i64** %10, align 8
  %131 = icmp eq i64* %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i64, i64* @nfserr_toosmall, align 8
  store i64 %133, i64* %6, align 8
  br label %134

134:                                              ; preds = %132, %126, %119, %76
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @nfserr_symlink, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i64, i64* @nfserr_notdir, align 8
  store i64 %139, i64* %6, align 8
  br label %140

140:                                              ; preds = %138, %134
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %240

144:                                              ; preds = %140
  %145 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %146 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %151 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @xdr_encode_hyper(i32* %152, i32 %153)
  br label %155

155:                                              ; preds = %149, %144
  %156 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %157 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  store i64* %158, i64** %13, align 8
  %159 = load i64*, i64** %13, align 8
  %160 = getelementptr inbounds i64, i64* %159, i32 1
  store i64* %160, i64** %13, align 8
  store i64 0, i64* %159, align 8
  %161 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %162 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @nfserr_eof, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i64 @htonl(i32 %167)
  %169 = load i64*, i64** %13, align 8
  %170 = getelementptr inbounds i64, i64* %169, i32 1
  store i64* %170, i64** %13, align 8
  store i64 %168, i64* %169, align 8
  %171 = load i64*, i64** %13, align 8
  %172 = bitcast i64* %171 to i8*
  %173 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %174 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %173, i32 0, i32 3
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %179 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %178, i32 0, i32 3
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %177, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i64* @page_address(i32 %186)
  %188 = bitcast i64* %187 to i8*
  %189 = ptrtoint i8* %172 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %194 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %193, i32 0, i32 2
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 %192, i32* %196, align 8
  %197 = load i64*, i64** %12, align 8
  %198 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %199 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %198, i32 0, i32 2
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  store i64* %197, i64** %204, align 8
  %205 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %206 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %205, i32 0, i32 2
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  %212 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %213 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %212, i32 0, i32 2
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %221 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %220, i32 0, i32 0
  store i64* %219, i64** %221, align 8
  %222 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %223 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load i32, i32* @PAGE_SIZE, align 4
  %226 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %227 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %226, i32 0, i32 2
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %225, %233
  %235 = sdiv i32 %234, 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %224, i64 %236
  %238 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %239 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %238, i32 0, i32 1
  store i64* %237, i64** %239, align 8
  store i64 0, i64* %4, align 8
  br label %244

240:                                              ; preds = %143, %74
  %241 = load i64*, i64** %11, align 8
  store i64* %241, i64** %13, align 8
  %242 = call i32 (...) @ADJUST_ARGS()
  %243 = load i64, i64* %6, align 8
  store i64 %243, i64* %4, align 8
  br label %244

244:                                              ; preds = %240, %155, %25, %16
  %245 = load i64, i64* %4, align 8
  ret i64 %245
}

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

declare dso_local i64* @page_address(i32) #1

declare dso_local i64 @nfsd_readdir(i32, i32, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @xdr_encode_hyper(i32*, i32) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
