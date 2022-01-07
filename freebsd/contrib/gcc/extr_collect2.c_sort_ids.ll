; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_sort_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_sort_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.head = type { %struct.id* }
%struct.id = type { i64, %struct.id*, i32 }

@sequence_number = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.head*)* @sort_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_ids(%struct.head* %0) #0 {
  %2 = alloca %struct.head*, align 8
  %3 = alloca %struct.id*, align 8
  %4 = alloca %struct.id*, align 8
  %5 = alloca %struct.id**, align 8
  store %struct.head* %0, %struct.head** %2, align 8
  %6 = load %struct.head*, %struct.head** %2, align 8
  %7 = getelementptr inbounds %struct.head, %struct.head* %6, i32 0, i32 0
  %8 = load %struct.id*, %struct.id** %7, align 8
  store %struct.id* %8, %struct.id** %3, align 8
  %9 = load %struct.head*, %struct.head** %2, align 8
  %10 = getelementptr inbounds %struct.head, %struct.head* %9, i32 0, i32 0
  store %struct.id* null, %struct.id** %10, align 8
  br label %11

11:                                               ; preds = %52, %1
  %12 = load %struct.id*, %struct.id** %3, align 8
  %13 = icmp ne %struct.id* %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load %struct.id*, %struct.id** %3, align 8
  %16 = getelementptr inbounds %struct.id, %struct.id* %15, i32 0, i32 1
  %17 = load %struct.id*, %struct.id** %16, align 8
  store %struct.id* %17, %struct.id** %4, align 8
  %18 = load %struct.id*, %struct.id** %3, align 8
  %19 = getelementptr inbounds %struct.id, %struct.id* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @extract_init_priority(i32 %20)
  %22 = load %struct.id*, %struct.id** %3, align 8
  %23 = getelementptr inbounds %struct.id, %struct.id* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.head*, %struct.head** %2, align 8
  %25 = getelementptr inbounds %struct.head, %struct.head* %24, i32 0, i32 0
  store %struct.id** %25, %struct.id*** %5, align 8
  br label %26

26:                                               ; preds = %47, %14
  %27 = load %struct.id**, %struct.id*** %5, align 8
  %28 = load %struct.id*, %struct.id** %27, align 8
  %29 = icmp eq %struct.id* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load %struct.id*, %struct.id** %3, align 8
  %32 = getelementptr inbounds %struct.id, %struct.id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.id**, %struct.id*** %5, align 8
  %35 = load %struct.id*, %struct.id** %34, align 8
  %36 = getelementptr inbounds %struct.id, %struct.id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30, %26
  %40 = load %struct.id**, %struct.id*** %5, align 8
  %41 = load %struct.id*, %struct.id** %40, align 8
  %42 = load %struct.id*, %struct.id** %3, align 8
  %43 = getelementptr inbounds %struct.id, %struct.id* %42, i32 0, i32 1
  store %struct.id* %41, %struct.id** %43, align 8
  %44 = load %struct.id*, %struct.id** %3, align 8
  %45 = load %struct.id**, %struct.id*** %5, align 8
  store %struct.id* %44, %struct.id** %45, align 8
  br label %51

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.id**, %struct.id*** %5, align 8
  %49 = load %struct.id*, %struct.id** %48, align 8
  %50 = getelementptr inbounds %struct.id, %struct.id* %49, i32 0, i32 1
  store %struct.id** %50, %struct.id*** %5, align 8
  br label %26

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.id*, %struct.id** %4, align 8
  store %struct.id* %53, %struct.id** %3, align 8
  br label %11

54:                                               ; preds = %11
  %55 = load %struct.head*, %struct.head** %2, align 8
  %56 = getelementptr inbounds %struct.head, %struct.head* %55, i32 0, i32 0
  %57 = load %struct.id*, %struct.id** %56, align 8
  store %struct.id* %57, %struct.id** %3, align 8
  br label %58

58:                                               ; preds = %66, %54
  %59 = load %struct.id*, %struct.id** %3, align 8
  %60 = icmp ne %struct.id* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i64, i64* @sequence_number, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @sequence_number, align 8
  %64 = load %struct.id*, %struct.id** %3, align 8
  %65 = getelementptr inbounds %struct.id, %struct.id* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load %struct.id*, %struct.id** %3, align 8
  %68 = getelementptr inbounds %struct.id, %struct.id* %67, i32 0, i32 1
  %69 = load %struct.id*, %struct.id** %68, align 8
  store %struct.id* %69, %struct.id** %3, align 8
  br label %58

70:                                               ; preds = %58
  ret void
}

declare dso_local i64 @extract_init_priority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
