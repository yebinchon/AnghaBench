; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_class_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_class_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"this\00", align 1
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_CLASS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.type*)* @class_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @class_of(%struct.type* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i64 @TYPE_NFIELDS(%struct.type* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i8* @TYPE_FIELD_NAME(%struct.type* %13, i32 0)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %62

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* null, i8** %2, align 8
  br label %62

23:                                               ; preds = %18
  %24 = load %struct.type*, %struct.type** %3, align 8
  %25 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %24, i32 0)
  store %struct.type* %25, %struct.type** %4, align 8
  %26 = load %struct.type*, %struct.type** %4, align 8
  %27 = icmp eq %struct.type* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8* null, i8** %2, align 8
  br label %62

29:                                               ; preds = %23
  %30 = load %struct.type*, %struct.type** %4, align 8
  %31 = call i64 @TYPE_CODE(%struct.type* %30)
  %32 = load i64, i64* @TYPE_CODE_PTR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* null, i8** %2, align 8
  br label %62

35:                                               ; preds = %29
  %36 = load %struct.type*, %struct.type** %4, align 8
  %37 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %36)
  store %struct.type* %37, %struct.type** %6, align 8
  %38 = load %struct.type*, %struct.type** %6, align 8
  %39 = icmp eq %struct.type* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* null, i8** %2, align 8
  br label %62

41:                                               ; preds = %35
  %42 = load %struct.type*, %struct.type** %6, align 8
  %43 = call i64 @TYPE_CODE(%struct.type* %42)
  %44 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8* null, i8** %2, align 8
  br label %62

47:                                               ; preds = %41
  %48 = load %struct.type*, %struct.type** %6, align 8
  %49 = call i8* @TYPE_NAME(%struct.type* %48)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* null, i8** %2, align 8
  br label %62

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 6
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i8*, i8** %7, align 8
  store i8* %61, i8** %2, align 8
  br label %62

62:                                               ; preds = %60, %52, %46, %40, %34, %28, %22, %17, %11
  %63 = load i8*, i8** %2, align 8
  ret i8* %63
}

declare dso_local i64 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
