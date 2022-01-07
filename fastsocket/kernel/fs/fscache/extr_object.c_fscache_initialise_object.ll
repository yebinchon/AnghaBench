; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_initialise_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_initialise_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__*, %struct.fscache_object*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.fscache_object*)* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{OBJ%x},%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" [no parent]\00", align 1
@DROP_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"parent: %s of:%lx\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" [bad parent]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" [ready]\00", align 1
@PARENT_READY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@fscache_n_cop_grab_object = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c" [grab failed]\00", align 1
@FSCACHE_OBJECT_EV_NEW_CHILD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" [wait]\00", align 1
@WAIT_FOR_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_initialise_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_initialise_object(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_state*, align 8
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fscache_object*, align 8
  %7 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %9 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %14 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %13, i32 0, i32 2
  %15 = call i32 @list_empty(i32* %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %18 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %17, i32 0, i32 6
  %19 = load %struct.fscache_object*, %struct.fscache_object** %18, align 8
  store %struct.fscache_object* %19, %struct.fscache_object** %6, align 8
  %20 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %21 = icmp ne %struct.fscache_object* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = call i32 @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @DROP_OBJECT, align 4
  %25 = call %struct.fscache_state* @transit_to(i32 %24)
  store %struct.fscache_state* %25, %struct.fscache_state** %3, align 8
  br label %95

26:                                               ; preds = %2
  %27 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %28 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %33 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %37 = call i64 @fscache_object_is_dying(%struct.fscache_object* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = call i32 @_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @DROP_OBJECT, align 4
  %42 = call %struct.fscache_state* @transit_to(i32 %41)
  store %struct.fscache_state* %42, %struct.fscache_state** %3, align 8
  br label %95

43:                                               ; preds = %26
  %44 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %45 = call i64 @fscache_object_is_available(%struct.fscache_object* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 @_leave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @PARENT_READY, align 4
  %50 = call %struct.fscache_state* @transit_to(i32 %49)
  store %struct.fscache_state* %50, %struct.fscache_state** %3, align 8
  br label %95

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %53 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %54 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = call i32 @fscache_stat(i32* @fscache_n_cop_grab_object)
  store i32 0, i32* %7, align 4
  %57 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %58 = call i64 @fscache_object_is_live(%struct.fscache_object* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %62 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64 (%struct.fscache_object*)*, i64 (%struct.fscache_object*)** %66, align 8
  %68 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %69 = call i64 %67(%struct.fscache_object* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %73 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %72, i32 0, i32 2
  %74 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %75 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %74, i32 0, i32 1
  %76 = call i32 @list_add(i32* %73, i32* %75)
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %60, %51
  %78 = call i32 @fscache_stat_d(i32* @fscache_n_cop_grab_object)
  %79 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %80 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = call i32 @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32, i32* @DROP_OBJECT, align 4
  %87 = call %struct.fscache_state* @transit_to(i32 %86)
  store %struct.fscache_state* %87, %struct.fscache_state** %3, align 8
  br label %95

88:                                               ; preds = %77
  %89 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %90 = load i32, i32* @FSCACHE_OBJECT_EV_NEW_CHILD, align 4
  %91 = call i32 @fscache_raise_event(%struct.fscache_object* %89, i32 %90)
  %92 = call i32 @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %93 = load i32, i32* @WAIT_FOR_PARENT, align 4
  %94 = call %struct.fscache_state* @transit_to(i32 %93)
  store %struct.fscache_state* %94, %struct.fscache_state** %3, align 8
  br label %95

95:                                               ; preds = %88, %84, %47, %39, %22
  %96 = load %struct.fscache_state*, %struct.fscache_state** %3, align 8
  ret %struct.fscache_state* %96
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i64 @fscache_object_is_dying(%struct.fscache_object*) #1

declare dso_local i64 @fscache_object_is_available(%struct.fscache_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i64 @fscache_object_is_live(%struct.fscache_object*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @fscache_stat_d(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fscache_raise_event(%struct.fscache_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
