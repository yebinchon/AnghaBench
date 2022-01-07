; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_character_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_character_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_CHAR = common dso_local global i64 0, align 8
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_RANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wide_character\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_character_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  %4 = load %struct.type*, %struct.type** %2, align 8
  %5 = call i8* @ada_type_name(%struct.type* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.type*, %struct.type** %2, align 8
  %10 = call i64 @TYPE_CODE(%struct.type* %9)
  %11 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load %struct.type*, %struct.type** %2, align 8
  %15 = call i64 @TYPE_CODE(%struct.type* %14)
  %16 = load i64, i64* @TYPE_CODE_INT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.type*, %struct.type** %2, align 8
  %20 = call i64 @TYPE_CODE(%struct.type* %19)
  %21 = load i64, i64* @TYPE_CODE_RANGE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %18, %13, %8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @DEPRECATED_STREQ(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @DEPRECATED_STREQ(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @DEPRECATED_STREQ(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %27, %23
  %36 = phi i1 [ true, %27 ], [ true, %23 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %18, %1
  %38 = phi i1 [ false, %18 ], [ false, %1 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i8* @ada_type_name(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
