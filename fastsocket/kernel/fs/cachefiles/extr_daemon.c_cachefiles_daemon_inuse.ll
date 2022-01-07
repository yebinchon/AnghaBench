; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_daemon_inuse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_daemon_inuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cachefiles_cache = type { i32 }
%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cred = type { i32 }

@CACHEFILES_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"inuse applied to unready cache\00", align 1
@EIO = common dso_local global i32 0, align 4
@CACHEFILES_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"inuse applied to dead cache\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"inuse command requires dirfd to be a directory\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"inuse command requires dirfd and filename\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_cache*, i8*)* @cachefiles_daemon_inuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_daemon_inuse(%struct.cachefiles_cache* %0, i8* %1) #0 {
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
  %11 = call i64 @strchr(i8* %10, i8 signext 47)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %76

14:                                               ; preds = %2
  %15 = load i32, i32* @CACHEFILES_READY, align 4
  %16 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %17 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = call i32 @kerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %80

24:                                               ; preds = %14
  %25 = load i32, i32* @CACHEFILES_DEAD, align 4
  %26 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %27 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = call i32 @kerror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %24
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.fs_struct*, %struct.fs_struct** %36, align 8
  store %struct.fs_struct* %37, %struct.fs_struct** %6, align 8
  %38 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %39 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %38, i32 0, i32 0
  %40 = call i32 @read_lock(i32* %39)
  %41 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %42 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.dentry* @dget(i32 %44)
  store %struct.dentry* %45, %struct.dentry** %7, align 8
  %46 = load %struct.fs_struct*, %struct.fs_struct** %6, align 8
  %47 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %46, i32 0, i32 0
  %48 = call i32 @read_unlock(i32* %47)
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @S_ISDIR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %34
  br label %70

57:                                               ; preds = %34
  %58 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %59 = call i32 @cachefiles_begin_secure(%struct.cachefiles_cache* %58, %struct.cred** %8)
  %60 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @cachefiles_check_in_use(%struct.cachefiles_cache* %60, %struct.dentry* %61, i8* %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %65 = load %struct.cred*, %struct.cred** %8, align 8
  %66 = call i32 @cachefiles_end_secure(%struct.cachefiles_cache* %64, %struct.cred* %65)
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  %68 = call i32 @dput(%struct.dentry* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %80

70:                                               ; preds = %56
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = call i32 @dput(%struct.dentry* %71)
  %73 = call i32 @kerror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @ENOTDIR, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %80

76:                                               ; preds = %13
  %77 = call i32 @kerror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %70, %57, %30, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kerror(i8*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @cachefiles_begin_secure(%struct.cachefiles_cache*, %struct.cred**) #1

declare dso_local i32 @cachefiles_check_in_use(%struct.cachefiles_cache*, %struct.dentry*, i8*) #1

declare dso_local i32 @cachefiles_end_secure(%struct.cachefiles_cache*, %struct.cred*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
