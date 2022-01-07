; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_check_obsolete_chosen_interrupt_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_checks.c_check_obsolete_chosen_interrupt_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { %struct.node* }
%struct.node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"/chosen has obsolete \22interrupt-controller\22 property\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_obsolete_chosen_interrupt_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_obsolete_chosen_interrupt_controller(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %10 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %11 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %10, i32 0, i32 0
  %12 = load %struct.node*, %struct.node** %11, align 8
  store %struct.node* %12, %struct.node** %7, align 8
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = load %struct.node*, %struct.node** %7, align 8
  %15 = icmp ne %struct.node* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %32

17:                                               ; preds = %3
  %18 = load %struct.node*, %struct.node** %7, align 8
  %19 = call %struct.node* @get_node_by_path(%struct.node* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.node* %19, %struct.node** %8, align 8
  %20 = load %struct.node*, %struct.node** %8, align 8
  %21 = icmp ne %struct.node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %32

23:                                               ; preds = %17
  %24 = load %struct.node*, %struct.node** %8, align 8
  %25 = call %struct.property* @get_property(%struct.node* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.property* %25, %struct.property** %9, align 8
  %26 = load %struct.property*, %struct.property** %9, align 8
  %27 = icmp ne %struct.property* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.check*, %struct.check** %4, align 8
  %30 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %31 = call i32 @FAIL(%struct.check* %29, %struct.dt_info* %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %16, %22, %28, %23
  ret void
}

declare dso_local %struct.node* @get_node_by_path(%struct.node*, i8*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
