; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_check_unit_address_vs_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_check_unit_address_vs_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32 }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Node %s has a reg or ranges property, but no unit name\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Node %s has a unit name, but no reg property\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_unit_address_vs_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_unit_address_vs_reg(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = call i8* @get_unitname(%struct.node* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.node*, %struct.node** %6, align 8
  %12 = call %struct.property* @get_property(%struct.node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %12, %struct.property** %8, align 8
  %13 = load %struct.property*, %struct.property** %8, align 8
  %14 = icmp ne %struct.property* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = load %struct.node*, %struct.node** %6, align 8
  %17 = call %struct.property* @get_property(%struct.node* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.property* %17, %struct.property** %8, align 8
  %18 = load %struct.property*, %struct.property** %8, align 8
  %19 = icmp ne %struct.property* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.property*, %struct.property** %8, align 8
  %22 = getelementptr inbounds %struct.property, %struct.property* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store %struct.property* null, %struct.property** %8, align 8
  br label %27

27:                                               ; preds = %26, %20, %15
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.property*, %struct.property** %8, align 8
  %30 = icmp ne %struct.property* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.check*, %struct.check** %4, align 8
  %38 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %39 = load %struct.node*, %struct.node** %6, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FAIL(%struct.check* %37, %struct.dt_info* %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  br label %57

44:                                               ; preds = %28
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.check*, %struct.check** %4, align 8
  %51 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %52 = load %struct.node*, %struct.node** %6, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FAIL(%struct.check* %50, %struct.dt_info* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %44
  br label %57

57:                                               ; preds = %56, %43
  ret void
}

declare dso_local i8* @get_unitname(%struct.node*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
