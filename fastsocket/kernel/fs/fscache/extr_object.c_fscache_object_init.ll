; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_object_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_transition = type { i32 }
%struct.fscache_object = type { i32, i32, i32, %struct.TYPE_2__*, %struct.fscache_transition*, i32*, %struct.fscache_cookie*, %struct.fscache_cache*, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.fscache_transition* }
%struct.fscache_cookie = type { i32 }
%struct.fscache_cache = type { i32 }

@WAIT_FOR_INIT = common dso_local global i32 0, align 4
@fscache_osm_init_oob = common dso_local global %struct.fscache_transition* null, align 8
@FSCACHE_OBJECT_IS_LIVE = common dso_local global i32 0, align 4
@fscache_object_slow_work_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscache_object_init(%struct.fscache_object* %0, %struct.fscache_cookie* %1, %struct.fscache_cache* %2) #0 {
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  %6 = alloca %struct.fscache_cache*, align 8
  %7 = alloca %struct.fscache_transition*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store %struct.fscache_cookie* %1, %struct.fscache_cookie** %5, align 8
  store %struct.fscache_cache* %2, %struct.fscache_cache** %6, align 8
  %8 = load %struct.fscache_cache*, %struct.fscache_cache** %6, align 8
  %9 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %8, i32 0, i32 0
  %10 = call i32 @atomic_inc(i32* %9)
  %11 = load i32, i32* @WAIT_FOR_INIT, align 4
  %12 = call %struct.TYPE_2__* @STATE(i32 %11)
  %13 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %14 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %13, i32 0, i32 3
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.fscache_transition*, %struct.fscache_transition** @fscache_osm_init_oob, align 8
  %16 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %17 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %16, i32 0, i32 4
  store %struct.fscache_transition* %15, %struct.fscache_transition** %17, align 8
  %18 = load i32, i32* @FSCACHE_OBJECT_IS_LIVE, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %21 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %23 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %22, i32 0, i32 21
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %26 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %25, i32 0, i32 20
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %29 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %28, i32 0, i32 19
  %30 = call i32 @INIT_HLIST_NODE(i32* %29)
  %31 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %32 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %31, i32 0, i32 18
  %33 = call i32 @vslow_work_init(i32* %32, i32* @fscache_object_slow_work_ops)
  %34 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %35 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %34, i32 0, i32 17
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %38 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %37, i32 0, i32 16
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %41 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %40, i32 0, i32 15
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %44 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %43, i32 0, i32 14
  store i64 0, i64* %44, align 8
  %45 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %46 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %45, i32 0, i32 11
  store i64 0, i64* %46, align 8
  %47 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %48 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %47, i32 0, i32 12
  store i64 0, i64* %48, align 8
  %49 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %50 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %49, i32 0, i32 13
  store i64 0, i64* %50, align 8
  %51 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %52 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %51, i32 0, i32 10
  store i64 0, i64* %52, align 8
  %53 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %54 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %53, i32 0, i32 9
  store i64 0, i64* %54, align 8
  %55 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %56 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %55, i32 0, i32 8
  store i64 0, i64* %56, align 8
  %57 = load %struct.fscache_cache*, %struct.fscache_cache** %6, align 8
  %58 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %59 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %58, i32 0, i32 7
  store %struct.fscache_cache* %57, %struct.fscache_cache** %59, align 8
  %60 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %61 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %62 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %61, i32 0, i32 6
  store %struct.fscache_cookie* %60, %struct.fscache_cookie** %62, align 8
  %63 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %64 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  %65 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %66 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %68 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %67, i32 0, i32 4
  %69 = load %struct.fscache_transition*, %struct.fscache_transition** %68, align 8
  store %struct.fscache_transition* %69, %struct.fscache_transition** %7, align 8
  br label %70

70:                                               ; preds = %83, %3
  %71 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %72 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %77 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %80 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75
  %84 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %85 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %84, i32 1
  store %struct.fscache_transition* %85, %struct.fscache_transition** %7, align 8
  br label %70

86:                                               ; preds = %70
  %87 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %88 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %91 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %93 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load %struct.fscache_transition*, %struct.fscache_transition** %95, align 8
  store %struct.fscache_transition* %96, %struct.fscache_transition** %7, align 8
  br label %97

97:                                               ; preds = %110, %86
  %98 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %99 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %104 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %107 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %102
  %111 = load %struct.fscache_transition*, %struct.fscache_transition** %7, align 8
  %112 = getelementptr inbounds %struct.fscache_transition, %struct.fscache_transition* %111, i32 1
  store %struct.fscache_transition* %112, %struct.fscache_transition** %7, align 8
  br label %97

113:                                              ; preds = %97
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_2__* @STATE(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @vslow_work_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
