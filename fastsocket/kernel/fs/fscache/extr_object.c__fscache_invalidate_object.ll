; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c__fscache_invalidate_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c__fscache_invalidate_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i32, %struct.TYPE_6__*, %struct.fscache_cookie*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fscache_cookie = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.fscache_operation = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{OBJ%x},%d\00", align 1
@FSCACHE_COOKIE_RETIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" [no cookie]\00", align 1
@KILL_OBJECT = common dso_local global i32 0, align 4
@FSCACHE_OBJECT_PENDING_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FSCACHE_OP_SLOW = common dso_local global i32 0, align 4
@FSCACHE_OP_EXCLUSIVE = common dso_local global i32 0, align 4
@FSCACHE_OP_UNUSE_COOKIE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Inval\00", align 1
@FSCACHE_COOKIE_NO_DATA_YET = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_INVALIDATING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" [ok]\00", align 1
@UPDATE_OBJECT = common dso_local global i32 0, align 4
@FSCACHE_OBJECT_IS_LIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" [ENOMEM]\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" [EIO]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @_fscache_invalidate_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @_fscache_invalidate_object(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_state*, align 8
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fscache_operation*, align 8
  %7 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %9 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %8, i32 0, i32 2
  %10 = load %struct.fscache_cookie*, %struct.fscache_cookie** %9, align 8
  store %struct.fscache_cookie* %10, %struct.fscache_cookie** %7, align 8
  %11 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %12 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %17 = call i32 @fscache_use_cookie(%struct.fscache_object* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %2
  %20 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %21 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %20, i32 0, i32 2
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %23 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* @FSCACHE_COOKIE_RETIRED, align 4
  %30 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %31 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %30, i32 0, i32 1
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = call i32 @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @KILL_OBJECT, align 4
  %35 = call %struct.fscache_state* @transit_to(i32 %34)
  store %struct.fscache_state* %35, %struct.fscache_state** %3, align 8
  br label %128

36:                                               ; preds = %2
  %37 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %38 = call i32 @fscache_invalidate_writes(%struct.fscache_cookie* %37)
  %39 = load i32, i32* @FSCACHE_OBJECT_PENDING_WRITE, align 4
  %40 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %41 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  %43 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %44 = call i32 @fscache_cancel_all_ops(%struct.fscache_object* %43)
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.fscache_operation* @kzalloc(i32 4, i32 %45)
  store %struct.fscache_operation* %46, %struct.fscache_operation** %6, align 8
  %47 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %48 = icmp ne %struct.fscache_operation* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %105

50:                                               ; preds = %36
  %51 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %52 = call i32 @fscache_operation_init(%struct.fscache_operation* %51, i32* null)
  %53 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %54 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %55 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fscache_operation_init_slow(%struct.fscache_operation* %53, i32 %60)
  %62 = load i32, i32* @FSCACHE_OP_SLOW, align 4
  %63 = load i32, i32* @FSCACHE_OP_EXCLUSIVE, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = load i32, i32* @FSCACHE_OP_UNUSE_COOKIE, align 4
  %67 = shl i32 1, %66
  %68 = or i32 %65, %67
  %69 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %70 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %72 = call i32 @fscache_set_op_name(%struct.fscache_operation* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %74 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %73, i32 0, i32 0
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %77 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %78 = call i64 @fscache_submit_exclusive_op(%struct.fscache_object* %76, %struct.fscache_operation* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %50
  br label %115

81:                                               ; preds = %50
  %82 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %83 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %86 = call i32 @fscache_put_operation(%struct.fscache_operation* %85)
  %87 = load i32, i32* @FSCACHE_COOKIE_NO_DATA_YET, align 4
  %88 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %89 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %88, i32 0, i32 1
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  %91 = load i32, i32* @FSCACHE_COOKIE_INVALIDATING, align 4
  %92 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %93 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %92, i32 0, i32 1
  %94 = call i64 @test_and_clear_bit(i32 %91, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %81
  %97 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %98 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %97, i32 0, i32 1
  %99 = load i32, i32* @FSCACHE_COOKIE_INVALIDATING, align 4
  %100 = call i32 @wake_up_bit(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %81
  %102 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @UPDATE_OBJECT, align 4
  %104 = call %struct.fscache_state* @transit_to(i32 %103)
  store %struct.fscache_state* %104, %struct.fscache_state** %3, align 8
  br label %128

105:                                              ; preds = %49
  %106 = load i32, i32* @FSCACHE_OBJECT_IS_LIVE, align 4
  %107 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %108 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %107, i32 0, i32 0
  %109 = call i32 @clear_bit(i32 %106, i32* %108)
  %110 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %111 = call i32 @fscache_unuse_cookie(%struct.fscache_object* %110)
  %112 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* @KILL_OBJECT, align 4
  %114 = call %struct.fscache_state* @transit_to(i32 %113)
  store %struct.fscache_state* %114, %struct.fscache_state** %3, align 8
  br label %128

115:                                              ; preds = %80
  %116 = load i32, i32* @FSCACHE_OBJECT_IS_LIVE, align 4
  %117 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %118 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %117, i32 0, i32 0
  %119 = call i32 @clear_bit(i32 %116, i32* %118)
  %120 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %121 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %124 = call i32 @kfree(%struct.fscache_operation* %123)
  %125 = call i32 @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* @KILL_OBJECT, align 4
  %127 = call %struct.fscache_state* @transit_to(i32 %126)
  store %struct.fscache_state* %127, %struct.fscache_state** %3, align 8
  br label %128

128:                                              ; preds = %115, %105, %101, %19
  %129 = load %struct.fscache_state*, %struct.fscache_state** %3, align 8
  ret %struct.fscache_state* %129
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @fscache_use_cookie(%struct.fscache_object*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

declare dso_local i32 @fscache_invalidate_writes(%struct.fscache_cookie*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fscache_cancel_all_ops(%struct.fscache_object*) #1

declare dso_local %struct.fscache_operation* @kzalloc(i32, i32) #1

declare dso_local i32 @fscache_operation_init(%struct.fscache_operation*, i32*) #1

declare dso_local i32 @fscache_operation_init_slow(%struct.fscache_operation*, i32) #1

declare dso_local i32 @fscache_set_op_name(%struct.fscache_operation*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @fscache_submit_exclusive_op(%struct.fscache_object*, %struct.fscache_operation*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fscache_put_operation(%struct.fscache_operation*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @fscache_unuse_cookie(%struct.fscache_object*) #1

declare dso_local i32 @kfree(%struct.fscache_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
