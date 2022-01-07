; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_clone_if_forward_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_clone_if_forward_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i64, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64 }

@expr_section = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @symbol_clone_if_forward_ref(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = icmp ne %struct.TYPE_14__* %7, null
  br i1 %8, label %9, label %108

9:                                                ; preds = %2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = call i32 @LOCAL_SYMBOL_CHECK(%struct.TYPE_14__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %108, label %13

13:                                               ; preds = %9
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = call i64 @S_IS_VOLATILE(%struct.TYPE_14__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = call i32 @S_GET_NAME(%struct.TYPE_14__* %38)
  %40 = call %struct.TYPE_14__* @symbol_find_exact(i32 %39)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %5, align 8
  br label %41

41:                                               ; preds = %37, %33, %30
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = call i64 @S_IS_VOLATILE(%struct.TYPE_14__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = call i32 @S_GET_NAME(%struct.TYPE_14__* %49)
  %51 = call %struct.TYPE_14__* @symbol_find_exact(i32 %50)
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %6, align 8
  br label %52

52:                                               ; preds = %48, %44, %41
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @expr_section, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call %struct.TYPE_14__* @symbol_clone_if_forward_ref(%struct.TYPE_14__* %69, i32 %70)
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %5, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call %struct.TYPE_14__* @symbol_clone_if_forward_ref(%struct.TYPE_14__* %72, i32 %73)
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %6, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %66, %61, %53
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = icmp ne %struct.TYPE_14__* %83, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = icmp ne %struct.TYPE_14__* %90, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %89, %82, %77
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = call %struct.TYPE_14__* @symbol_clone(%struct.TYPE_14__* %97, i32 0)
  store %struct.TYPE_14__* %98, %struct.TYPE_14__** %3, align 8
  br label %99

99:                                               ; preds = %96, %89
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %103, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %107, align 8
  br label %108

108:                                              ; preds = %99, %9, %2
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %109
}

declare dso_local i32 @LOCAL_SYMBOL_CHECK(%struct.TYPE_14__*) #1

declare dso_local i64 @S_IS_VOLATILE(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @symbol_find_exact(i32) #1

declare dso_local i32 @S_GET_NAME(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @symbol_clone(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
