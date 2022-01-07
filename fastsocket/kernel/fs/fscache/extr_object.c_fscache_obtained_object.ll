; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_obtained_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_obtained_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { i32, %struct.TYPE_2__*, i32, %struct.fscache_cookie* }
%struct.TYPE_2__ = type { i32 }
%struct.fscache_cookie = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{OBJ%x,%s}\00", align 1
@FSCACHE_OBJECT_IS_LOOKED_UP = common dso_local global i32 0, align 4
@fscache_n_object_lookups_positive = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_NO_DATA_YET = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_LOOKING_UP = common dso_local global i32 0, align 4
@fscache_n_object_created = common dso_local global i32 0, align 4
@FSCACHE_OBJECT_IS_AVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscache_obtained_object(%struct.fscache_object* %0) #0 {
  %2 = alloca %struct.fscache_object*, align 8
  %3 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %2, align 8
  %4 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %5 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %4, i32 0, i32 3
  %6 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  store %struct.fscache_cookie* %6, %struct.fscache_cookie** %3, align 8
  %7 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %8 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %11 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14)
  %16 = load i32, i32* @FSCACHE_OBJECT_IS_LOOKED_UP, align 4
  %17 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %18 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %17, i32 0, i32 0
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %1
  %22 = call i32 @fscache_stat(i32* @fscache_n_object_lookups_positive)
  %23 = load i32, i32* @FSCACHE_COOKIE_NO_DATA_YET, align 4
  %24 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %25 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %24, i32 0, i32 0
  %26 = call i32 @clear_bit_unlock(i32 %23, i32* %25)
  %27 = load i32, i32* @FSCACHE_COOKIE_LOOKING_UP, align 4
  %28 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %29 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %28, i32 0, i32 0
  %30 = call i32 @clear_bit_unlock(i32 %27, i32* %29)
  %31 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %32 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %31, i32 0, i32 0
  %33 = load i32, i32* @FSCACHE_COOKIE_LOOKING_UP, align 4
  %34 = call i32 @wake_up_bit(i32* %32, i32 %33)
  br label %37

35:                                               ; preds = %1
  %36 = call i32 @fscache_stat(i32* @fscache_n_object_created)
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, i32* @FSCACHE_OBJECT_IS_AVAILABLE, align 4
  %39 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %40 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %39, i32 0, i32 0
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
