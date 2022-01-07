; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_check_explicit_phandles.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_check_explicit_phandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { %struct.node* }
%struct.node = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"%s has mismatching 'phandle' and 'linux,phandle' properties\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s has duplicated phandle 0x%x (seen before at %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_explicit_phandles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_explicit_phandles(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %11 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %12 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %11, i32 0, i32 0
  %13 = load %struct.node*, %struct.node** %12, align 8
  store %struct.node* %13, %struct.node** %7, align 8
  %14 = load %struct.node*, %struct.node** %6, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.check*, %struct.check** %4, align 8
  %22 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %23 = load %struct.node*, %struct.node** %6, align 8
  %24 = call i64 @check_phandle_prop(%struct.check* %21, %struct.dt_info* %22, %struct.node* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %24, i64* %9, align 8
  %25 = load %struct.check*, %struct.check** %4, align 8
  %26 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %27 = load %struct.node*, %struct.node** %6, align 8
  %28 = call i64 @check_phandle_prop(%struct.check* %25, %struct.dt_info* %26, %struct.node* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %85

35:                                               ; preds = %31, %3
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.check*, %struct.check** %4, align 8
  %47 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %48 = load %struct.node*, %struct.node** %6, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.check*, %struct.dt_info*, i8*, i32, ...) @FAIL(%struct.check* %46, %struct.dt_info* %47, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %41, %38, %35
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %55, %52
  %61 = load %struct.node*, %struct.node** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call %struct.node* @get_node_by_phandle(%struct.node* %61, i64 %62)
  store %struct.node* %63, %struct.node** %8, align 8
  %64 = load %struct.node*, %struct.node** %8, align 8
  %65 = icmp ne %struct.node* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.node*, %struct.node** %8, align 8
  %68 = load %struct.node*, %struct.node** %6, align 8
  %69 = icmp ne %struct.node* %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.check*, %struct.check** %4, align 8
  %72 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %73 = load %struct.node*, %struct.node** %6, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.node*, %struct.node** %8, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.check*, %struct.dt_info*, i8*, i32, ...) @FAIL(%struct.check* %71, %struct.dt_info* %72, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %75, i64 %76, i32 %79)
  br label %85

81:                                               ; preds = %66, %60
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.node*, %struct.node** %6, align 8
  %84 = getelementptr inbounds %struct.node, %struct.node* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %70, %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @check_phandle_prop(%struct.check*, %struct.dt_info*, %struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, i8*, i32, ...) #1

declare dso_local %struct.node* @get_node_by_phandle(%struct.node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
