; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_checks.c_run_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_checks.c_run_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32, i64, i32, i64, {}*, i64, i64, i32, %struct.check** }
%struct.node = type { i32 }

@UNCHECKED = common dso_local global i64 0, align 8
@PASSED = common dso_local global i64 0, align 8
@PREREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed prerequisite '%s'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\09Completed, status %d\00", align 1
@ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.check*, %struct.node*)* @run_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_check(%struct.check* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.check*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.check*, align 8
  store %struct.check* %0, %struct.check** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.check*, %struct.check** %3, align 8
  %9 = getelementptr inbounds %struct.check, %struct.check* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.check*, %struct.check** %3, align 8
  %16 = getelementptr inbounds %struct.check, %struct.check* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UNCHECKED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %119

21:                                               ; preds = %2
  %22 = load %struct.check*, %struct.check** %3, align 8
  %23 = getelementptr inbounds %struct.check, %struct.check* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %64, %21
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.check*, %struct.check** %3, align 8
  %27 = getelementptr inbounds %struct.check, %struct.check* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %24
  %31 = load %struct.check*, %struct.check** %3, align 8
  %32 = getelementptr inbounds %struct.check, %struct.check* %31, i32 0, i32 8
  %33 = load %struct.check**, %struct.check*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.check*, %struct.check** %33, i64 %35
  %37 = load %struct.check*, %struct.check** %36, align 8
  store %struct.check* %37, %struct.check** %7, align 8
  %38 = load %struct.check*, %struct.check** %7, align 8
  %39 = load %struct.node*, %struct.node** %4, align 8
  %40 = call i32 @run_check(%struct.check* %38, %struct.node* %39)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.check*, %struct.check** %7, align 8
  %44 = getelementptr inbounds %struct.check, %struct.check* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PASSED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %30
  %49 = load i64, i64* @PREREQ, align 8
  %50 = load %struct.check*, %struct.check** %3, align 8
  %51 = getelementptr inbounds %struct.check, %struct.check* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.check*, %struct.check** %3, align 8
  %53 = load %struct.check*, %struct.check** %3, align 8
  %54 = getelementptr inbounds %struct.check, %struct.check* %53, i32 0, i32 8
  %55 = load %struct.check**, %struct.check*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.check*, %struct.check** %55, i64 %57
  %59 = load %struct.check*, %struct.check** %58, align 8
  %60 = getelementptr inbounds %struct.check, %struct.check* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @check_msg(%struct.check* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %48, %30
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %24

67:                                               ; preds = %24
  %68 = load %struct.check*, %struct.check** %3, align 8
  %69 = getelementptr inbounds %struct.check, %struct.check* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UNCHECKED, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %119

74:                                               ; preds = %67
  %75 = load %struct.check*, %struct.check** %3, align 8
  %76 = getelementptr inbounds %struct.check, %struct.check* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.check*, %struct.check** %3, align 8
  %81 = getelementptr inbounds %struct.check, %struct.check* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79, %74
  %85 = load %struct.check*, %struct.check** %3, align 8
  %86 = load %struct.node*, %struct.node** %4, align 8
  %87 = load %struct.node*, %struct.node** %4, align 8
  %88 = call i32 @check_nodes_props(%struct.check* %85, %struct.node* %86, %struct.node* %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.check*, %struct.check** %3, align 8
  %91 = getelementptr inbounds %struct.check, %struct.check* %90, i32 0, i32 4
  %92 = bitcast {}** %91 to i32 (%struct.check*, %struct.node*)**
  %93 = load i32 (%struct.check*, %struct.node*)*, i32 (%struct.check*, %struct.node*)** %92, align 8
  %94 = icmp ne i32 (%struct.check*, %struct.node*)* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.check*, %struct.check** %3, align 8
  %97 = getelementptr inbounds %struct.check, %struct.check* %96, i32 0, i32 4
  %98 = bitcast {}** %97 to i32 (%struct.check*, %struct.node*)**
  %99 = load i32 (%struct.check*, %struct.node*)*, i32 (%struct.check*, %struct.node*)** %98, align 8
  %100 = load %struct.check*, %struct.check** %3, align 8
  %101 = load %struct.node*, %struct.node** %4, align 8
  %102 = call i32 %99(%struct.check* %100, %struct.node* %101)
  br label %103

103:                                              ; preds = %95, %89
  %104 = load %struct.check*, %struct.check** %3, align 8
  %105 = getelementptr inbounds %struct.check, %struct.check* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @UNCHECKED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i64, i64* @PASSED, align 8
  %111 = load %struct.check*, %struct.check** %3, align 8
  %112 = getelementptr inbounds %struct.check, %struct.check* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %103
  %114 = load %struct.check*, %struct.check** %3, align 8
  %115 = load %struct.check*, %struct.check** %3, align 8
  %116 = getelementptr inbounds %struct.check, %struct.check* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @TRACE(%struct.check* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %117)
  br label %119

119:                                              ; preds = %113, %73, %20
  %120 = load %struct.check*, %struct.check** %3, align 8
  %121 = getelementptr inbounds %struct.check, %struct.check* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = load %struct.check*, %struct.check** %3, align 8
  %123 = getelementptr inbounds %struct.check, %struct.check* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PASSED, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.check*, %struct.check** %3, align 8
  %129 = getelementptr inbounds %struct.check, %struct.check* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ERROR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %127, %119
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_msg(%struct.check*, i8*, i32) #1

declare dso_local i32 @check_nodes_props(%struct.check*, %struct.node*, %struct.node*) #1

declare dso_local i32 @TRACE(%struct.check*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
