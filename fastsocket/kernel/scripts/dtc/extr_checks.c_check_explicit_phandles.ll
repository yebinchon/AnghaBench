; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_checks.c_check_explicit_phandles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_checks.c_check_explicit_phandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.node = type { i32, i32 }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s has bad length (%d) linux,phandle property\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s has invalid linux,phandle value 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s has duplicated phandle 0x%x (seen before at %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.node*, %struct.node*)* @check_explicit_phandles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_explicit_phandles(%struct.check* %0, %struct.node* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.node* %1, %struct.node** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %10 = load %struct.node*, %struct.node** %6, align 8
  %11 = call %struct.property* @get_property(%struct.node* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %11, %struct.property** %7, align 8
  %12 = load %struct.property*, %struct.property** %7, align 8
  %13 = icmp ne %struct.property* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %67

15:                                               ; preds = %3
  %16 = load %struct.property*, %struct.property** %7, align 8
  %17 = getelementptr inbounds %struct.property, %struct.property* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.check*, %struct.check** %4, align 8
  %24 = load %struct.node*, %struct.node** %6, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.property*, %struct.property** %7, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.check*, i8*, i32, i32, ...) @FAIL(%struct.check* %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %30)
  br label %67

32:                                               ; preds = %15
  %33 = load %struct.property*, %struct.property** %7, align 8
  %34 = call i32 @propval_cell(%struct.property* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %47

40:                                               ; preds = %37, %32
  %41 = load %struct.check*, %struct.check** %4, align 8
  %42 = load %struct.node*, %struct.node** %6, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (%struct.check*, i8*, i32, i32, ...) @FAIL(%struct.check* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  br label %67

47:                                               ; preds = %37
  %48 = load %struct.node*, %struct.node** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.node* @get_node_by_phandle(%struct.node* %48, i32 %49)
  store %struct.node* %50, %struct.node** %8, align 8
  %51 = load %struct.node*, %struct.node** %8, align 8
  %52 = icmp ne %struct.node* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.check*, %struct.check** %4, align 8
  %55 = load %struct.node*, %struct.node** %6, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.node*, %struct.node** %8, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.check*, i8*, i32, i32, ...) @FAIL(%struct.check* %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58, i32 %61)
  br label %67

63:                                               ; preds = %47
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.node*, %struct.node** %6, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %53, %40, %22, %14
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, i8*, i32, i32, ...) #1

declare dso_local i32 @propval_cell(%struct.property*) #1

declare dso_local %struct.node* @get_node_by_phandle(%struct.node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
