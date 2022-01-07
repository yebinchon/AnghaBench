; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_checks.c_check_node_name_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_checks.c_check_node_name_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.node = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Node %s has multiple '@' characters in name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.node*, %struct.node*)* @check_node_name_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_node_name_format(%struct.check* %0, %struct.node* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.node* %1, %struct.node** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = call i32 @get_unitname(%struct.node* %7)
  %9 = call i64 @strchr(i32 %8, i8 signext 64)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.check*, %struct.check** %4, align 8
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FAIL(%struct.check* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @get_unitname(%struct.node*) #1

declare dso_local i32 @FAIL(%struct.check*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
