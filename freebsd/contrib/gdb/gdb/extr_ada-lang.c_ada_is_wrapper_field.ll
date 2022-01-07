; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_wrapper_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_wrapper_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"PARENT\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"REP\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_parent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_wrapper_field(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i8* @TYPE_FIELD_NAME(%struct.type* %6, i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @DEPRECATED_STREQN(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @DEPRECATED_STREQ(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @DEPRECATED_STREQN(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 83
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 82
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 79
  br label %41

41:                                               ; preds = %35, %29, %23, %19, %15, %11
  %42 = phi i1 [ true, %29 ], [ true, %23 ], [ true, %19 ], [ true, %15 ], [ true, %11 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %2
  %44 = phi i1 [ false, %2 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
