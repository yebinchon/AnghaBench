; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsock_alloc_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsock_alloc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8* }
%struct.socket = type { %struct.file* }
%struct.file = type { i32, i32, %struct.path, i32*, i32*, %struct.socket*, i64, i32*, i32 }
%struct.path = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.fsock_alloc_file.name = private unnamed_addr constant %struct.qstr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, align 8
@ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Socket 0x%p get unused fd failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Socket 0x%p allocate dentry failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fastsocket_mnt = common dso_local global i32 0, align 4
@fsocket_file_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Socket 0x%p allocate empty file failed\0A\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Allocate file 0x%p\0A\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_FASTSOCKET = common dso_local global i32 0, align 4
@enable_fast_epoll = common dso_local global i64 0, align 8
@FMODE_BIND_EPI = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"fsock_alloc_file: file(%p) dentry(%p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.file**, i32)* @fsock_alloc_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsock_alloc_file(%struct.socket* %0, %struct.file** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.file**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qstr, align 8
  %10 = alloca %struct.path, align 8
  %11 = alloca %struct.file*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.file** %1, %struct.file*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.qstr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.qstr* @__const.fsock_alloc_file.name to i8*), i64 8, i1 false)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_unused_fd_flags(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @ERR, align 4
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = call i32 @EPRINTK_LIMIT(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.socket* %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %131

25:                                               ; preds = %3
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = call %struct.TYPE_6__* @fsock_d_alloc(%struct.socket* %26, i32* null, %struct.qstr* %9)
  %28 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %28, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load i32, i32* @ERR, align 4
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = call i32 @EPRINTK_LIMIT(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.socket* %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @put_unused_fd(i32 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %131

44:                                               ; preds = %25
  %45 = load i32, i32* @fastsocket_mnt, align 4
  %46 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = call %struct.TYPE_7__* @SOCK_INODE(%struct.socket* %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32* @fsocket_file_ops, i32** %49, align 8
  %50 = call %struct.file* (...) @get_empty_filp()
  store %struct.file* %50, %struct.file** %11, align 8
  %51 = load %struct.file*, %struct.file** %11, align 8
  %52 = icmp ne %struct.file* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %44
  %58 = load i32, i32* @ERR, align 4
  %59 = load %struct.socket*, %struct.socket** %5, align 8
  %60 = call i32 @EPRINTK_LIMIT(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %struct.socket* %59)
  %61 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @fsock_d_free(%struct.TYPE_6__* %62)
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @put_unused_fd(i32 %64)
  %66 = load i32, i32* @ENFILE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %131

68:                                               ; preds = %44
  %69 = load i32, i32* @DEBUG, align 4
  %70 = load %struct.file*, %struct.file** %11, align 8
  %71 = call i32 (i32, i8*, %struct.file*, ...) @DPRINTK(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.file* %70)
  %72 = load %struct.file*, %struct.file** %11, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 2
  %74 = bitcast %struct.path* %73 to i8*
  %75 = bitcast %struct.path* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  %76 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.file*, %struct.file** %11, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @FMODE_READ, align 4
  %85 = load i32, i32* @FMODE_WRITE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @FMODE_FASTSOCKET, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.file*, %struct.file** %11, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* @enable_fast_epoll, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %68
  %94 = load i32, i32* @FMODE_BIND_EPI, align 4
  %95 = load %struct.file*, %struct.file** %11, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %68
  %100 = load %struct.file*, %struct.file** %11, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 7
  store i32* @fsocket_file_ops, i32** %101, align 8
  %102 = load %struct.file*, %struct.file** %11, align 8
  %103 = load %struct.socket*, %struct.socket** %5, align 8
  %104 = getelementptr inbounds %struct.socket, %struct.socket* %103, i32 0, i32 0
  store %struct.file* %102, %struct.file** %104, align 8
  %105 = load i32, i32* @O_RDWR, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @O_NONBLOCK, align 4
  %108 = and i32 %106, %107
  %109 = or i32 %105, %108
  %110 = load %struct.file*, %struct.file** %11, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.file*, %struct.file** %11, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 6
  store i64 0, i64* %113, align 8
  %114 = load %struct.socket*, %struct.socket** %5, align 8
  %115 = load %struct.file*, %struct.file** %11, align 8
  %116 = getelementptr inbounds %struct.file, %struct.file* %115, i32 0, i32 5
  store %struct.socket* %114, %struct.socket** %116, align 8
  %117 = load %struct.file*, %struct.file** %11, align 8
  %118 = getelementptr inbounds %struct.file, %struct.file* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  %119 = load %struct.file*, %struct.file** %11, align 8
  %120 = getelementptr inbounds %struct.file, %struct.file* %119, i32 0, i32 3
  store i32* null, i32** %120, align 8
  %121 = load %struct.file*, %struct.file** %11, align 8
  %122 = load %struct.file**, %struct.file*** %6, align 8
  store %struct.file* %121, %struct.file** %122, align 8
  %123 = load i32, i32* @DEBUG, align 4
  %124 = load %struct.file*, %struct.file** %11, align 8
  %125 = load %struct.file*, %struct.file** %11, align 8
  %126 = getelementptr inbounds %struct.file, %struct.file* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.path, %struct.path* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = call i32 (i32, i8*, %struct.file*, ...) @DPRINTK(i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), %struct.file* %124, %struct.TYPE_6__* %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %99, %57, %36, %20
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_unused_fd_flags(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @EPRINTK_LIMIT(i32, i8*, %struct.socket*) #2

declare dso_local %struct.TYPE_6__* @fsock_d_alloc(%struct.socket*, i32*, %struct.qstr*) #2

declare dso_local i32 @put_unused_fd(i32) #2

declare dso_local %struct.TYPE_7__* @SOCK_INODE(%struct.socket*) #2

declare dso_local %struct.file* @get_empty_filp(...) #2

declare dso_local i32 @fsock_d_free(%struct.TYPE_6__*) #2

declare dso_local i32 @DPRINTK(i32, i8*, %struct.file*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
