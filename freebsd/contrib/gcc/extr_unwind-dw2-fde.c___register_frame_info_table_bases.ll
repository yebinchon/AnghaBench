; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c___register_frame_info_table_bases.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c___register_frame_info_table_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { %struct.object*, %struct.TYPE_6__, %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }

@DW_EH_PE_omit = common dso_local global i32 0, align 4
@object_mutex = common dso_local global i32 0, align 4
@unseen_objects = common dso_local global %struct.object* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__register_frame_info_table_bases(i8* %0, %struct.object* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object* %1, %struct.object** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.object*, %struct.object** %6, align 8
  %10 = getelementptr inbounds %struct.object, %struct.object* %9, i32 0, i32 5
  store i8* inttoptr (i64 -1 to i8*), i8** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.object*, %struct.object** %6, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.object*, %struct.object** %6, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.object*, %struct.object** %6, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %struct.object*, %struct.object** %6, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.object*, %struct.object** %6, align 8
  %25 = getelementptr inbounds %struct.object, %struct.object* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @DW_EH_PE_omit, align 4
  %29 = load %struct.object*, %struct.object** %6, align 8
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = call i32 (...) @init_object_mutex_once()
  %34 = call i32 @__gthread_mutex_lock(i32* @object_mutex)
  %35 = load %struct.object*, %struct.object** @unseen_objects, align 8
  %36 = load %struct.object*, %struct.object** %6, align 8
  %37 = getelementptr inbounds %struct.object, %struct.object* %36, i32 0, i32 0
  store %struct.object* %35, %struct.object** %37, align 8
  %38 = load %struct.object*, %struct.object** %6, align 8
  store %struct.object* %38, %struct.object** @unseen_objects, align 8
  %39 = call i32 @__gthread_mutex_unlock(i32* @object_mutex)
  ret void
}

declare dso_local i32 @init_object_mutex_once(...) #1

declare dso_local i32 @__gthread_mutex_lock(i32*) #1

declare dso_local i32 @__gthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
