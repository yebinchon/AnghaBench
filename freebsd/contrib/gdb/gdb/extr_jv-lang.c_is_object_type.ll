; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_is_object_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_is_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"java.lang.Object\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vtable\00", align 1
@java_object_type = common dso_local global %struct.type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_object_type(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = call i32 @CHECK_TYPEDEF(%struct.type* %6)
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i64 @TYPE_CODE(%struct.type* %8)
  %10 = load i64, i64* @TYPE_CODE_PTR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %62

12:                                               ; preds = %1
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i32 @TYPE_TARGET_TYPE(%struct.type* %13)
  %15 = call %struct.type* @check_typedef(i32 %14)
  store %struct.type* %15, %struct.type** %4, align 8
  %16 = load %struct.type*, %struct.type** %4, align 8
  %17 = call i64 @TYPE_CODE(%struct.type* %16)
  %18 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %63

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %26, %21
  %23 = load %struct.type*, %struct.type** %4, align 8
  %24 = call i64 @TYPE_N_BASECLASSES(%struct.type* %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.type*, %struct.type** %4, align 8
  %28 = call %struct.type* @TYPE_BASECLASS(%struct.type* %27, i32 0)
  store %struct.type* %28, %struct.type** %4, align 8
  br label %22

29:                                               ; preds = %22
  %30 = load %struct.type*, %struct.type** %4, align 8
  %31 = call i8* @TYPE_TAG_NAME(%struct.type* %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %63

39:                                               ; preds = %34, %29
  %40 = load %struct.type*, %struct.type** %4, align 8
  %41 = call i64 @TYPE_NFIELDS(%struct.type* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.type*, %struct.type** %4, align 8
  %45 = call i8* @TYPE_FIELD_NAME(%struct.type* %44, i32 0)
  br label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i8* [ %45, %43 ], [ null, %46 ]
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.type*, %struct.type** @java_object_type, align 8
  %57 = icmp eq %struct.type* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %59, %struct.type** @java_object_type, align 8
  br label %60

60:                                               ; preds = %58, %55
  store i32 1, i32* %2, align 4
  br label %63

61:                                               ; preds = %51, %47
  br label %62

62:                                               ; preds = %61, %1
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %60, %38, %20
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local i8* @TYPE_TAG_NAME(%struct.type*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
