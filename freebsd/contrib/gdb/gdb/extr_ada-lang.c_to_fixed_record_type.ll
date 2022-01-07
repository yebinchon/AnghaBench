; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_to_fixed_record_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_to_fixed_record_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*, i8*, i32, %struct.value*)* @to_fixed_record_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @to_fixed_record_type(%struct.type* %0, i8* %1, i32 %2, %struct.value* %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.value*, align 8
  %10 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.value* %3, %struct.value** %9, align 8
  %11 = load %struct.type*, %struct.type** %6, align 8
  %12 = call %struct.type* @dynamic_template_type(%struct.type* %11)
  store %struct.type* %12, %struct.type** %10, align 8
  %13 = load %struct.type*, %struct.type** %10, align 8
  %14 = icmp ne %struct.type* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.type*, %struct.type** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.value*, %struct.value** %9, align 8
  %20 = call %struct.type* @template_to_fixed_record_type(%struct.type* %16, i8* %17, i32 %18, %struct.value* %19)
  store %struct.type* %20, %struct.type** %5, align 8
  br label %33

21:                                               ; preds = %4
  %22 = load %struct.type*, %struct.type** %6, align 8
  %23 = call i64 @contains_variant_part(%struct.type* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.type*, %struct.type** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.value*, %struct.value** %9, align 8
  %30 = call %struct.type* @to_record_with_fixed_variant_part(%struct.type* %26, i8* %27, i32 %28, %struct.value* %29)
  store %struct.type* %30, %struct.type** %5, align 8
  br label %33

31:                                               ; preds = %21
  %32 = load %struct.type*, %struct.type** %6, align 8
  store %struct.type* %32, %struct.type** %5, align 8
  br label %33

33:                                               ; preds = %31, %25, %15
  %34 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %34
}

declare dso_local %struct.type* @dynamic_template_type(%struct.type*) #1

declare dso_local %struct.type* @template_to_fixed_record_type(%struct.type*, i8*, i32, %struct.value*) #1

declare dso_local i64 @contains_variant_part(%struct.type*) #1

declare dso_local %struct.type* @to_record_with_fixed_variant_part(%struct.type*, i8*, i32, %struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
