; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_kill_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_kill_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i64, i64, i64, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"{OBJ%x,%d,%d},%d\00", align 1
@FSCACHE_OBJECT_IS_LIVE = common dso_local global i32 0, align 4
@DROP_OBJECT = common dso_local global i32 0, align 4
@KILL_DEPENDENTS = common dso_local global i32 0, align 4
@WAIT_FOR_CLEARANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_kill_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_kill_object(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_state*, align 8
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %7 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %10 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %13 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @_enter(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %11, i64 %14, i32 %15)
  %17 = load i32, i32* @FSCACHE_OBJECT_IS_LIVE, align 4
  %18 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %19 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %18, i32 0, i32 6
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %22 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %24 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %23, i32 0, i32 3
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %29 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %34 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @DROP_OBJECT, align 4
  %39 = call %struct.fscache_state* @transit_to(i32 %38)
  store %struct.fscache_state* %39, %struct.fscache_state** %3, align 8
  br label %76

40:                                               ; preds = %32, %27, %2
  %41 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %42 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %47 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %46, i32 0, i32 4
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %50 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %55 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %60 = call i32 @fscache_start_operations(%struct.fscache_object* %59)
  br label %61

61:                                               ; preds = %58, %53, %45
  %62 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %63 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %62, i32 0, i32 4
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %61, %40
  %66 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %67 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %66, i32 0, i32 3
  %68 = call i64 @list_empty(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @KILL_DEPENDENTS, align 4
  %72 = call %struct.fscache_state* @transit_to(i32 %71)
  store %struct.fscache_state* %72, %struct.fscache_state** %3, align 8
  br label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @WAIT_FOR_CLEARANCE, align 4
  %75 = call %struct.fscache_state* @transit_to(i32 %74)
  store %struct.fscache_state* %75, %struct.fscache_state** %3, align 8
  br label %76

76:                                               ; preds = %73, %70, %37
  %77 = load %struct.fscache_state*, %struct.fscache_state** %3, align 8
  ret %struct.fscache_state* %77
}

declare dso_local i32 @_enter(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fscache_start_operations(%struct.fscache_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
