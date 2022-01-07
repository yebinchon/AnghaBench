; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, %struct.mem_region* }

@mem_region_chain = common dso_local global %struct.mem_region* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"No memory region number %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mem_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_delete(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_region*, align 8
  %4 = alloca %struct.mem_region*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  %6 = icmp ne %struct.mem_region* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  %12 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  store %struct.mem_region* %17, %struct.mem_region** %3, align 8
  %18 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %19 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %18, i32 0, i32 1
  %20 = load %struct.mem_region*, %struct.mem_region** %19, align 8
  store %struct.mem_region* %20, %struct.mem_region** @mem_region_chain, align 8
  %21 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %22 = call i32 @delete_mem_region(%struct.mem_region* %21)
  br label %55

23:                                               ; preds = %10
  %24 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  store %struct.mem_region* %24, %struct.mem_region** %4, align 8
  br label %25

25:                                               ; preds = %50, %23
  %26 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %27 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %26, i32 0, i32 1
  %28 = load %struct.mem_region*, %struct.mem_region** %27, align 8
  %29 = icmp ne %struct.mem_region* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %32 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %31, i32 0, i32 1
  %33 = load %struct.mem_region*, %struct.mem_region** %32, align 8
  %34 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %40 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %39, i32 0, i32 1
  %41 = load %struct.mem_region*, %struct.mem_region** %40, align 8
  store %struct.mem_region* %41, %struct.mem_region** %3, align 8
  %42 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %43 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %42, i32 0, i32 1
  %44 = load %struct.mem_region*, %struct.mem_region** %43, align 8
  %45 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %46 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %45, i32 0, i32 1
  store %struct.mem_region* %44, %struct.mem_region** %46, align 8
  %47 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %48 = call i32 @delete_mem_region(%struct.mem_region* %47)
  br label %54

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %52 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %51, i32 0, i32 1
  %53 = load %struct.mem_region*, %struct.mem_region** %52, align 8
  store %struct.mem_region* %53, %struct.mem_region** %4, align 8
  br label %25

54:                                               ; preds = %38, %25
  br label %55

55:                                               ; preds = %7, %54, %16
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @delete_mem_region(%struct.mem_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
