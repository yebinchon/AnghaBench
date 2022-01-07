; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_alloc_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_alloc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8* }
%struct.TYPE_9__ = type { i32 }
%struct.socket = type { %struct.file* }
%struct.file = type { i32, %struct.socket*, i64 }
%struct.path = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.sock_alloc_file.name = private unnamed_addr constant %struct.qstr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, align 8
@sock_mnt = common dso_local global %struct.TYPE_9__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@sockfs_dentry_operations = common dso_local global i32 0, align 4
@DCACHE_UNHASHED = common dso_local global i32 0, align 4
@socket_file_ops = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.file**, i32)* @sock_alloc_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_alloc_file(%struct.socket* %0, %struct.file** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.file**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr, align 8
  %9 = alloca %struct.path, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.file** %1, %struct.file*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.qstr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.qstr* @__const.sock_alloc_file.name to i8*), i64 8, i1 false)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_unused_fd_flags(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sock_mnt, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_10__* @d_alloc_pseudo(i32 %25, %struct.qstr* %8)
  %27 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %27, align 8
  %28 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @put_unused_fd(i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %103

40:                                               ; preds = %22
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sock_mnt, align 8
  %42 = call i32 @mntget(%struct.TYPE_9__* %41)
  %43 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  store i32* @sockfs_dentry_operations, i32** %46, align 8
  %47 = load i32, i32* @DCACHE_UNHASHED, align 4
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load %struct.socket*, %struct.socket** %5, align 8
  %57 = call %struct.TYPE_11__* @SOCK_INODE(%struct.socket* %56)
  %58 = call i32 @d_instantiate(%struct.TYPE_10__* %55, %struct.TYPE_11__* %57)
  %59 = load %struct.socket*, %struct.socket** %5, align 8
  %60 = call %struct.TYPE_11__* @SOCK_INODE(%struct.socket* %59)
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32* @socket_file_ops, i32** %61, align 8
  %62 = load i32, i32* @FMODE_READ, align 4
  %63 = load i32, i32* @FMODE_WRITE, align 4
  %64 = or i32 %62, %63
  %65 = call %struct.file* @alloc_file(%struct.path* %9, i32 %64, i32* @socket_file_ops)
  store %struct.file* %65, %struct.file** %10, align 8
  %66 = load %struct.file*, %struct.file** %10, align 8
  %67 = icmp ne %struct.file* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %40
  %73 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @atomic_inc(i32* %77)
  %79 = call i32 @path_put(%struct.path* %9)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @put_unused_fd(i32 %80)
  %82 = load i32, i32* @ENFILE, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %103

84:                                               ; preds = %40
  %85 = load %struct.file*, %struct.file** %10, align 8
  %86 = load %struct.socket*, %struct.socket** %5, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 0
  store %struct.file* %85, %struct.file** %87, align 8
  %88 = load i32, i32* @O_RDWR, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @O_NONBLOCK, align 4
  %91 = and i32 %89, %90
  %92 = or i32 %88, %91
  %93 = load %struct.file*, %struct.file** %10, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.file*, %struct.file** %10, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.socket*, %struct.socket** %5, align 8
  %98 = load %struct.file*, %struct.file** %10, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 1
  store %struct.socket* %97, %struct.socket** %99, align 8
  %100 = load %struct.file*, %struct.file** %10, align 8
  %101 = load %struct.file**, %struct.file*** %6, align 8
  store %struct.file* %100, %struct.file** %101, align 8
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %84, %72, %35, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_unused_fd_flags(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local %struct.TYPE_10__* @d_alloc_pseudo(i32, %struct.qstr*) #2

declare dso_local i32 @put_unused_fd(i32) #2

declare dso_local i32 @mntget(%struct.TYPE_9__*) #2

declare dso_local i32 @d_instantiate(%struct.TYPE_10__*, %struct.TYPE_11__*) #2

declare dso_local %struct.TYPE_11__* @SOCK_INODE(%struct.socket*) #2

declare dso_local %struct.file* @alloc_file(%struct.path*, i32, i32*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @path_put(%struct.path*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
