; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_run_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_run_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32, i64, i32, i64, i32, %struct.check** }
%struct.dt_info = type { %struct.node* }
%struct.node = type { i32 }

@UNCHECKED = common dso_local global i64 0, align 8
@PASSED = common dso_local global i64 0, align 8
@PREREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed prerequisite '%s'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\09Completed, status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.check*, %struct.dt_info*)* @run_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_check(%struct.check* %0, %struct.dt_info* %1) #0 {
  %3 = alloca %struct.check*, align 8
  %4 = alloca %struct.dt_info*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.check*, align 8
  store %struct.check* %0, %struct.check** %3, align 8
  store %struct.dt_info* %1, %struct.dt_info** %4, align 8
  %9 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %10 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %9, i32 0, i32 0
  %11 = load %struct.node*, %struct.node** %10, align 8
  store %struct.node* %11, %struct.node** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.check*, %struct.check** %3, align 8
  %13 = getelementptr inbounds %struct.check, %struct.check* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.check*, %struct.check** %3, align 8
  %20 = getelementptr inbounds %struct.check, %struct.check* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UNCHECKED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %104

25:                                               ; preds = %2
  %26 = load %struct.check*, %struct.check** %3, align 8
  %27 = getelementptr inbounds %struct.check, %struct.check* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %74, %25
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.check*, %struct.check** %3, align 8
  %31 = getelementptr inbounds %struct.check, %struct.check* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %28
  %35 = load %struct.check*, %struct.check** %3, align 8
  %36 = getelementptr inbounds %struct.check, %struct.check* %35, i32 0, i32 5
  %37 = load %struct.check**, %struct.check*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.check*, %struct.check** %37, i64 %39
  %41 = load %struct.check*, %struct.check** %40, align 8
  store %struct.check* %41, %struct.check** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load %struct.check*, %struct.check** %8, align 8
  %46 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %47 = call i32 @run_check(%struct.check* %45, %struct.dt_info* %46)
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %34
  %50 = phi i1 [ true, %34 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load %struct.check*, %struct.check** %8, align 8
  %53 = getelementptr inbounds %struct.check, %struct.check* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PASSED, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %49
  %58 = load i64, i64* @PREREQ, align 8
  %59 = load %struct.check*, %struct.check** %3, align 8
  %60 = getelementptr inbounds %struct.check, %struct.check* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.check*, %struct.check** %3, align 8
  %62 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %63 = load %struct.check*, %struct.check** %3, align 8
  %64 = getelementptr inbounds %struct.check, %struct.check* %63, i32 0, i32 5
  %65 = load %struct.check**, %struct.check*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.check*, %struct.check** %65, i64 %67
  %69 = load %struct.check*, %struct.check** %68, align 8
  %70 = getelementptr inbounds %struct.check, %struct.check* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @check_msg(%struct.check* %61, %struct.dt_info* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %57, %49
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %28

77:                                               ; preds = %28
  %78 = load %struct.check*, %struct.check** %3, align 8
  %79 = getelementptr inbounds %struct.check, %struct.check* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UNCHECKED, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %104

84:                                               ; preds = %77
  %85 = load %struct.check*, %struct.check** %3, align 8
  %86 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %87 = load %struct.node*, %struct.node** %5, align 8
  %88 = call i32 @check_nodes_props(%struct.check* %85, %struct.dt_info* %86, %struct.node* %87)
  %89 = load %struct.check*, %struct.check** %3, align 8
  %90 = getelementptr inbounds %struct.check, %struct.check* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UNCHECKED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load i64, i64* @PASSED, align 8
  %96 = load %struct.check*, %struct.check** %3, align 8
  %97 = getelementptr inbounds %struct.check, %struct.check* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %84
  %99 = load %struct.check*, %struct.check** %3, align 8
  %100 = load %struct.check*, %struct.check** %3, align 8
  %101 = getelementptr inbounds %struct.check, %struct.check* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @TRACE(%struct.check* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %98, %83, %24
  %105 = load %struct.check*, %struct.check** %3, align 8
  %106 = getelementptr inbounds %struct.check, %struct.check* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load %struct.check*, %struct.check** %3, align 8
  %108 = getelementptr inbounds %struct.check, %struct.check* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PASSED, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load %struct.check*, %struct.check** %3, align 8
  %114 = getelementptr inbounds %struct.check, %struct.check* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 1, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %112, %104
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_msg(%struct.check*, %struct.dt_info*, i8*, i32) #1

declare dso_local i32 @check_nodes_props(%struct.check*, %struct.dt_info*, %struct.node*) #1

declare dso_local i32 @TRACE(%struct.check*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
