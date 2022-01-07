; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_list_sort.c_merge_and_restore_back_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_list_sort.c_merge_and_restore_back_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i8*, %struct.list_head*, %struct.list_head*)*, %struct.list_head*, %struct.list_head*, %struct.list_head*)* @merge_and_restore_back_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_and_restore_back_links(i8* %0, i32 (i8*, %struct.list_head*, %struct.list_head*)* %1, %struct.list_head* %2, %struct.list_head* %3, %struct.list_head* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, %struct.list_head*, %struct.list_head*)*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.list_head*, align 8
  store i8* %0, i8** %6, align 8
  store i32 (i8*, %struct.list_head*, %struct.list_head*)* %1, i32 (i8*, %struct.list_head*, %struct.list_head*)** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store %struct.list_head* %4, %struct.list_head** %10, align 8
  %12 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %12, %struct.list_head** %11, align 8
  br label %13

13:                                               ; preds = %48, %5
  %14 = load %struct.list_head*, %struct.list_head** %9, align 8
  %15 = icmp ne %struct.list_head* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.list_head*, %struct.list_head** %10, align 8
  %18 = icmp ne %struct.list_head* %17, null
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %52

21:                                               ; preds = %19
  %22 = load i32 (i8*, %struct.list_head*, %struct.list_head*)*, i32 (i8*, %struct.list_head*, %struct.list_head*)** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.list_head*, %struct.list_head** %9, align 8
  %25 = load %struct.list_head*, %struct.list_head** %10, align 8
  %26 = call i32 %22(i8* %23, %struct.list_head* %24, %struct.list_head* %25)
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.list_head*, %struct.list_head** %9, align 8
  %30 = load %struct.list_head*, %struct.list_head** %11, align 8
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i32 0, i32 1
  store %struct.list_head* %29, %struct.list_head** %31, align 8
  %32 = load %struct.list_head*, %struct.list_head** %11, align 8
  %33 = load %struct.list_head*, %struct.list_head** %9, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0
  store %struct.list_head* %32, %struct.list_head** %34, align 8
  %35 = load %struct.list_head*, %struct.list_head** %9, align 8
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i32 0, i32 1
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8
  store %struct.list_head* %37, %struct.list_head** %9, align 8
  br label %48

38:                                               ; preds = %21
  %39 = load %struct.list_head*, %struct.list_head** %10, align 8
  %40 = load %struct.list_head*, %struct.list_head** %11, align 8
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %40, i32 0, i32 1
  store %struct.list_head* %39, %struct.list_head** %41, align 8
  %42 = load %struct.list_head*, %struct.list_head** %11, align 8
  %43 = load %struct.list_head*, %struct.list_head** %10, align 8
  %44 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i32 0, i32 0
  store %struct.list_head* %42, %struct.list_head** %44, align 8
  %45 = load %struct.list_head*, %struct.list_head** %10, align 8
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i32 0, i32 1
  %47 = load %struct.list_head*, %struct.list_head** %46, align 8
  store %struct.list_head* %47, %struct.list_head** %10, align 8
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.list_head*, %struct.list_head** %11, align 8
  %50 = getelementptr inbounds %struct.list_head, %struct.list_head* %49, i32 0, i32 1
  %51 = load %struct.list_head*, %struct.list_head** %50, align 8
  store %struct.list_head* %51, %struct.list_head** %11, align 8
  br label %13

52:                                               ; preds = %19
  %53 = load %struct.list_head*, %struct.list_head** %9, align 8
  %54 = icmp ne %struct.list_head* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %58

56:                                               ; preds = %52
  %57 = load %struct.list_head*, %struct.list_head** %10, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi %struct.list_head* [ %53, %55 ], [ %57, %56 ]
  %60 = load %struct.list_head*, %struct.list_head** %11, align 8
  %61 = getelementptr inbounds %struct.list_head, %struct.list_head* %60, i32 0, i32 1
  store %struct.list_head* %59, %struct.list_head** %61, align 8
  br label %62

62:                                               ; preds = %76, %58
  %63 = load i32 (i8*, %struct.list_head*, %struct.list_head*)*, i32 (i8*, %struct.list_head*, %struct.list_head*)** %7, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.list_head*, %struct.list_head** %11, align 8
  %66 = load %struct.list_head*, %struct.list_head** %11, align 8
  %67 = call i32 %63(i8* %64, %struct.list_head* %65, %struct.list_head* %66)
  %68 = load %struct.list_head*, %struct.list_head** %11, align 8
  %69 = load %struct.list_head*, %struct.list_head** %11, align 8
  %70 = getelementptr inbounds %struct.list_head, %struct.list_head* %69, i32 0, i32 1
  %71 = load %struct.list_head*, %struct.list_head** %70, align 8
  %72 = getelementptr inbounds %struct.list_head, %struct.list_head* %71, i32 0, i32 0
  store %struct.list_head* %68, %struct.list_head** %72, align 8
  %73 = load %struct.list_head*, %struct.list_head** %11, align 8
  %74 = getelementptr inbounds %struct.list_head, %struct.list_head* %73, i32 0, i32 1
  %75 = load %struct.list_head*, %struct.list_head** %74, align 8
  store %struct.list_head* %75, %struct.list_head** %11, align 8
  br label %76

76:                                               ; preds = %62
  %77 = load %struct.list_head*, %struct.list_head** %11, align 8
  %78 = getelementptr inbounds %struct.list_head, %struct.list_head* %77, i32 0, i32 1
  %79 = load %struct.list_head*, %struct.list_head** %78, align 8
  %80 = icmp ne %struct.list_head* %79, null
  br i1 %80, label %62, label %81

81:                                               ; preds = %76
  %82 = load %struct.list_head*, %struct.list_head** %8, align 8
  %83 = load %struct.list_head*, %struct.list_head** %11, align 8
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i32 0, i32 1
  store %struct.list_head* %82, %struct.list_head** %84, align 8
  %85 = load %struct.list_head*, %struct.list_head** %11, align 8
  %86 = load %struct.list_head*, %struct.list_head** %8, align 8
  %87 = getelementptr inbounds %struct.list_head, %struct.list_head* %86, i32 0, i32 0
  store %struct.list_head* %85, %struct.list_head** %87, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
