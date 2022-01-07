; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_store_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_store_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.afs_writeback = type { i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32, i32, i32, i32*, i64, i64, i64, i32, i32, i32, %struct.afs_vnode*, i32, %struct.afs_writeback* }

@.str = private unnamed_addr constant [14 x i8] c",%x,{%x:%u},,\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"size %llx, at %llx, i_size %llx\00", align 1
@afs_RXFSStoreData = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSSTOREDATA = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_store_data(%struct.afs_server* %0, %struct.afs_writeback* %1, i64 %2, i64 %3, i32 %4, i32 %5, %struct.afs_wait_mode* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.afs_server*, align 8
  %10 = alloca %struct.afs_writeback*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.afs_wait_mode*, align 8
  %16 = alloca %struct.afs_vnode*, align 8
  %17 = alloca %struct.afs_call*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %9, align 8
  store %struct.afs_writeback* %1, %struct.afs_writeback** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.afs_wait_mode* %6, %struct.afs_wait_mode** %15, align 8
  %22 = load %struct.afs_writeback*, %struct.afs_writeback** %10, align 8
  %23 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %22, i32 0, i32 1
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %23, align 8
  store %struct.afs_vnode* %24, %struct.afs_vnode** %16, align 8
  %25 = load %struct.afs_writeback*, %struct.afs_writeback** %10, align 8
  %26 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @key_serial(i32 %27)
  %29 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %30 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %34 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %36)
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sub i32 %38, %39
  store i32 %40, i32* %18, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %7
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub nsw i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %44, %7
  %54 = load i64, i64* %11, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = shl i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %19, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %19, align 4
  %61 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %62 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %61, i32 0, i32 2
  %63 = call i32 @i_size_read(%struct.TYPE_6__* %62)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %18, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %20, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %20, align 4
  br label %73

73:                                               ; preds = %69, %53
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %75, i64 %77, i64 %79)
  %81 = load i32, i32* %19, align 4
  %82 = ashr i32 %81, 32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %20, align 4
  %86 = ashr i32 %85, 32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %18, align 4
  %90 = ashr i32 %89, 32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %93, %94
  %96 = ashr i32 %95, 32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %92, %88, %84, %73
  %99 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %100 = load %struct.afs_writeback*, %struct.afs_writeback** %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %20, align 4
  %108 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %15, align 8
  %109 = call i32 @afs_fs_store_data64(%struct.afs_server* %99, %struct.afs_writeback* %100, i64 %101, i64 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, %struct.afs_wait_mode* %108)
  store i32 %109, i32* %8, align 4
  br label %228

110:                                              ; preds = %92
  %111 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSStoreData, i32 52, i32 108)
  store %struct.afs_call* %111, %struct.afs_call** %17, align 8
  %112 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %113 = icmp ne %struct.afs_call* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %228

117:                                              ; preds = %110
  %118 = load %struct.afs_writeback*, %struct.afs_writeback** %10, align 8
  %119 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %120 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %119, i32 0, i32 12
  store %struct.afs_writeback* %118, %struct.afs_writeback** %120, align 8
  %121 = load %struct.afs_writeback*, %struct.afs_writeback** %10, align 8
  %122 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %125 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %124, i32 0, i32 11
  store i32 %123, i32* %125, align 8
  %126 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %127 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %128 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %127, i32 0, i32 10
  store %struct.afs_vnode* %126, %struct.afs_vnode** %128, align 8
  %129 = load i32, i32* @FS_SERVICE, align 4
  %130 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %131 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %130, i32 0, i32 9
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @AFS_FS_PORT, align 4
  %133 = call i32 @htons(i32 %132)
  %134 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %135 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 4
  %136 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %137 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %141 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 8
  %142 = load i64, i64* %11, align 8
  %143 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %144 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %143, i32 0, i32 6
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %147 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %146, i32 0, i32 5
  store i64 %145, i64* %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %150 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %153 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %155 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  %156 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %157 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  %161 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %162 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %161, i32 0, i32 4
  store i64 %160, i64* %162, align 8
  %163 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %164 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %21, align 8
  %166 = load i32, i32* @FSSTOREDATA, align 4
  %167 = call i8* @htonl(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load i32*, i32** %21, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %21, align 8
  store i32 %168, i32* %169, align 4
  %171 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %172 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @htonl(i32 %174)
  %176 = ptrtoint i8* %175 to i32
  %177 = load i32*, i32** %21, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %21, align 8
  store i32 %176, i32* %177, align 4
  %179 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %180 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @htonl(i32 %182)
  %184 = ptrtoint i8* %183 to i32
  %185 = load i32*, i32** %21, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %21, align 8
  store i32 %184, i32* %185, align 4
  %187 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %188 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @htonl(i32 %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load i32*, i32** %21, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %21, align 8
  store i32 %192, i32* %193, align 4
  %195 = load i32*, i32** %21, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %21, align 8
  store i32 0, i32* %195, align 4
  %197 = load i32*, i32** %21, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %21, align 8
  store i32 0, i32* %197, align 4
  %199 = load i32*, i32** %21, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %21, align 8
  store i32 0, i32* %199, align 4
  %201 = load i32*, i32** %21, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %21, align 8
  store i32 0, i32* %201, align 4
  %203 = load i32*, i32** %21, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %21, align 8
  store i32 0, i32* %203, align 4
  %205 = load i32*, i32** %21, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %21, align 8
  store i32 0, i32* %205, align 4
  %207 = load i32, i32* %19, align 4
  %208 = call i8* @htonl(i32 %207)
  %209 = ptrtoint i8* %208 to i32
  %210 = load i32*, i32** %21, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %21, align 8
  store i32 %209, i32* %210, align 4
  %212 = load i32, i32* %18, align 4
  %213 = call i8* @htonl(i32 %212)
  %214 = ptrtoint i8* %213 to i32
  %215 = load i32*, i32** %21, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %21, align 8
  store i32 %214, i32* %215, align 4
  %217 = load i32, i32* %20, align 4
  %218 = call i8* @htonl(i32 %217)
  %219 = ptrtoint i8* %218 to i32
  %220 = load i32*, i32** %21, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %21, align 8
  store i32 %219, i32* %220, align 4
  %222 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %223 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %222, i32 0, i32 0
  %224 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %225 = load i32, i32* @GFP_NOFS, align 4
  %226 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %15, align 8
  %227 = call i32 @afs_make_call(i32* %223, %struct.afs_call* %224, i32 %225, %struct.afs_wait_mode* %226)
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %117, %114, %98
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @i_size_read(%struct.TYPE_6__*) #1

declare dso_local i32 @_debug(i8*, i64, i64, i64) #1

declare dso_local i32 @afs_fs_store_data64(%struct.afs_server*, %struct.afs_writeback*, i64, i64, i32, i32, i32, i32, i32, %struct.afs_wait_mode*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
