; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_enter_macro_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_enter_macro_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i32, i32, %struct.TYPE_27__, i32, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { i64 }

@NODE_BUILTIN = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"function-like macro \22%s\22 must be used with arguments in traditional C\00", align 1
@NODE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_30__*)* @enter_macro_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enter_macro_context(%struct.TYPE_28__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %8 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NODE_BUILTIN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %119, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  store %struct.TYPE_29__* %23, %struct.TYPE_29__** %6, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %95

28:                                               ; preds = %19
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %43 = call %struct.TYPE_31__* @funlike_invocation_p(%struct.TYPE_28__* %41, %struct.TYPE_30__* %42)
  store %struct.TYPE_31__* %43, %struct.TYPE_31__** %7, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %57 = icmp eq %struct.TYPE_31__* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %28
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %60 = call i64 @CPP_WTRADITIONAL(%struct.TYPE_28__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %72 = load i32, i32* @CPP_DL_WARNING, align 4
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %74 = call i32 @NODE_NAME(%struct.TYPE_30__* %73)
  %75 = call i32 @cpp_error(%struct.TYPE_28__* %71, i32 %72, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %62, %58
  store i32 0, i32* %3, align 4
  br label %123

77:                                               ; preds = %28
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @replace_args(%struct.TYPE_28__* %83, %struct.TYPE_30__* %84, %struct.TYPE_29__* %85, i32* %89)
  br label %91

91:                                               ; preds = %82, %77
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %94 = call i32 @_cpp_release_buff(%struct.TYPE_28__* %92, %struct.TYPE_31__* %93)
  br label %95

95:                                               ; preds = %91, %19
  %96 = load i32, i32* @NODE_DISABLED, align 4
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %95
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @_cpp_push_token_context(%struct.TYPE_28__* %108, %struct.TYPE_30__* %109, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %107, %95
  store i32 1, i32* %3, align 4
  br label %123

119:                                              ; preds = %2
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %122 = call i32 @builtin_macro(%struct.TYPE_28__* %120, %struct.TYPE_30__* %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %118, %76
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_31__* @funlike_invocation_p(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local i64 @CPP_WTRADITIONAL(%struct.TYPE_28__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_28__*, i32, i8*, i32) #1

declare dso_local i32 @NODE_NAME(%struct.TYPE_30__*) #1

declare dso_local i32 @replace_args(%struct.TYPE_28__*, %struct.TYPE_30__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @_cpp_release_buff(%struct.TYPE_28__*, %struct.TYPE_31__*) #1

declare dso_local i32 @_cpp_push_token_context(%struct.TYPE_28__*, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @builtin_macro(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
