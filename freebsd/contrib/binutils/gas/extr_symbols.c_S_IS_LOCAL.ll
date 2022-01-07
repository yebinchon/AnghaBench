; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_S_IS_LOCAL.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_S_IS_LOCAL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@reg_section = common dso_local global i64 0, align 8
@flag_strip_local_absolute = common dso_local global i64 0, align 8
@BSF_FILE = common dso_local global i32 0, align 4
@absolute_section = common dso_local global i64 0, align 8
@DOLLAR_LABEL_CHAR = common dso_local global i32 0, align 4
@LOCAL_LABEL_CHAR = common dso_local global i32 0, align 4
@flag_keep_locals = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@flag_mri = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @S_IS_LOCAL(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_8__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %108

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BSF_LOCAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @BSF_GLOBAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %20, %10
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = call i64 @bfd_get_section(%struct.TYPE_9__* %30)
  %32 = load i64, i64* @reg_section, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %108

35:                                               ; preds = %27
  %36 = load i64, i64* @flag_strip_local_absolute, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BSF_GLOBAL, align 4
  %41 = load i32, i32* @BSF_FILE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = call i64 @bfd_get_section(%struct.TYPE_9__* %48)
  %50 = load i64, i64* @absolute_section, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %108

53:                                               ; preds = %45, %38, %35
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = call i8* @S_GET_NAME(%struct.TYPE_8__* %54)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %105

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = call i32 @S_IS_DEBUG(%struct.TYPE_8__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %105, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* @DOLLAR_LABEL_CHAR, align 4
  %65 = call i64 @strchr(i8* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %103, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @LOCAL_LABEL_CHAR, align 4
  %70 = call i64 @strchr(i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @flag_keep_locals, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %101, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @stdoutput, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i64 @bfd_is_local_label(i32 %76, %struct.TYPE_9__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %75
  %83 = load i64, i64* @flag_mri, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 63
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 63
  br label %97

97:                                               ; preds = %91, %85, %82
  %98 = phi i1 [ false, %85 ], [ false, %82 ], [ %96, %91 ]
  br label %99

99:                                               ; preds = %97, %75
  %100 = phi i1 [ true, %75 ], [ %98, %97 ]
  br label %101

101:                                              ; preds = %99, %72
  %102 = phi i1 [ false, %72 ], [ %100, %99 ]
  br label %103

103:                                              ; preds = %101, %67, %62
  %104 = phi i1 [ true, %67 ], [ true, %62 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %58, %53
  %106 = phi i1 [ false, %58 ], [ false, %53 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %52, %34, %9
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_8__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @bfd_get_section(%struct.TYPE_9__*) #1

declare dso_local i8* @S_GET_NAME(%struct.TYPE_8__*) #1

declare dso_local i32 @S_IS_DEBUG(%struct.TYPE_8__*) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i64 @bfd_is_local_label(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
