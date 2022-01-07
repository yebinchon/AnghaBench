; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_anon_inodes.c_anon_inode_getfile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_anon_inodes.c_anon_inode_getfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32, i8*, i64, i64, i32 }
%struct.file_operations = type { i64 }
%struct.qstr = type { i8*, i64, i32 }
%struct.path = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@anon_inode_inode = common dso_local global %struct.TYPE_10__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@anon_inode_mnt = common dso_local global %struct.TYPE_8__* null, align 8
@anon_inodefs_dentry_operations = common dso_local global i32 0, align 4
@DCACHE_UNHASHED = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @anon_inode_getfile(i8* %0, %struct.file_operations* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qstr, align 8
  %11 = alloca %struct.path, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.file_operations* %1, %struct.file_operations** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @anon_inode_inode, align 8
  %15 = call i64 @IS_ERR(%struct.TYPE_10__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.file* @ERR_PTR(i32 %19)
  store %struct.file* %20, %struct.file** %5, align 8
  br label %115

21:                                               ; preds = %4
  %22 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %23 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %28 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @try_module_get(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.file* @ERR_PTR(i32 %34)
  store %struct.file* %35, %struct.file** %5, align 8
  br label %115

36:                                               ; preds = %26, %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @anon_inode_mnt, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_9__* @d_alloc_pseudo(i32 %47, %struct.qstr* %10)
  %49 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %49, align 8
  %50 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %36
  br label %108

54:                                               ; preds = %36
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @anon_inode_mnt, align 8
  %56 = call i32 @mntget(%struct.TYPE_8__* %55)
  %57 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @anon_inode_inode, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = call i32 @atomic_inc(i32* %59)
  %61 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32* @anon_inodefs_dentry_operations, i32** %63, align 8
  %64 = load i32, i32* @DCACHE_UNHASHED, align 4
  %65 = xor i32 %64, -1
  %66 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %65
  store i32 %70, i32* %68, align 8
  %71 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @anon_inode_inode, align 8
  %74 = call i32 @d_instantiate(%struct.TYPE_9__* %72, %struct.TYPE_10__* %73)
  %75 = load i32, i32* @ENFILE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* @FMODE_READ, align 4
  %78 = load i32, i32* @FMODE_WRITE, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %81 = call %struct.file* @alloc_file(%struct.path* %11, i32 %79, %struct.file_operations* %80)
  store %struct.file* %81, %struct.file** %12, align 8
  %82 = load %struct.file*, %struct.file** %12, align 8
  %83 = icmp ne %struct.file* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %54
  br label %106

85:                                               ; preds = %54
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @anon_inode_inode, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.file*, %struct.file** %12, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.file*, %struct.file** %12, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @O_RDWR, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @O_NONBLOCK, align 4
  %96 = and i32 %94, %95
  %97 = or i32 %93, %96
  %98 = load %struct.file*, %struct.file** %12, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.file*, %struct.file** %12, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load %struct.file*, %struct.file** %12, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %105, %struct.file** %5, align 8
  br label %115

106:                                              ; preds = %84
  %107 = call i32 @path_put(%struct.path* %11)
  br label %108

108:                                              ; preds = %106, %53
  %109 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %110 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @module_put(i64 %111)
  %113 = load i32, i32* %13, align 4
  %114 = call %struct.file* @ERR_PTR(i32 %113)
  store %struct.file* %114, %struct.file** %5, align 8
  br label %115

115:                                              ; preds = %108, %85, %32, %17
  %116 = load %struct.file*, %struct.file** %5, align 8
  ret %struct.file* %116
}

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @try_module_get(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_9__* @d_alloc_pseudo(i32, %struct.qstr*) #1

declare dso_local i32 @mntget(%struct.TYPE_8__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @d_instantiate(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local %struct.file* @alloc_file(%struct.path*, i32, %struct.file_operations*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @module_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
