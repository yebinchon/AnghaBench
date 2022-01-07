; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_guess_boot_cpuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_guess_boot_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node* }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @guess_boot_cpuid(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.property*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %7 = load %struct.node*, %struct.node** %3, align 8
  %8 = call %struct.node* @get_node_by_path(%struct.node* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.node* %8, %struct.node** %4, align 8
  %9 = load %struct.node*, %struct.node** %4, align 8
  %10 = icmp ne %struct.node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.node*, %struct.node** %4, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %15 = load %struct.node*, %struct.node** %14, align 8
  store %struct.node* %15, %struct.node** %5, align 8
  %16 = load %struct.node*, %struct.node** %5, align 8
  %17 = icmp ne %struct.node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %35

19:                                               ; preds = %12
  %20 = load %struct.node*, %struct.node** %5, align 8
  %21 = call %struct.property* @get_property(%struct.node* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.property* %21, %struct.property** %6, align 8
  %22 = load %struct.property*, %struct.property** %6, align 8
  %23 = icmp ne %struct.property* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.property*, %struct.property** %6, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %19
  store i32 0, i32* %2, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.property*, %struct.property** %6, align 8
  %34 = call i32 @propval_cell(%struct.property* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %31, %18, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.node* @get_node_by_path(%struct.node*, i8*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @propval_cell(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
