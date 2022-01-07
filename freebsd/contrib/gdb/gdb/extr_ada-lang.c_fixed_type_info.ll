; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_fixed_type_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_fixed_type_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_UNDEF = common dso_local global i32 0, align 4
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TYPE_CODE_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"___XF_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.type*)* @fixed_type_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fixed_type_info(%struct.type* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = call i8* @ada_type_name(%struct.type* %7)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = icmp eq %struct.type* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TYPE_CODE_UNDEF, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = call i32 @TYPE_CODE(%struct.type* %14)
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ %12, %11 ], [ %15, %13 ]
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TYPE_CODE_INT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TYPE_CODE_RANGE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21, %16
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @strstr(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i8* null, i8** %2, align 8
  br label %51

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 5
  store i8* %36, i8** %2, align 8
  br label %51

37:                                               ; preds = %25, %21
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @TYPE_CODE_RANGE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.type*, %struct.type** %3, align 8
  %43 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %42)
  %44 = load %struct.type*, %struct.type** %3, align 8
  %45 = icmp ne %struct.type* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.type*, %struct.type** %3, align 8
  %48 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %47)
  %49 = call i8* @fixed_type_info(%struct.type* %48)
  store i8* %49, i8** %2, align 8
  br label %51

50:                                               ; preds = %41, %37
  store i8* null, i8** %2, align 8
  br label %51

51:                                               ; preds = %50, %46, %34, %33
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i8* @ada_type_name(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
