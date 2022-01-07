; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_drop_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_drop_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i64, %struct.fscache_object*, i32, i32, i32, i32, %struct.fscache_cache*, %struct.fscache_cookie* }
%struct.fscache_cache = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fscache_object*)* }
%struct.fscache_cookie = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"{OBJ%x,%d},%d\00", align 1
@FSCACHE_COOKIE_INVALIDATING = common dso_local global i32 0, align 4
@fscache_n_cop_drop_object = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"release parent OBJ%x {%d}\00", align 1
@FSCACHE_OBJECT_EV_CLEARED = common dso_local global i32 0, align 4
@fscache_n_object_dead = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OBJECT_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_drop_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_drop_object(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fscache_object*, align 8
  %6 = alloca %struct.fscache_cookie*, align 8
  %7 = alloca %struct.fscache_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %10 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %9, i32 0, i32 1
  %11 = load %struct.fscache_object*, %struct.fscache_object** %10, align 8
  store %struct.fscache_object* %11, %struct.fscache_object** %5, align 8
  %12 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %13 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %12, i32 0, i32 7
  %14 = load %struct.fscache_cookie*, %struct.fscache_cookie** %13, align 8
  store %struct.fscache_cookie* %14, %struct.fscache_cookie** %6, align 8
  %15 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %16 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %15, i32 0, i32 6
  %17 = load %struct.fscache_cache*, %struct.fscache_cache** %16, align 8
  store %struct.fscache_cache* %17, %struct.fscache_cache** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %19 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %22 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23, i32 %24)
  %26 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %27 = icmp ne %struct.fscache_cookie* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %31 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %30, i32 0, i32 5
  %32 = call i32 @hlist_unhashed(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %38 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %41 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %40, i32 0, i32 5
  %42 = call i32 @hlist_del_init(i32* %41)
  %43 = load i32, i32* @FSCACHE_COOKIE_INVALIDATING, align 4
  %44 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %45 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %44, i32 0, i32 0
  %46 = call i64 @test_and_clear_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %51 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %57 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %56, i32 0, i32 0
  %58 = load i32, i32* @FSCACHE_COOKIE_INVALIDATING, align 4
  %59 = call i32 @wake_up_bit(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %62 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %61, i32 0, i32 2
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %65 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.fscache_cache*, %struct.fscache_cache** %7, align 8
  %68 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %67, i32 0, i32 1
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %71 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %70, i32 0, i32 4
  %72 = call i32 @list_del_init(i32* %71)
  %73 = load %struct.fscache_cache*, %struct.fscache_cache** %7, align 8
  %74 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = call i32 @fscache_stat(i32* @fscache_n_cop_drop_object)
  %77 = load %struct.fscache_cache*, %struct.fscache_cache** %7, align 8
  %78 = getelementptr inbounds %struct.fscache_cache, %struct.fscache_cache* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.fscache_object*)*, i32 (%struct.fscache_object*)** %80, align 8
  %82 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %83 = call i32 %81(%struct.fscache_object* %82)
  %84 = call i32 @fscache_stat_d(i32* @fscache_n_cop_drop_object)
  %85 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %86 = icmp ne %struct.fscache_object* %85, null
  br i1 %86, label %87, label %116

87:                                               ; preds = %60
  %88 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %89 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %92 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %90, i64 %93)
  %95 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %96 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %95, i32 0, i32 2
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %99 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %103 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %87
  %107 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %108 = load i32, i32* @FSCACHE_OBJECT_EV_CLEARED, align 4
  %109 = call i32 @fscache_raise_event(%struct.fscache_object* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %87
  %111 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %112 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %111, i32 0, i32 2
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %115 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %114, i32 0, i32 1
  store %struct.fscache_object* null, %struct.fscache_object** %115, align 8
  br label %116

116:                                              ; preds = %110, %60
  %117 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %118 = call i32 @fscache_put_object(%struct.fscache_object* %117)
  %119 = call i32 @fscache_stat(i32* @fscache_n_object_dead)
  %120 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @OBJECT_DEAD, align 4
  %122 = call %struct.fscache_state* @transit_to(i32 %121)
  ret %struct.fscache_state* %122
}

declare dso_local i32 @_enter(i8*, i32, i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @fscache_stat_d(i32*) #1

declare dso_local i32 @_debug(i8*, i32, i64) #1

declare dso_local i32 @fscache_raise_event(%struct.fscache_object*, i32) #1

declare dso_local i32 @fscache_put_object(%struct.fscache_object*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
