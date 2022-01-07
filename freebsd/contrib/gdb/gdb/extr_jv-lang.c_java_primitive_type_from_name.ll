; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_primitive_type_from_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_java_primitive_type_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@java_byte_type = common dso_local global %struct.type* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@java_boolean_type = common dso_local global %struct.type* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@java_char_type = common dso_local global %struct.type* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@java_double_type = common dso_local global %struct.type* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@java_float_type = common dso_local global %struct.type* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@java_int_type = common dso_local global %struct.type* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@java_long_type = common dso_local global %struct.type* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@java_short_type = common dso_local global %struct.type* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@java_void_type = common dso_local global %struct.type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @java_primitive_type_from_name(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %99 [
    i32 98, label %10
    i32 99, label %29
    i32 100, label %39
    i32 102, label %49
    i32 105, label %59
    i32 108, label %69
    i32 115, label %79
    i32 118, label %89
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @memcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load %struct.type*, %struct.type** @java_byte_type, align 8
  store %struct.type* %18, %struct.type** %3, align 8
  br label %100

19:                                               ; preds = %13, %10
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @memcmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load %struct.type*, %struct.type** @java_boolean_type, align 8
  store %struct.type* %27, %struct.type** %3, align 8
  br label %100

28:                                               ; preds = %22, %19
  br label %99

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @memcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load %struct.type*, %struct.type** @java_char_type, align 8
  store %struct.type* %37, %struct.type** %3, align 8
  br label %100

38:                                               ; preds = %32, %29
  br label %39

39:                                               ; preds = %2, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @memcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.type*, %struct.type** @java_double_type, align 8
  store %struct.type* %47, %struct.type** %3, align 8
  br label %100

48:                                               ; preds = %42, %39
  br label %99

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @memcmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load %struct.type*, %struct.type** @java_float_type, align 8
  store %struct.type* %57, %struct.type** %3, align 8
  br label %100

58:                                               ; preds = %52, %49
  br label %99

59:                                               ; preds = %2
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @memcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load %struct.type*, %struct.type** @java_int_type, align 8
  store %struct.type* %67, %struct.type** %3, align 8
  br label %100

68:                                               ; preds = %62, %59
  br label %99

69:                                               ; preds = %2
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @memcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load %struct.type*, %struct.type** @java_long_type, align 8
  store %struct.type* %77, %struct.type** %3, align 8
  br label %100

78:                                               ; preds = %72, %69
  br label %99

79:                                               ; preds = %2
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 5
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @memcmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load %struct.type*, %struct.type** @java_short_type, align 8
  store %struct.type* %87, %struct.type** %3, align 8
  br label %100

88:                                               ; preds = %82, %79
  br label %99

89:                                               ; preds = %2
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @memcmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load %struct.type*, %struct.type** @java_void_type, align 8
  store %struct.type* %97, %struct.type** %3, align 8
  br label %100

98:                                               ; preds = %92, %89
  br label %99

99:                                               ; preds = %2, %98, %88, %78, %68, %58, %48, %28
  store %struct.type* null, %struct.type** %3, align 8
  br label %100

100:                                              ; preds = %99, %96, %86, %76, %66, %56, %46, %36, %26, %17
  %101 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %101
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
