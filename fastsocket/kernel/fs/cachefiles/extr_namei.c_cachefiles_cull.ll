; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_namei.c_cachefiles_cull.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_namei.c_cachefiles_cull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32 }
%struct.dentry = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c",%*.*s/,%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"victim -> %p %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"positive\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"negative\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"victim is cullable\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bury\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c" = -ESTALE [absent]\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Internal error: %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_cull(%struct.cachefiles_cache* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cachefiles_cache*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %21, i8* %22)
  %24 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.dentry* @cachefiles_check_active(%struct.cachefiles_cache* %24, %struct.dentry* %25, i8* %26)
  store %struct.dentry* %27, %struct.dentry** %8, align 8
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.dentry* %32)
  store i32 %33, i32* %4, align 4
  br label %94

34:                                               ; preds = %3
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %42 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %35, i8* %41)
  %43 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = call i32 @cachefiles_remove_object_xattr(%struct.cachefiles_cache* %44, %struct.dentry* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %63

50:                                               ; preds = %34
  %51 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %52 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = call i32 @cachefiles_bury_object(%struct.cachefiles_cache* %52, %struct.dentry* %53, %struct.dentry* %54, i32 0)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %69

59:                                               ; preds = %50
  %60 = load %struct.dentry*, %struct.dentry** %8, align 8
  %61 = call i32 @dput(%struct.dentry* %60)
  %62 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %94

63:                                               ; preds = %49
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.dentry*, %struct.dentry** %8, align 8
  %71 = call i32 @dput(%struct.dentry* %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i32, i32* @ESTALE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %94

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @kerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %76, %59, %31
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i8*) #1

declare dso_local %struct.dentry* @cachefiles_check_active(%struct.cachefiles_cache*, %struct.dentry*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @cachefiles_remove_object_xattr(%struct.cachefiles_cache*, %struct.dentry*) #1

declare dso_local i32 @cachefiles_bury_object(%struct.cachefiles_cache*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kerror(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
