; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_strfilter.c_strfilter_node__alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_strfilter.c_strfilter_node__alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strfilter_node = type { i8*, %struct.strfilter_node*, %struct.strfilter_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strfilter_node* (i8*, %struct.strfilter_node*, %struct.strfilter_node*)* @strfilter_node__alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strfilter_node* @strfilter_node__alloc(i8* %0, %struct.strfilter_node* %1, %struct.strfilter_node* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strfilter_node*, align 8
  %6 = alloca %struct.strfilter_node*, align 8
  %7 = alloca %struct.strfilter_node*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.strfilter_node* %1, %struct.strfilter_node** %5, align 8
  store %struct.strfilter_node* %2, %struct.strfilter_node** %6, align 8
  %8 = call %struct.strfilter_node* @zalloc(i32 24)
  store %struct.strfilter_node* %8, %struct.strfilter_node** %7, align 8
  %9 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %10 = icmp ne %struct.strfilter_node* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %14 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.strfilter_node*, %struct.strfilter_node** %5, align 8
  %16 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %17 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %16, i32 0, i32 2
  store %struct.strfilter_node* %15, %struct.strfilter_node** %17, align 8
  %18 = load %struct.strfilter_node*, %struct.strfilter_node** %6, align 8
  %19 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  %20 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %19, i32 0, i32 1
  store %struct.strfilter_node* %18, %struct.strfilter_node** %20, align 8
  br label %21

21:                                               ; preds = %11, %3
  %22 = load %struct.strfilter_node*, %struct.strfilter_node** %7, align 8
  ret %struct.strfilter_node* %22
}

declare dso_local %struct.strfilter_node* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
