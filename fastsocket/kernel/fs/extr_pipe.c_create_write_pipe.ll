; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_create_write_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_create_write_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32, i64, i32 }
%struct.inode = type { i32 }
%struct.path = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.create_write_pipe.name = private unnamed_addr constant %struct.qstr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, align 8
@ENFILE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pipe_mnt = common dso_local global %struct.TYPE_5__* null, align 8
@pipefs_dentry_operations = common dso_local global i32 0, align 4
@DCACHE_UNHASHED = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@write_pipefifo_fops = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @create_write_pipe(i32 %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca %struct.qstr, align 8
  store i32 %0, i32* %3, align 4
  %9 = bitcast %struct.qstr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.qstr* @__const.create_write_pipe.name to i8*), i64 8, i1 false)
  %10 = load i32, i32* @ENFILE, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  %12 = call %struct.inode* (...) @get_pipe_inode()
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %80

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pipe_mnt, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_6__* @d_alloc_pseudo(i32 %21, %struct.qstr* %8)
  %23 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %23, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %75

28:                                               ; preds = %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pipe_mnt, align 8
  %30 = call i32 @mntget(%struct.TYPE_5__* %29)
  %31 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32* @pipefs_dentry_operations, i32** %34, align 8
  %35 = load i32, i32* @DCACHE_UNHASHED, align 4
  %36 = xor i32 %35, -1
  %37 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call i32 @d_instantiate(%struct.TYPE_6__* %43, %struct.inode* %44)
  %46 = load i32, i32* @ENFILE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @FMODE_WRITE, align 4
  %49 = call %struct.file* @alloc_file(%struct.path* %7, i32 %48, i32* @write_pipefifo_fops)
  store %struct.file* %49, %struct.file** %6, align 8
  %50 = load %struct.file*, %struct.file** %6, align 8
  %51 = icmp ne %struct.file* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %28
  br label %69

53:                                               ; preds = %28
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.file*, %struct.file** %6, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @O_WRONLY, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @O_NONBLOCK, align 4
  %62 = and i32 %60, %61
  %63 = or i32 %59, %62
  %64 = load %struct.file*, %struct.file** %6, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.file*, %struct.file** %6, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %68, %struct.file** %2, align 8
  br label %83

69:                                               ; preds = %52
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call i32 @free_pipe_info(%struct.inode* %70)
  %72 = call i32 @path_put(%struct.path* %7)
  %73 = load i32, i32* %4, align 4
  %74 = call %struct.file* @ERR_PTR(i32 %73)
  store %struct.file* %74, %struct.file** %2, align 8
  br label %83

75:                                               ; preds = %27
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = call i32 @free_pipe_info(%struct.inode* %76)
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = call i32 @iput(%struct.inode* %78)
  br label %80

80:                                               ; preds = %75, %15
  %81 = load i32, i32* %4, align 4
  %82 = call %struct.file* @ERR_PTR(i32 %81)
  store %struct.file* %82, %struct.file** %2, align 8
  br label %83

83:                                               ; preds = %80, %69, %53
  %84 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.inode* @get_pipe_inode(...) #2

declare dso_local %struct.TYPE_6__* @d_alloc_pseudo(i32, %struct.qstr*) #2

declare dso_local i32 @mntget(%struct.TYPE_5__*) #2

declare dso_local i32 @d_instantiate(%struct.TYPE_6__*, %struct.inode*) #2

declare dso_local %struct.file* @alloc_file(%struct.path*, i32, i32*) #2

declare dso_local i32 @free_pipe_info(%struct.inode*) #2

declare dso_local i32 @path_put(%struct.path*) #2

declare dso_local %struct.file* @ERR_PTR(i32) #2

declare dso_local i32 @iput(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
