; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_member_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_member_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @lookup_member_type(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store %struct.type* %1, %struct.type** %4, align 8
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = call i32 @TYPE_OBJFILE(%struct.type* %6)
  %8 = call %struct.type* @alloc_type(i32 %7)
  store %struct.type* %8, %struct.type** %5, align 8
  %9 = load %struct.type*, %struct.type** %5, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i32 @smash_to_member_type(%struct.type* %9, %struct.type* %10, %struct.type* %11)
  %13 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %13
}

declare dso_local %struct.type* @alloc_type(i32) #1

declare dso_local i32 @TYPE_OBJFILE(%struct.type*) #1

declare dso_local i32 @smash_to_member_type(%struct.type*, %struct.type*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
