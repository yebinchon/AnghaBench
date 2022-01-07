; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_get_real_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_get_real_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.debug_type* }
%struct.TYPE_4__ = type { %struct.debug_type** }
%struct.debug_type_real_list = type { %struct.debug_type*, %struct.debug_type_real_list* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"debug_get_real_type: circular debug information for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.debug_type* (i8*, %struct.debug_type*, %struct.debug_type_real_list*)* @debug_get_real_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.debug_type* @debug_get_real_type(i8* %0, %struct.debug_type* %1, %struct.debug_type_real_list* %2) #0 {
  %4 = alloca %struct.debug_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.debug_type*, align 8
  %7 = alloca %struct.debug_type_real_list*, align 8
  %8 = alloca %struct.debug_type_real_list*, align 8
  %9 = alloca %struct.debug_type_real_list, align 8
  store i8* %0, i8** %5, align 8
  store %struct.debug_type* %1, %struct.debug_type** %6, align 8
  store %struct.debug_type_real_list* %2, %struct.debug_type_real_list** %7, align 8
  %10 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %11 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %13 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %15
  ]

13:                                               ; preds = %3
  %14 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  store %struct.debug_type* %14, %struct.debug_type** %4, align 8
  br label %84

15:                                               ; preds = %3, %3, %3
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %7, align 8
  store %struct.debug_type_real_list* %17, %struct.debug_type_real_list** %8, align 8
  br label %18

18:                                               ; preds = %41, %16
  %19 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %8, align 8
  %20 = icmp ne %struct.debug_type_real_list* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %8, align 8
  %23 = getelementptr inbounds %struct.debug_type_real_list, %struct.debug_type_real_list* %22, i32 0, i32 0
  %24 = load %struct.debug_type*, %struct.debug_type** %23, align 8
  %25 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %26 = icmp eq %struct.debug_type* %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %8, align 8
  %29 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %8, align 8
  %30 = getelementptr inbounds %struct.debug_type_real_list, %struct.debug_type_real_list* %29, i32 0, i32 1
  %31 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %30, align 8
  %32 = icmp eq %struct.debug_type_real_list* %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27, %21
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %38 = call i8* @debug_get_type_name(i8* %36, %struct.debug_type* %37)
  %39 = call i32 @fprintf(i32 %34, i8* %35, i8* %38)
  store %struct.debug_type* null, %struct.debug_type** %4, align 8
  br label %84

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %8, align 8
  %43 = getelementptr inbounds %struct.debug_type_real_list, %struct.debug_type_real_list* %42, i32 0, i32 1
  %44 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %43, align 8
  store %struct.debug_type_real_list* %44, %struct.debug_type_real_list** %8, align 8
  br label %18

45:                                               ; preds = %18
  %46 = load %struct.debug_type_real_list*, %struct.debug_type_real_list** %7, align 8
  %47 = getelementptr inbounds %struct.debug_type_real_list, %struct.debug_type_real_list* %9, i32 0, i32 1
  store %struct.debug_type_real_list* %46, %struct.debug_type_real_list** %47, align 8
  %48 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %49 = getelementptr inbounds %struct.debug_type_real_list, %struct.debug_type_real_list* %9, i32 0, i32 0
  store %struct.debug_type* %48, %struct.debug_type** %49, align 8
  %50 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %51 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %53 [
    i32 130, label %54
    i32 129, label %75
    i32 128, label %75
  ]

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %45, %53
  %55 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %56 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.debug_type**, %struct.debug_type*** %59, align 8
  %61 = load %struct.debug_type*, %struct.debug_type** %60, align 8
  %62 = icmp ne %struct.debug_type* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load i8*, i8** %5, align 8
  %65 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %66 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.debug_type**, %struct.debug_type*** %69, align 8
  %71 = load %struct.debug_type*, %struct.debug_type** %70, align 8
  %72 = call %struct.debug_type* @debug_get_real_type(i8* %64, %struct.debug_type* %71, %struct.debug_type_real_list* %9)
  store %struct.debug_type* %72, %struct.debug_type** %4, align 8
  br label %84

73:                                               ; preds = %54
  %74 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  store %struct.debug_type* %74, %struct.debug_type** %4, align 8
  br label %84

75:                                               ; preds = %45, %45
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %78 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.debug_type*, %struct.debug_type** %81, align 8
  %83 = call %struct.debug_type* @debug_get_real_type(i8* %76, %struct.debug_type* %82, %struct.debug_type_real_list* %9)
  store %struct.debug_type* %83, %struct.debug_type** %4, align 8
  br label %84

84:                                               ; preds = %75, %73, %63, %33, %13
  %85 = load %struct.debug_type*, %struct.debug_type** %4, align 8
  ret %struct.debug_type* %85
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @debug_get_type_name(i8*, %struct.debug_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
