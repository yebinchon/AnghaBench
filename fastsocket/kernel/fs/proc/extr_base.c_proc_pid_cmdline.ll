; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_cmdline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*)* @proc_pid_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pid_cmdline(%struct.task_struct* %0, i8* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %8)
  store %struct.mm_struct* %9, %struct.mm_struct** %7, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %11 = icmp ne %struct.mm_struct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %104

13:                                               ; preds = %2
  %14 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %101

19:                                               ; preds = %13
  %20 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %19
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @access_process_vm(%struct.task_struct* %33, i32 %36, i8* %37, i32 %38, i32 0)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %100

42:                                               ; preds = %32
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i8* @strnlen(i8* %56, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %5, align 4
  br label %99

65:                                               ; preds = %55
  %66 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %67 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %70 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 %68, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub i32 %74, %75
  %77 = icmp ugt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub i32 %79, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %65
  %83 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %84 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %85 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @access_process_vm(%struct.task_struct* %83, i32 %86, i8* %90, i32 %91, i32 0)
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i8* @strnlen(i8* %95, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %82, %63
  br label %100

100:                                              ; preds = %99, %51, %42, %32
  br label %101

101:                                              ; preds = %100, %18
  %102 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %103 = call i32 @mmput(%struct.mm_struct* %102)
  br label %104

104:                                              ; preds = %101, %12
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @access_process_vm(%struct.task_struct*, i32, i8*, i32, i32) #1

declare dso_local i8* @strnlen(i8*, i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
