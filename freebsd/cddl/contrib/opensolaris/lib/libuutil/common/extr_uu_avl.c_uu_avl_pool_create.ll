; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_avl.c_uu_avl_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_avl.c_uu_avl_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_7__, i32, i64, i32*, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@UU_NAME_DOMAIN = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UU_AVL_POOL_DEBUG = common dso_local global i32 0, align 4
@UU_ERROR_UNKNOWN_FLAG = common dso_local global i32 0, align 4
@UU_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@uu_apool_list_lock = common dso_local global i32 0, align 4
@uu_null_apool = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @uu_avl_pool_create(i8* %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @UU_NAME_DOMAIN, align 4
  %20 = call i32 @uu_check_name(i8* %18, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 4
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %22, %17, %5
  %31 = load i32, i32* @UU_ERROR_INVALID_ARGUMENT, align 4
  %32 = call i32 @uu_set_error(i32 %31)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %105

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @UU_AVL_POOL_DEBUG, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @UU_ERROR_UNKNOWN_FLAG, align 4
  %41 = call i32 @uu_set_error(i32 %40)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %105

42:                                               ; preds = %33
  %43 = call %struct.TYPE_6__* @uu_zalloc(i32 88)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %12, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = icmp eq %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @UU_ERROR_NO_MEMORY, align 4
  %48 = call i32 @uu_set_error(i32 %47)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %105

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strlcpy(i32 %52, i8* %53, i32 4)
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 8
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @UU_AVL_POOL_DEBUG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %49
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 7
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  %76 = call i32 @pthread_mutex_init(i32* %75, i32* null)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  %79 = call i8* @UU_PTR_ENCODE(%struct.TYPE_7__* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  %85 = call i8* @UU_PTR_ENCODE(%struct.TYPE_7__* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  %89 = call i32 @pthread_mutex_lock(i32* @uu_apool_list_lock)
  store %struct.TYPE_6__* @uu_null_apool, %struct.TYPE_6__** %13, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store %struct.TYPE_6__* @uu_null_apool, %struct.TYPE_6__** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %14, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %102, align 8
  %103 = call i32 @pthread_mutex_unlock(i32* @uu_apool_list_lock)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %6, align 8
  br label %105

105:                                              ; preds = %71, %46, %39, %30
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %106
}

declare dso_local i32 @uu_check_name(i8*, i32) #1

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local %struct.TYPE_6__* @uu_zalloc(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i8* @UU_PTR_ENCODE(%struct.TYPE_7__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
