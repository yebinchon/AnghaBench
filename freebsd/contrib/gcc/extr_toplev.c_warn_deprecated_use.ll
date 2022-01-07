; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_warn_deprecated_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_warn_deprecated_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@warn_deprecated_decl = common dso_local global i32 0, align 4
@OPT_Wdeprecated_declarations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%qs is deprecated (declared at %s:%d)\00", align 1
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"type is deprecated (declared at %s:%d)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%qs is deprecated\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"type is deprecated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warn_deprecated_use(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @warn_deprecated_decl, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %1
  br label %108

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @DECL_P(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @DECL_SOURCE_LOCATION(i64 %18)
  %20 = call i64 @expand_location(i32 %19)
  %21 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %20, i64* %21, align 4
  %22 = load i32, i32* @OPT_Wdeprecated_declarations, align 4
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @DECL_NAME(i64 %23)
  %25 = call i8* @IDENTIFIER_POINTER(i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @warning(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27, i32 %29)
  br label %108

31:                                               ; preds = %13
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @TYPE_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %107

35:                                               ; preds = %31
  store i8* null, i8** %4, align 8
  %36 = load i64, i64* %2, align 8
  %37 = call i64 @TYPE_STUB_DECL(i64 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %2, align 8
  %39 = call i64 @TYPE_NAME(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @TYPE_NAME(i64 %42)
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @IDENTIFIER_NODE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i64, i64* %2, align 8
  %49 = call i64 @TYPE_NAME(i64 %48)
  %50 = call i8* @IDENTIFIER_POINTER(i64 %49)
  store i8* %50, i8** %4, align 8
  br label %68

51:                                               ; preds = %41
  %52 = load i64, i64* %2, align 8
  %53 = call i64 @TYPE_NAME(i64 %52)
  %54 = call i64 @TREE_CODE(i64 %53)
  %55 = load i64, i64* @TYPE_DECL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load i64, i64* %2, align 8
  %59 = call i64 @TYPE_NAME(i64 %58)
  %60 = call i64 @DECL_NAME(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i64, i64* %2, align 8
  %64 = call i64 @TYPE_NAME(i64 %63)
  %65 = call i64 @DECL_NAME(i64 %64)
  %66 = call i8* @IDENTIFIER_POINTER(i64 %65)
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %62, %57, %51
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @DECL_SOURCE_LOCATION(i64 %73)
  %75 = call i64 @expand_location(i32 %74)
  %76 = bitcast %struct.TYPE_3__* %6 to i64*
  store i64 %75, i64* %76, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32, i32* @OPT_Wdeprecated_declarations, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @warning(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %81, i32 %83, i32 %85)
  br label %94

87:                                               ; preds = %72
  %88 = load i32, i32* @OPT_Wdeprecated_declarations, align 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @warning(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %87, %79
  br label %106

95:                                               ; preds = %69
  %96 = load i8*, i8** %4, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @OPT_Wdeprecated_declarations, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 (i32, i8*, ...) @warning(i32 %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  br label %105

102:                                              ; preds = %95
  %103 = load i32, i32* @OPT_Wdeprecated_declarations, align 4
  %104 = call i32 (i32, i8*, ...) @warning(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %98
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %31
  br label %108

108:                                              ; preds = %12, %107, %17
  ret void
}

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @expand_location(i32) #1

declare dso_local i32 @DECL_SOURCE_LOCATION(i64) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TYPE_STUB_DECL(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
