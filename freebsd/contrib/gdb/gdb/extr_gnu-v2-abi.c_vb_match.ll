; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v2-abi.c_vb_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v2-abi.c_vb_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, i32, %struct.type*)* @vb_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb_match(%struct.type* %0, i32 %1, %struct.type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.type* %2, %struct.type** %7, align 8
  %11 = load %struct.type*, %struct.type** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @TYPE_FIELD_NAME(%struct.type* %11, i32 %12)
  store i8* %13, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 95
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

19:                                               ; preds = %3
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 118
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 98
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @is_cplus_marker(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %37, %31, %25, %19
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 95
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 118
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 98
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 95
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %64, %58, %52, %46, %40
  %68 = load i8*, i8** %10, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %108

71:                                               ; preds = %67
  %72 = load %struct.type*, %struct.type** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %72, i32 %73)
  store %struct.type* %74, %struct.type** %8, align 8
  %75 = load %struct.type*, %struct.type** %8, align 8
  %76 = icmp eq %struct.type* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load %struct.type*, %struct.type** %8, align 8
  %79 = call i64 @TYPE_CODE(%struct.type* %78)
  %80 = load i64, i64* @TYPE_CODE_PTR, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %71
  store i32 0, i32* %4, align 4
  br label %108

83:                                               ; preds = %77
  %84 = load %struct.type*, %struct.type** %8, align 8
  %85 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %84)
  %86 = load %struct.type*, %struct.type** %7, align 8
  %87 = icmp eq %struct.type* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %108

89:                                               ; preds = %83
  %90 = load %struct.type*, %struct.type** %7, align 8
  %91 = call i32* @TYPE_NAME(%struct.type* %90)
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.type*, %struct.type** %8, align 8
  %95 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %94)
  %96 = call i32* @TYPE_NAME(%struct.type* %95)
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.type*, %struct.type** %7, align 8
  %100 = call i32* @TYPE_NAME(%struct.type* %99)
  %101 = load %struct.type*, %struct.type** %8, align 8
  %102 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %101)
  %103 = call i32* @TYPE_NAME(%struct.type* %102)
  %104 = call i64 @strcmp(i32* %100, i32* %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 1, i32* %4, align 4
  br label %108

107:                                              ; preds = %98, %93, %89
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %106, %88, %82, %70, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @is_cplus_marker(i8 signext) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32* @TYPE_NAME(%struct.type*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
