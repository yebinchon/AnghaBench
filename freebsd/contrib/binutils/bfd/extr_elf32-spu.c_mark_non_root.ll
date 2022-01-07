; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_mark_non_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_mark_non_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_info = type { i8*, i8*, %struct.call_info* }
%struct.call_info = type { %struct.function_info*, %struct.call_info* }

@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.function_info*)* @mark_non_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_non_root(%struct.function_info* %0) #0 {
  %2 = alloca %struct.function_info*, align 8
  %3 = alloca %struct.call_info*, align 8
  store %struct.function_info* %0, %struct.function_info** %2, align 8
  %4 = load i8*, i8** @TRUE, align 8
  %5 = load %struct.function_info*, %struct.function_info** %2, align 8
  %6 = getelementptr inbounds %struct.function_info, %struct.function_info* %5, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = load %struct.function_info*, %struct.function_info** %2, align 8
  %8 = getelementptr inbounds %struct.function_info, %struct.function_info* %7, i32 0, i32 2
  %9 = load %struct.call_info*, %struct.call_info** %8, align 8
  store %struct.call_info* %9, %struct.call_info** %3, align 8
  br label %10

10:                                               ; preds = %30, %1
  %11 = load %struct.call_info*, %struct.call_info** %3, align 8
  %12 = icmp ne %struct.call_info* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i8*, i8** @TRUE, align 8
  %15 = load %struct.call_info*, %struct.call_info** %3, align 8
  %16 = getelementptr inbounds %struct.call_info, %struct.call_info* %15, i32 0, i32 0
  %17 = load %struct.function_info*, %struct.function_info** %16, align 8
  %18 = getelementptr inbounds %struct.function_info, %struct.function_info* %17, i32 0, i32 1
  store i8* %14, i8** %18, align 8
  %19 = load %struct.call_info*, %struct.call_info** %3, align 8
  %20 = getelementptr inbounds %struct.call_info, %struct.call_info* %19, i32 0, i32 0
  %21 = load %struct.function_info*, %struct.function_info** %20, align 8
  %22 = getelementptr inbounds %struct.function_info, %struct.function_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = load %struct.call_info*, %struct.call_info** %3, align 8
  %27 = getelementptr inbounds %struct.call_info, %struct.call_info* %26, i32 0, i32 0
  %28 = load %struct.function_info*, %struct.function_info** %27, align 8
  call void @mark_non_root(%struct.function_info* %28)
  br label %29

29:                                               ; preds = %25, %13
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.call_info*, %struct.call_info** %3, align 8
  %32 = getelementptr inbounds %struct.call_info, %struct.call_info* %31, i32 0, i32 1
  %33 = load %struct.call_info*, %struct.call_info** %32, align 8
  store %struct.call_info* %33, %struct.call_info** %3, align 8
  br label %10

34:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
