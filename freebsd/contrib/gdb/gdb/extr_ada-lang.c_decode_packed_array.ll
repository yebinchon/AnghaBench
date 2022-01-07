; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_decode_packed_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_decode_packed_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"can't unpack array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.value*)* @decode_packed_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @decode_packed_array(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  %5 = load %struct.value*, %struct.value** %3, align 8
  %6 = call i32 @VALUE_TYPE(%struct.value* %5)
  %7 = call %struct.type* @decode_packed_array_type(i32 %6)
  store %struct.type* %7, %struct.type** %4, align 8
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = icmp eq %struct.type* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.value* null, %struct.value** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.value*, %struct.value** %3, align 8
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = call %struct.value* @coerce_unspec_val_to_type(%struct.value* %13, i32 0, %struct.type* %14)
  store %struct.value* %15, %struct.value** %2, align 8
  br label %16

16:                                               ; preds = %12, %10
  %17 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %17
}

declare dso_local %struct.type* @decode_packed_array_type(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.value* @coerce_unspec_val_to_type(%struct.value*, i32, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
