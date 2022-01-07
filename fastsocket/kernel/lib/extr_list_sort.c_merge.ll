; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_list_sort.c_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_list_sort.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (i8*, i32 (i8*, %struct.list_head*, %struct.list_head*)*, %struct.list_head*, %struct.list_head*)* @merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @merge(i8* %0, i32 (i8*, %struct.list_head*, %struct.list_head*)* %1, %struct.list_head* %2, %struct.list_head* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, %struct.list_head*, %struct.list_head*)*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head, align 8
  %10 = alloca %struct.list_head*, align 8
  store i8* %0, i8** %5, align 8
  store i32 (i8*, %struct.list_head*, %struct.list_head*)* %1, i32 (i8*, %struct.list_head*, %struct.list_head*)** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  store %struct.list_head* %9, %struct.list_head** %10, align 8
  br label %11

11:                                               ; preds = %40, %4
  %12 = load %struct.list_head*, %struct.list_head** %7, align 8
  %13 = icmp ne %struct.list_head* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.list_head*, %struct.list_head** %8, align 8
  %16 = icmp ne %struct.list_head* %15, null
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load i32 (i8*, %struct.list_head*, %struct.list_head*)*, i32 (i8*, %struct.list_head*, %struct.list_head*)** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.list_head*, %struct.list_head** %7, align 8
  %23 = load %struct.list_head*, %struct.list_head** %8, align 8
  %24 = call i32 %20(i8* %21, %struct.list_head* %22, %struct.list_head* %23)
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.list_head*, %struct.list_head** %7, align 8
  %28 = load %struct.list_head*, %struct.list_head** %10, align 8
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i32 0, i32 0
  store %struct.list_head* %27, %struct.list_head** %29, align 8
  %30 = load %struct.list_head*, %struct.list_head** %7, align 8
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i32 0, i32 0
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8
  store %struct.list_head* %32, %struct.list_head** %7, align 8
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.list_head*, %struct.list_head** %8, align 8
  %35 = load %struct.list_head*, %struct.list_head** %10, align 8
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i32 0, i32 0
  store %struct.list_head* %34, %struct.list_head** %36, align 8
  %37 = load %struct.list_head*, %struct.list_head** %8, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i32 0, i32 0
  %39 = load %struct.list_head*, %struct.list_head** %38, align 8
  store %struct.list_head* %39, %struct.list_head** %8, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.list_head*, %struct.list_head** %10, align 8
  %42 = getelementptr inbounds %struct.list_head, %struct.list_head* %41, i32 0, i32 0
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8
  store %struct.list_head* %43, %struct.list_head** %10, align 8
  br label %11

44:                                               ; preds = %17
  %45 = load %struct.list_head*, %struct.list_head** %7, align 8
  %46 = icmp ne %struct.list_head* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %50

48:                                               ; preds = %44
  %49 = load %struct.list_head*, %struct.list_head** %8, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi %struct.list_head* [ %45, %47 ], [ %49, %48 ]
  %52 = load %struct.list_head*, %struct.list_head** %10, align 8
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i32 0, i32 0
  store %struct.list_head* %51, %struct.list_head** %53, align 8
  %54 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0
  %55 = load %struct.list_head*, %struct.list_head** %54, align 8
  ret %struct.list_head* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
