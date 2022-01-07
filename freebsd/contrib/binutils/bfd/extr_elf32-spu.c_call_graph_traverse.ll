; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_call_graph_traverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_call_graph_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_info = type { i8*, i8*, %struct.call_info* }
%struct.call_info = type { %struct.call_info*, %struct.function_info* }
%struct.bfd_link_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i8*)* }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"Stack analysis will ignore the call from %s to %s\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.function_info*, %struct.bfd_link_info*)* @call_graph_traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_graph_traverse(%struct.function_info* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.function_info*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.call_info**, align 8
  %6 = alloca %struct.call_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.function_info* %0, %struct.function_info** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %9 = load i8*, i8** @TRUE, align 8
  %10 = load %struct.function_info*, %struct.function_info** %3, align 8
  %11 = getelementptr inbounds %struct.function_info, %struct.function_info* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @TRUE, align 8
  %13 = load %struct.function_info*, %struct.function_info** %3, align 8
  %14 = getelementptr inbounds %struct.function_info, %struct.function_info* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.function_info*, %struct.function_info** %3, align 8
  %16 = getelementptr inbounds %struct.function_info, %struct.function_info* %15, i32 0, i32 2
  store %struct.call_info** %16, %struct.call_info*** %5, align 8
  br label %17

17:                                               ; preds = %61, %40, %2
  %18 = load %struct.call_info**, %struct.call_info*** %5, align 8
  %19 = load %struct.call_info*, %struct.call_info** %18, align 8
  store %struct.call_info* %19, %struct.call_info** %6, align 8
  %20 = icmp ne %struct.call_info* %19, null
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  %22 = load %struct.call_info*, %struct.call_info** %6, align 8
  %23 = getelementptr inbounds %struct.call_info, %struct.call_info* %22, i32 0, i32 1
  %24 = load %struct.function_info*, %struct.function_info** %23, align 8
  %25 = getelementptr inbounds %struct.function_info, %struct.function_info* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.call_info*, %struct.call_info** %6, align 8
  %30 = getelementptr inbounds %struct.call_info, %struct.call_info* %29, i32 0, i32 1
  %31 = load %struct.function_info*, %struct.function_info** %30, align 8
  %32 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  call void @call_graph_traverse(%struct.function_info* %31, %struct.bfd_link_info* %32)
  br label %61

33:                                               ; preds = %21
  %34 = load %struct.call_info*, %struct.call_info** %6, align 8
  %35 = getelementptr inbounds %struct.call_info, %struct.call_info* %34, i32 0, i32 1
  %36 = load %struct.function_info*, %struct.function_info** %35, align 8
  %37 = getelementptr inbounds %struct.function_info, %struct.function_info* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.function_info*, %struct.function_info** %3, align 8
  %42 = call i8* @func_name(%struct.function_info* %41)
  store i8* %42, i8** %7, align 8
  %43 = load %struct.call_info*, %struct.call_info** %6, align 8
  %44 = getelementptr inbounds %struct.call_info, %struct.call_info* %43, i32 0, i32 1
  %45 = load %struct.function_info*, %struct.function_info** %44, align 8
  %46 = call i8* @func_name(%struct.function_info* %45)
  store i8* %46, i8** %8, align 8
  %47 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %48 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %50, align 8
  %52 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 %51(i32 %52, i8* %53, i8* %54)
  %56 = load %struct.call_info*, %struct.call_info** %6, align 8
  %57 = getelementptr inbounds %struct.call_info, %struct.call_info* %56, i32 0, i32 0
  %58 = load %struct.call_info*, %struct.call_info** %57, align 8
  %59 = load %struct.call_info**, %struct.call_info*** %5, align 8
  store %struct.call_info* %58, %struct.call_info** %59, align 8
  br label %17

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60, %28
  %62 = load %struct.call_info*, %struct.call_info** %6, align 8
  %63 = getelementptr inbounds %struct.call_info, %struct.call_info* %62, i32 0, i32 0
  store %struct.call_info** %63, %struct.call_info*** %5, align 8
  br label %17

64:                                               ; preds = %17
  %65 = load i8*, i8** @FALSE, align 8
  %66 = load %struct.function_info*, %struct.function_info** %3, align 8
  %67 = getelementptr inbounds %struct.function_info, %struct.function_info* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  ret void
}

declare dso_local i8* @func_name(%struct.function_info*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
