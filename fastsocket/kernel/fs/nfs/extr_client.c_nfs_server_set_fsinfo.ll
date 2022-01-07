; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_server_set_fsinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_server_set_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NFS_MAX_FILE_IO_SIZE = common dso_local global i8* null, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@NFS_MAX_READAHEAD = common dso_local global i32 0, align 4
@NFS_MAX_READDIR_PAGES = common dso_local global i32 0, align 4
@NFS_MOUNT_NOAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @nfs_server_set_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_server_set_fsinfo(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca i64, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %8 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @nfs_block_size(i32 %15, i32* null)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %12, %3
  %21 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @nfs_block_size(i32 %28, i32* null)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 512
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %48 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @nfs_block_size(i32 %49, i32* null)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %38, %33
  %55 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %56 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 512
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %61 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %64 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %69 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @nfs_block_size(i32 %70, i32* null)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %74 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %59, %54
  %76 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %77 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @rpc_max_payload(i32 %78)
  %80 = call i8* @nfs_block_size(i32 %79, i32* null)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %7, align 8
  %82 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %83 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %7, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %75
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %92 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %75
  %94 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %95 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load i8*, i8** @NFS_MAX_FILE_IO_SIZE, align 8
  %100 = icmp ugt i8* %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i8*, i8** @NFS_MAX_FILE_IO_SIZE, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %105 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %93
  %107 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %108 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %111 = add nsw i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %114 = ashr i32 %112, %113
  %115 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %116 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %118 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %117, i32 0, i32 14
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %119, align 8
  %120 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %121 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @NFS_MAX_READAHEAD, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %126 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %125, i32 0, i32 14
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 8
  %128 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %129 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %7, align 8
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %106
  %135 = load i64, i64* %7, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %138 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %106
  %140 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %141 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = load i8*, i8** @NFS_MAX_FILE_IO_SIZE, align 8
  %146 = icmp ugt i8* %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load i8*, i8** @NFS_MAX_FILE_IO_SIZE, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %151 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %139
  %153 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %154 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %157 = add nsw i32 %155, %156
  %158 = sub nsw i32 %157, 1
  %159 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %160 = ashr i32 %158, %159
  %161 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %162 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %164 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %165 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %166 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @set_pnfs_layoutdriver(%struct.nfs_server* %163, %struct.nfs_fh* %164, i32 %167)
  %169 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %170 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @nfs_block_bits(i32 %171, i32* null)
  %173 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %174 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %173, i32 0, i32 13
  store i32 %172, i32* %174, align 8
  %175 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %176 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @nfs_block_size(i32 %177, i32* null)
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %181 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %183 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %186 = load i32, i32* @NFS_MAX_READDIR_PAGES, align 4
  %187 = mul nsw i32 %185, %186
  %188 = icmp sgt i32 %184, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %152
  %190 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %191 = load i32, i32* @NFS_MAX_READDIR_PAGES, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %194 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %189, %152
  %196 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %197 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %200 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %198, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %195
  %204 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %205 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %208 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %203, %195
  %210 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %211 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @NFS_MOUNT_NOAC, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %209
  %217 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %218 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %217, i32 0, i32 11
  store i64 0, i64* %218, align 8
  %219 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %220 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %219, i32 0, i32 12
  store i64 0, i64* %220, align 8
  %221 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %222 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %221, i32 0, i32 9
  store i64 0, i64* %222, align 8
  %223 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %224 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %223, i32 0, i32 10
  store i64 0, i64* %224, align 8
  br label %225

225:                                              ; preds = %216, %209
  %226 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %227 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %230 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %229, i32 0, i32 8
  store i32 %228, i32* %230, align 8
  %231 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %232 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %235 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %234, i32 0, i32 7
  store i32 %233, i32* %235, align 4
  %236 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %237 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %240 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 100
  %243 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %244 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 100
  %247 = call i32 @rpc_setbufsize(i32 %238, i32 %242, i32 %246)
  ret void
}

declare dso_local i8* @nfs_block_size(i32, i32*) #1

declare dso_local i32 @rpc_max_payload(i32) #1

declare dso_local i32 @set_pnfs_layoutdriver(%struct.nfs_server*, %struct.nfs_fh*, i32) #1

declare dso_local i32 @nfs_block_bits(i32, i32*) #1

declare dso_local i32 @rpc_setbufsize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
