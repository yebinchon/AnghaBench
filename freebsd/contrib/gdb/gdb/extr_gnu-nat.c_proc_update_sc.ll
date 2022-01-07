; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_update_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_update_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"sc: %d --> %d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"storing back changed thread state\00", align 1
@THREAD_STATE_FLAVOR = common dso_local global i32 0, align 4
@THREAD_STATE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"is %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"err = %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_update_sc(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.proc*, %struct.proc** %2, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.proc*, %struct.proc** %2, align 8
  %17 = load %struct.proc*, %struct.proc** %2, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.proc*, %struct.proc** %2, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.proc*, %struct.proc** %2, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.proc*, %struct.proc** %2, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load %struct.proc*, %struct.proc** %2, align 8
  %36 = call i32 @proc_is_thread(%struct.proc* %35)
  %37 = call i32 @gdb_assert(i32 %36)
  %38 = load %struct.proc*, %struct.proc** %2, align 8
  %39 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.proc*, %struct.proc** %2, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @THREAD_STATE_FLAVOR, align 4
  %44 = load %struct.proc*, %struct.proc** %2, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 7
  %46 = ptrtoint i32* %45 to i32
  %47 = load i32, i32* @THREAD_STATE_SIZE, align 4
  %48 = call i32 @thread_set_state(i32 %42, i32 %43, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load %struct.proc*, %struct.proc** %2, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %34
  br label %55

55:                                               ; preds = %54, %29, %24
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %83, %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %84

69:                                               ; preds = %67
  %70 = load %struct.proc*, %struct.proc** %2, align 8
  %71 = call i64 @proc_is_task(%struct.proc* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.proc*, %struct.proc** %2, align 8
  %75 = getelementptr inbounds %struct.proc, %struct.proc* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @task_suspend(i32 %76)
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %69
  %79 = load %struct.proc*, %struct.proc** %2, align 8
  %80 = getelementptr inbounds %struct.proc, %struct.proc* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @thread_suspend(i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %59

84:                                               ; preds = %67
  br label %112

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %110, %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = icmp slt i32 %87, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i1 [ false, %86 ], [ %93, %90 ]
  br i1 %95, label %96, label %111

96:                                               ; preds = %94
  %97 = load %struct.proc*, %struct.proc** %2, align 8
  %98 = call i64 @proc_is_task(%struct.proc* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.proc*, %struct.proc** %2, align 8
  %102 = getelementptr inbounds %struct.proc, %struct.proc* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @task_resume(i32 %103)
  store i32 %104, i32* %4, align 4
  br label %110

105:                                              ; preds = %96
  %106 = load %struct.proc*, %struct.proc** %2, align 8
  %107 = getelementptr inbounds %struct.proc, %struct.proc* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @thread_resume(i32 %108)
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %100
  br label %86

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %84
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load %struct.proc*, %struct.proc** %2, align 8
  %117 = getelementptr inbounds %struct.proc, %struct.proc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.proc*, %struct.proc** %2, align 8
  %120 = getelementptr inbounds %struct.proc, %struct.proc* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %112
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load %struct.proc*, %struct.proc** %2, align 8
  %126 = getelementptr inbounds %struct.proc, %struct.proc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br label %129

129:                                              ; preds = %124, %121
  %130 = phi i1 [ false, %121 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %3, align 4
  %132 = load %struct.proc*, %struct.proc** %2, align 8
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %141

136:                                              ; preds = %129
  %137 = load i32, i32* %3, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  br label %141

141:                                              ; preds = %136, %135
  %142 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %135 ], [ %140, %136 ]
  %143 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %142)
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.proc*, %struct.proc** %2, align 8
  %148 = load i32, i32* %4, align 4
  %149 = call i8* @safe_strerror(i32 %148)
  %150 = call i32 (%struct.proc*, i8*, ...) @proc_debug(%struct.proc* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %146, %141
  %152 = load i32, i32* %3, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load %struct.proc*, %struct.proc** %2, align 8
  %156 = getelementptr inbounds %struct.proc, %struct.proc* %155, i32 0, i32 5
  store i64 0, i64* %156, align 8
  %157 = load %struct.proc*, %struct.proc** %2, align 8
  %158 = getelementptr inbounds %struct.proc, %struct.proc* %157, i32 0, i32 3
  store i64 0, i64* %158, align 8
  %159 = load %struct.proc*, %struct.proc** %2, align 8
  %160 = getelementptr inbounds %struct.proc, %struct.proc* %159, i32 0, i32 4
  store i64 0, i64* %160, align 8
  %161 = load %struct.proc*, %struct.proc** %2, align 8
  %162 = getelementptr inbounds %struct.proc, %struct.proc* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %154, %151
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @proc_debug(%struct.proc*, i8*, ...) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @proc_is_thread(%struct.proc*) #1

declare dso_local i32 @thread_set_state(i32, i32, i32, i32) #1

declare dso_local i64 @proc_is_task(%struct.proc*) #1

declare dso_local i32 @task_suspend(i32) #1

declare dso_local i32 @thread_suspend(i32) #1

declare dso_local i32 @task_resume(i32) #1

declare dso_local i32 @thread_resume(i32) #1

declare dso_local i8* @safe_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
