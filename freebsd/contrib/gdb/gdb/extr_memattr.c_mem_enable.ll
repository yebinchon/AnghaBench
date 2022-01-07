; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, i32, %struct.mem_region* }

@mem_region_chain = common dso_local global %struct.mem_region* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"No memory region number %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mem_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_region*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  store %struct.mem_region* %4, %struct.mem_region** %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %7 = icmp ne %struct.mem_region* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %10 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %16 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  br label %25

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %20 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %19, i32 0, i32 2
  %21 = load %struct.mem_region*, %struct.mem_region** %20, align 8
  store %struct.mem_region* %21, %struct.mem_region** %3, align 8
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
