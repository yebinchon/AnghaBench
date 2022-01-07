; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pop_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pop_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { %struct.pr_stack* }
%struct.pr_stack = type { i8*, %struct.pr_stack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pr_handle*)* @pop_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pop_type(%struct.pr_handle* %0) #0 {
  %2 = alloca %struct.pr_handle*, align 8
  %3 = alloca %struct.pr_stack*, align 8
  %4 = alloca i8*, align 8
  store %struct.pr_handle* %0, %struct.pr_handle** %2, align 8
  %5 = load %struct.pr_handle*, %struct.pr_handle** %2, align 8
  %6 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %5, i32 0, i32 0
  %7 = load %struct.pr_stack*, %struct.pr_stack** %6, align 8
  %8 = icmp ne %struct.pr_stack* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.pr_handle*, %struct.pr_handle** %2, align 8
  %12 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %11, i32 0, i32 0
  %13 = load %struct.pr_stack*, %struct.pr_stack** %12, align 8
  store %struct.pr_stack* %13, %struct.pr_stack** %3, align 8
  %14 = load %struct.pr_stack*, %struct.pr_stack** %3, align 8
  %15 = getelementptr inbounds %struct.pr_stack, %struct.pr_stack* %14, i32 0, i32 1
  %16 = load %struct.pr_stack*, %struct.pr_stack** %15, align 8
  %17 = load %struct.pr_handle*, %struct.pr_handle** %2, align 8
  %18 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %17, i32 0, i32 0
  store %struct.pr_stack* %16, %struct.pr_stack** %18, align 8
  %19 = load %struct.pr_stack*, %struct.pr_stack** %3, align 8
  %20 = getelementptr inbounds %struct.pr_stack, %struct.pr_stack* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %4, align 8
  %22 = load %struct.pr_stack*, %struct.pr_stack** %3, align 8
  %23 = call i32 @free(%struct.pr_stack* %22)
  %24 = load i8*, i8** %4, align 8
  ret i8* %24
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.pr_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
