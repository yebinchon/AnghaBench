; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c_fscache_attr_changed_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c_fscache_attr_changed_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_operation = type { i32, %struct.fscache_object* }
%struct.fscache_object = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.fscache_object*)* }

@.str = private unnamed_addr constant [13 x i8] c"{OBJ%x OP%x}\00", align 1
@fscache_n_attr_changed_calls = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"CallFS\00", align 1
@fscache_n_cop_attr_changed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fscache_operation*)* @fscache_attr_changed_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fscache_attr_changed_op(%struct.fscache_operation* %0) #0 {
  %2 = alloca %struct.fscache_operation*, align 8
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca i32, align 4
  store %struct.fscache_operation* %0, %struct.fscache_operation** %2, align 8
  %5 = load %struct.fscache_operation*, %struct.fscache_operation** %2, align 8
  %6 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %5, i32 0, i32 1
  %7 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  store %struct.fscache_object* %7, %struct.fscache_object** %3, align 8
  %8 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %9 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.fscache_operation*, %struct.fscache_operation** %2, align 8
  %12 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = call i32 @fscache_stat(i32* @fscache_n_attr_changed_calls)
  %16 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %17 = call i64 @fscache_object_is_active(%struct.fscache_object* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %21 = call i64 @fscache_use_cookie(%struct.fscache_object* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.fscache_operation*, %struct.fscache_operation** %2, align 8
  %25 = call i32 @fscache_set_op_state(%struct.fscache_operation* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @fscache_stat(i32* @fscache_n_cop_attr_changed)
  %27 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %28 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.fscache_object*)*, i32 (%struct.fscache_object*)** %32, align 8
  %34 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %35 = call i32 %33(%struct.fscache_object* %34)
  store i32 %35, i32* %4, align 4
  %36 = call i32 @fscache_stat_d(i32* @fscache_n_cop_attr_changed)
  %37 = load %struct.fscache_operation*, %struct.fscache_operation** %2, align 8
  %38 = call i32 @fscache_set_op_state(%struct.fscache_operation* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %40 = call i32 @fscache_unuse_cookie(%struct.fscache_object* %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %45 = call i32 @fscache_abort_object(%struct.fscache_object* %44)
  br label %46

46:                                               ; preds = %43, %23
  br label %47

47:                                               ; preds = %46, %19, %1
  %48 = load %struct.fscache_operation*, %struct.fscache_operation** %2, align 8
  %49 = call i32 @fscache_op_complete(%struct.fscache_operation* %48, i32 1)
  %50 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i64 @fscache_object_is_active(%struct.fscache_object*) #1

declare dso_local i64 @fscache_use_cookie(%struct.fscache_object*) #1

declare dso_local i32 @fscache_set_op_state(%struct.fscache_operation*, i8*) #1

declare dso_local i32 @fscache_stat_d(i32*) #1

declare dso_local i32 @fscache_unuse_cookie(%struct.fscache_object*) #1

declare dso_local i32 @fscache_abort_object(%struct.fscache_object*) #1

declare dso_local i32 @fscache_op_complete(%struct.fscache_operation*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
