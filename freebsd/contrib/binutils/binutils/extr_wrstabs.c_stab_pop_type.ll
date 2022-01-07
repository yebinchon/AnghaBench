; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_pop_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_pop_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.stab_type_stack* }
%struct.stab_type_stack = type { i8*, %struct.stab_type_stack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.stab_write_handle*)* @stab_pop_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stab_pop_type(%struct.stab_write_handle* %0) #0 {
  %2 = alloca %struct.stab_write_handle*, align 8
  %3 = alloca %struct.stab_type_stack*, align 8
  %4 = alloca i8*, align 8
  store %struct.stab_write_handle* %0, %struct.stab_write_handle** %2, align 8
  %5 = load %struct.stab_write_handle*, %struct.stab_write_handle** %2, align 8
  %6 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %5, i32 0, i32 0
  %7 = load %struct.stab_type_stack*, %struct.stab_type_stack** %6, align 8
  store %struct.stab_type_stack* %7, %struct.stab_type_stack** %3, align 8
  %8 = load %struct.stab_type_stack*, %struct.stab_type_stack** %3, align 8
  %9 = icmp ne %struct.stab_type_stack* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.stab_type_stack*, %struct.stab_type_stack** %3, align 8
  %13 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %12, i32 0, i32 1
  %14 = load %struct.stab_type_stack*, %struct.stab_type_stack** %13, align 8
  %15 = load %struct.stab_write_handle*, %struct.stab_write_handle** %2, align 8
  %16 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %15, i32 0, i32 0
  store %struct.stab_type_stack* %14, %struct.stab_type_stack** %16, align 8
  %17 = load %struct.stab_type_stack*, %struct.stab_type_stack** %3, align 8
  %18 = getelementptr inbounds %struct.stab_type_stack, %struct.stab_type_stack* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %4, align 8
  %20 = load %struct.stab_type_stack*, %struct.stab_type_stack** %3, align 8
  %21 = call i32 @free(%struct.stab_type_stack* %20)
  %22 = load i8*, i8** %4, align 8
  ret i8* %22
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.stab_type_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
