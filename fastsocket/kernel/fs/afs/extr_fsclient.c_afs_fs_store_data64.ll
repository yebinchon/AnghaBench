; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_store_data64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_store_data64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.afs_writeback = type { i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32, i32, i32, i32*, i64, i8*, i8*, i32, i32, i32, %struct.afs_vnode*, i32, %struct.afs_writeback* }

@.str = private unnamed_addr constant [14 x i8] c",%x,{%x:%u},,\00", align 1
@afs_RXFSStoreData64 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSSTOREDATA64 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_server*, %struct.afs_writeback*, i8*, i8*, i32, i32, i32, i32, i32, %struct.afs_wait_mode*)* @afs_fs_store_data64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_fs_store_data64(%struct.afs_server* %0, %struct.afs_writeback* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.afs_wait_mode* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.afs_server*, align 8
  %13 = alloca %struct.afs_writeback*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.afs_wait_mode*, align 8
  %22 = alloca %struct.afs_vnode*, align 8
  %23 = alloca %struct.afs_call*, align 8
  %24 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %12, align 8
  store %struct.afs_writeback* %1, %struct.afs_writeback** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.afs_wait_mode* %9, %struct.afs_wait_mode** %21, align 8
  %25 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %26 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %25, i32 0, i32 1
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %26, align 8
  store %struct.afs_vnode* %27, %struct.afs_vnode** %22, align 8
  %28 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %29 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @key_serial(i32 %30)
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %33 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %37 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35, i32 %39)
  %41 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSStoreData64, i32 64, i32 108)
  store %struct.afs_call* %41, %struct.afs_call** %23, align 8
  %42 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %43 = icmp ne %struct.afs_call* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %10
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %176

47:                                               ; preds = %10
  %48 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 12
  store %struct.afs_writeback* %48, %struct.afs_writeback** %50, align 8
  %51 = load %struct.afs_writeback*, %struct.afs_writeback** %13, align 8
  %52 = getelementptr inbounds %struct.afs_writeback, %struct.afs_writeback* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 8
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %57 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %58 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %57, i32 0, i32 10
  store %struct.afs_vnode* %56, %struct.afs_vnode** %58, align 8
  %59 = load i32, i32* @FS_SERVICE, align 4
  %60 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %61 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @AFS_FS_PORT, align 4
  %63 = call i32 @htons(i32 %62)
  %64 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 4
  %66 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %67 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %71 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %74 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %77 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %80 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %83 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %85 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %87 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %92 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %94 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %24, align 8
  %96 = load i32, i32* @FSSTOREDATA64, align 4
  %97 = call i8* @htonl(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load i32*, i32** %24, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %24, align 8
  store i32 %98, i32* %99, align 4
  %101 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %102 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @htonl(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %24, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %24, align 8
  store i32 %106, i32* %107, align 4
  %109 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %110 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @htonl(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load i32*, i32** %24, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %24, align 8
  store i32 %114, i32* %115, align 4
  %117 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %118 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @htonl(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load i32*, i32** %24, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %24, align 8
  store i32 %122, i32* %123, align 4
  %125 = load i32*, i32** %24, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %24, align 8
  store i32 0, i32* %125, align 4
  %127 = load i32*, i32** %24, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %24, align 8
  store i32 0, i32* %127, align 4
  %129 = load i32*, i32** %24, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %24, align 8
  store i32 0, i32* %129, align 4
  %131 = load i32*, i32** %24, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %24, align 8
  store i32 0, i32* %131, align 4
  %133 = load i32*, i32** %24, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %24, align 8
  store i32 0, i32* %133, align 4
  %135 = load i32*, i32** %24, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %24, align 8
  store i32 0, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = ashr i32 %137, 32
  %139 = call i8* @htonl(i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load i32*, i32** %24, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %24, align 8
  store i32 %140, i32* %141, align 4
  %143 = load i32, i32* %19, align 4
  %144 = call i8* @htonl(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** %24, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %24, align 8
  store i32 %145, i32* %146, align 4
  %148 = load i32, i32* %18, align 4
  %149 = ashr i32 %148, 32
  %150 = call i8* @htonl(i32 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load i32*, i32** %24, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %24, align 8
  store i32 %151, i32* %152, align 4
  %154 = load i32, i32* %18, align 4
  %155 = call i8* @htonl(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load i32*, i32** %24, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %24, align 8
  store i32 %156, i32* %157, align 4
  %159 = load i32, i32* %20, align 4
  %160 = ashr i32 %159, 32
  %161 = call i8* @htonl(i32 %160)
  %162 = ptrtoint i8* %161 to i32
  %163 = load i32*, i32** %24, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %24, align 8
  store i32 %162, i32* %163, align 4
  %165 = load i32, i32* %20, align 4
  %166 = call i8* @htonl(i32 %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load i32*, i32** %24, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %24, align 8
  store i32 %167, i32* %168, align 4
  %170 = load %struct.afs_server*, %struct.afs_server** %12, align 8
  %171 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %170, i32 0, i32 0
  %172 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %173 = load i32, i32* @GFP_NOFS, align 4
  %174 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %21, align 8
  %175 = call i32 @afs_make_call(i32* %171, %struct.afs_call* %172, i32 %173, %struct.afs_wait_mode* %174)
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %47, %44
  %177 = load i32, i32* %11, align 4
  ret i32 %177
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

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
