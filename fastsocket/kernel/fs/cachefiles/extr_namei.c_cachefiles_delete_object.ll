; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_namei.c_cachefiles_delete_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_namei.c_cachefiles_delete_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32 }
%struct.cachefiles_object = type { %struct.dentry*, i32, %struct.TYPE_2__ }
%struct.dentry = type { i32, %struct.dentry*, %struct.dentry* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c",OBJ%x{%p}\00", align 1
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@CACHEFILES_OBJECT_BURIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"object preemptively buried\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_delete_object(%struct.cachefiles_cache* %0, %struct.cachefiles_object* %1) #0 {
  %3 = alloca %struct.cachefiles_cache*, align 8
  %4 = alloca %struct.cachefiles_object*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %3, align 8
  store %struct.cachefiles_object* %1, %struct.cachefiles_object** %4, align 8
  %7 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %8 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %12 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.dentry* %13)
  %15 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %16 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  %18 = call i32 @ASSERT(%struct.dentry* %17)
  %19 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %20 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = load %struct.dentry*, %struct.dentry** %22, align 8
  %24 = call i32 @ASSERT(%struct.dentry* %23)
  %25 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %26 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %25, i32 0, i32 0
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 2
  %29 = load %struct.dentry*, %struct.dentry** %28, align 8
  %30 = call i32 @ASSERT(%struct.dentry* %29)
  %31 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %32 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %31, i32 0, i32 0
  %33 = load %struct.dentry*, %struct.dentry** %32, align 8
  %34 = call %struct.dentry* @dget_parent(%struct.dentry* %33)
  store %struct.dentry* %34, %struct.dentry** %5, align 8
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 1
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load i32, i32* @I_MUTEX_PARENT, align 4
  %40 = call i32 @mutex_lock_nested(i32* %38, i32 %39)
  %41 = load i32, i32* @CACHEFILES_OBJECT_BURIED, align 4
  %42 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %43 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %42, i32 0, i32 1
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %2
  %47 = call i32 @_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 1
  %50 = load %struct.dentry*, %struct.dentry** %49, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %6, align 4
  br label %75

53:                                               ; preds = %2
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %56 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %55, i32 0, i32 0
  %57 = load %struct.dentry*, %struct.dentry** %56, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 2
  %59 = load %struct.dentry*, %struct.dentry** %58, align 8
  %60 = icmp eq %struct.dentry* %54, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %3, align 8
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %65 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %64, i32 0, i32 0
  %66 = load %struct.dentry*, %struct.dentry** %65, align 8
  %67 = call i32 @cachefiles_bury_object(%struct.cachefiles_cache* %62, %struct.dentry* %63, %struct.dentry* %66, i32 0)
  store i32 %67, i32* %6, align 4
  br label %74

68:                                               ; preds = %53
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 1
  %71 = load %struct.dentry*, %struct.dentry** %70, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %61
  br label %75

75:                                               ; preds = %74, %46
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  %77 = call i32 @dput(%struct.dentry* %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @_enter(i8*, i32, %struct.dentry*) #1

declare dso_local i32 @ASSERT(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cachefiles_bury_object(%struct.cachefiles_cache*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
