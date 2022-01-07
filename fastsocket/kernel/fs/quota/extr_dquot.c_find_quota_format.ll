; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_find_quota_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_find_quota_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quota_format_type = type { i32, i32, %struct.quota_format_type* }
%struct.TYPE_2__ = type { i32, i32 }

@dq_list_lock = common dso_local global i32 0, align 4
@quota_formats = common dso_local global %struct.quota_format_type* null, align 8
@module_names = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.quota_format_type* (i32)* @find_quota_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.quota_format_type* @find_quota_format(i32 %0) #0 {
  %2 = alloca %struct.quota_format_type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quota_format_type*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @spin_lock(i32* @dq_list_lock)
  %7 = load %struct.quota_format_type*, %struct.quota_format_type** @quota_formats, align 8
  store %struct.quota_format_type* %7, %struct.quota_format_type** %4, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %10 = icmp ne %struct.quota_format_type* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %13 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %14, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %22 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %21, i32 0, i32 2
  %23 = load %struct.quota_format_type*, %struct.quota_format_type** %22, align 8
  store %struct.quota_format_type* %23, %struct.quota_format_type** %4, align 8
  br label %8

24:                                               ; preds = %17
  %25 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %26 = icmp ne %struct.quota_format_type* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %29 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @try_module_get(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %106, label %33

33:                                               ; preds = %27, %24
  %34 = call i32 @spin_unlock(i32* @dq_list_lock)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %55, %33
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @module_names, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @module_names, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %49, %50
  br label %52

52:                                               ; preds = %43, %35
  %53 = phi i1 [ false, %35 ], [ %51, %43 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %35

58:                                               ; preds = %52
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @module_names, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @module_names, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @request_module(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66, %58
  store %struct.quota_format_type* null, %struct.quota_format_type** %2, align 8
  br label %109

76:                                               ; preds = %66
  %77 = call i32 @spin_lock(i32* @dq_list_lock)
  %78 = load %struct.quota_format_type*, %struct.quota_format_type** @quota_formats, align 8
  store %struct.quota_format_type* %78, %struct.quota_format_type** %4, align 8
  br label %79

79:                                               ; preds = %91, %76
  %80 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %81 = icmp ne %struct.quota_format_type* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %84 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %85, %86
  br label %88

88:                                               ; preds = %82, %79
  %89 = phi i1 [ false, %79 ], [ %87, %82 ]
  br i1 %89, label %90, label %95

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %93 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %92, i32 0, i32 2
  %94 = load %struct.quota_format_type*, %struct.quota_format_type** %93, align 8
  store %struct.quota_format_type* %94, %struct.quota_format_type** %4, align 8
  br label %79

95:                                               ; preds = %88
  %96 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %97 = icmp ne %struct.quota_format_type* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  %100 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @try_module_get(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  store %struct.quota_format_type* null, %struct.quota_format_type** %4, align 8
  br label %105

105:                                              ; preds = %104, %98, %95
  br label %106

106:                                              ; preds = %105, %27
  %107 = call i32 @spin_unlock(i32* @dq_list_lock)
  %108 = load %struct.quota_format_type*, %struct.quota_format_type** %4, align 8
  store %struct.quota_format_type* %108, %struct.quota_format_type** %2, align 8
  br label %109

109:                                              ; preds = %106, %75
  %110 = load %struct.quota_format_type*, %struct.quota_format_type** %2, align 8
  ret %struct.quota_format_type* %110
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @request_module(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
