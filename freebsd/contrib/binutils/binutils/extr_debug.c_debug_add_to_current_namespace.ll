; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_add_to_current_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_add_to_current_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_name = type { i32 }
%struct.debug_handle = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { %struct.debug_namespace* }
%struct.debug_namespace = type { i32 }
%struct.TYPE_4__ = type { %struct.debug_namespace* }

@.str = private unnamed_addr constant [48 x i8] c"debug_add_to_current_namespace: no current file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.debug_name* (%struct.debug_handle*, i8*, i32, i32)* @debug_add_to_current_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.debug_name* @debug_add_to_current_namespace(%struct.debug_handle* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.debug_name*, align 8
  %6 = alloca %struct.debug_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.debug_namespace**, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %12 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %17 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %4
  %21 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @debug_error(i32 %21)
  store %struct.debug_name* null, %struct.debug_name** %5, align 8
  br label %45

23:                                               ; preds = %15
  %24 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %25 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %30 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.debug_namespace** %32, %struct.debug_namespace*** %10, align 8
  br label %38

33:                                               ; preds = %23
  %34 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %35 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store %struct.debug_namespace** %37, %struct.debug_namespace*** %10, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %40 = load %struct.debug_namespace**, %struct.debug_namespace*** %10, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle* %39, %struct.debug_namespace** %40, i8* %41, i32 %42, i32 %43)
  store %struct.debug_name* %44, %struct.debug_name** %5, align 8
  br label %45

45:                                               ; preds = %38, %20
  %46 = load %struct.debug_name*, %struct.debug_name** %5, align 8
  ret %struct.debug_name* %46
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle*, %struct.debug_namespace**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
