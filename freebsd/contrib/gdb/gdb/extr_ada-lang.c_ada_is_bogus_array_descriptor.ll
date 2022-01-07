; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_bogus_array_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_bogus_array_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"P_BOUNDS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"P_ARRAY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_bogus_array_descriptor(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  %3 = load %struct.type*, %struct.type** %2, align 8
  %4 = icmp ne %struct.type* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load %struct.type*, %struct.type** %2, align 8
  %7 = call i64 @TYPE_CODE(%struct.type* %6)
  %8 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = load %struct.type*, %struct.type** %2, align 8
  %12 = call i32* @lookup_struct_elt_type(%struct.type* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.type*, %struct.type** %2, align 8
  %16 = call i32* @lookup_struct_elt_type(%struct.type* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %10
  %19 = load %struct.type*, %struct.type** %2, align 8
  %20 = call i32 @ada_is_array_descriptor(%struct.type* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %14, %5, %1
  %24 = phi i1 [ false, %14 ], [ false, %5 ], [ false, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32* @lookup_struct_elt_type(%struct.type*, i8*, i32) #1

declare dso_local i32 @ada_is_array_descriptor(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
