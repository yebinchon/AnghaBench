; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_desc_data_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_desc_data_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"P_ARRAY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*)* @desc_data_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @desc_data_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = call %struct.type* @desc_base_type(%struct.type* %4)
  store %struct.type* %5, %struct.type** %3, align 8
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = call i64 @is_thin_pntr(%struct.type* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i32 @thin_descriptor_type(%struct.type* %10)
  %12 = call %struct.type* @TYPE_FIELD_TYPE(i32 %11, i32 1)
  %13 = call %struct.type* @desc_base_type(%struct.type* %12)
  %14 = call %struct.type* @lookup_pointer_type(%struct.type* %13)
  store %struct.type* %14, %struct.type** %2, align 8
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.type*, %struct.type** %3, align 8
  %17 = call i64 @is_thick_pntr(%struct.type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.type*, %struct.type** %3, align 8
  %21 = call %struct.type* @lookup_struct_elt_type(%struct.type* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  store %struct.type* %21, %struct.type** %2, align 8
  br label %23

22:                                               ; preds = %15
  store %struct.type* null, %struct.type** %2, align 8
  br label %23

23:                                               ; preds = %22, %19, %9
  %24 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %24
}

declare dso_local %struct.type* @desc_base_type(%struct.type*) #1

declare dso_local i64 @is_thin_pntr(%struct.type*) #1

declare dso_local %struct.type* @lookup_pointer_type(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(i32, i32) #1

declare dso_local i32 @thin_descriptor_type(%struct.type*) #1

declare dso_local i64 @is_thick_pntr(%struct.type*) #1

declare dso_local %struct.type* @lookup_struct_elt_type(%struct.type*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
