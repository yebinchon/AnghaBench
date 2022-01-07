; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_daemon_cull.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_daemon_cull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cachefiles_cache = type { i32 }
%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@CACHEFILES_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cull applied to unready cache\00", align 1
@EIO = common dso_local global i32 0, align 4
@CACHEFILES_DEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cull applied to dead cache\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"cull command requires dirfd to be a directory\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"cull command requires dirfd and filename\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_cache*, i8*)* @cachefiles_daemon_cull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_daemon_cull(%struct.cachefiles_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fs_struct*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strchr(i8* %12, i8 signext 47)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %80

16:                                               ; preds = %2
  %17 = load i32, i32* @CACHEFILES_READY, align 4
  %18 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %19 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = call i32 @kerror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %84

26:                                               ; preds = %16
  %27 = load i32, i32* @CACHEFILES_DEAD, align 4
  %28 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %29 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = call i32 @kerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %84

36:                                               ; preds = %26
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.fs_struct*, %struct.fs_struct** %38, align 8
  store %struct.fs_struct* %39, %struct.fs_struct** %6, align 8
  %40 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %41 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %40, i32 0, i32 0
  %42 = call i32 @read_lock(i32* %41)
  %43 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %44 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.dentry* @dget(i32 %46)
  store %struct.dentry* %47, %struct.dentry** %7, align 8
  %48 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %49 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %48, i32 0, i32 0
  %50 = call i32 @read_unlock(i32* %49)
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @S_ISDIR(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %36
  br label %74

59:                                               ; preds = %36
  %60 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %61 = call i32 @cachefiles_begin_secure(%struct.cachefiles_cache* %60, %struct.cred** %8)
  %62 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %63 = load %struct.dentry*, %struct.dentry** %7, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @cachefiles_cull(%struct.cachefiles_cache* %62, %struct.dentry* %63, i8* %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %67 = load %struct.cred*, %struct.cred** %8, align 8
  %68 = call i32 @cachefiles_end_secure(%struct.cachefiles_cache* %66, %struct.cred* %67)
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = call i32 @dput(%struct.dentry* %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %84

74:                                               ; preds = %58
  %75 = load %struct.dentry*, %struct.dentry** %7, align 8
  %76 = call i32 @dput(%struct.dentry* %75)
  %77 = call i32 @kerror(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @ENOTDIR, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %15
  %81 = call i32 @kerror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %74, %59, %32, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @_enter(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kerror(i8*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @cachefiles_begin_secure(%struct.cachefiles_cache*, %struct.cred**) #1

declare dso_local i32 @cachefiles_cull(%struct.cachefiles_cache*, %struct.dentry*, i8*) #1

declare dso_local i32 @cachefiles_end_secure(%struct.cachefiles_cache*, %struct.cred*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
