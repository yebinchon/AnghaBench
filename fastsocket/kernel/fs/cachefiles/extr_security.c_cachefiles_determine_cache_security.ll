; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_security.c_cachefiles_determine_cache_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_security.c_cachefiles_determine_cache_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { %struct.cred* }
%struct.cred = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = %d [cfa]\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_determine_cache_security(%struct.cachefiles_cache* %0, %struct.dentry* %1, %struct.cred** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cachefiles_cache*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.cred**, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.cred** %2, %struct.cred*** %7, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %11, %struct.cred** %8, align 8
  %12 = load %struct.cred*, %struct.cred** %8, align 8
  %13 = icmp ne %struct.cred* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %19 = load %struct.cred**, %struct.cred*** %7, align 8
  %20 = load %struct.cred*, %struct.cred** %19, align 8
  %21 = call i32 @cachefiles_end_secure(%struct.cachefiles_cache* %18, %struct.cred* %20)
  %22 = load %struct.cred*, %struct.cred** %8, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_create_files_as(%struct.cred* %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.cred*, %struct.cred** %8, align 8
  %31 = call i32 @abort_creds(%struct.cred* %30)
  %32 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %33 = load %struct.cred**, %struct.cred*** %7, align 8
  %34 = call i32 @cachefiles_begin_secure(%struct.cachefiles_cache* %32, %struct.cred** %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %17
  %39 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %40 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %39, i32 0, i32 0
  %41 = load %struct.cred*, %struct.cred** %40, align 8
  %42 = call i32 @put_cred(%struct.cred* %41)
  %43 = load %struct.cred*, %struct.cred** %8, align 8
  %44 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %45 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %44, i32 0, i32 0
  store %struct.cred* %43, %struct.cred** %45, align 8
  %46 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %47 = load %struct.cred**, %struct.cred*** %7, align 8
  %48 = call i32 @cachefiles_begin_secure(%struct.cachefiles_cache* %46, %struct.cred** %47)
  %49 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %50 = load %struct.dentry*, %struct.dentry** %6, align 8
  %51 = call i32 @cachefiles_check_cache_dir(%struct.cachefiles_cache* %49, %struct.dentry* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %29, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @cachefiles_end_secure(%struct.cachefiles_cache*, %struct.cred*) #1

declare dso_local i32 @set_create_files_as(%struct.cred*, i32) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

declare dso_local i32 @cachefiles_begin_secure(%struct.cachefiles_cache*, %struct.cred**) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @cachefiles_check_cache_dir(%struct.cachefiles_cache*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
