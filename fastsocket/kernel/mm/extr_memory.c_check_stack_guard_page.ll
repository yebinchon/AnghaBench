; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_check_stack_guard_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_check_stack_guard_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct* }

@PAGE_MASK = common dso_local global i64 0, align 8
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_GROWSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64)* @check_stack_guard_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stack_guard_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @PAGE_MASK, align 8
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VM_GROWSDOWN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 4
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %25, align 8
  store %struct.vm_area_struct* %26, %struct.vm_area_struct** %6, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = icmp ne %struct.vm_area_struct* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VM_GROWSDOWN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  store i32 %47, i32* %3, align 4
  br label %103

48:                                               ; preds = %29, %23
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = sub i64 %50, %51
  %53 = call i32 @expand_stack(%struct.vm_area_struct* %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %17, %2
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VM_GROWSUP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %54
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = add i64 %62, %63
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %61
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 3
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %71, align 8
  store %struct.vm_area_struct* %72, %struct.vm_area_struct** %7, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %74 = icmp ne %struct.vm_area_struct* %73, null
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = add i64 %79, %80
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @VM_GROWSUP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  br label %94

94:                                               ; preds = %91, %90
  %95 = phi i32 [ 0, %90 ], [ %93, %91 ]
  store i32 %95, i32* %3, align 4
  br label %103

96:                                               ; preds = %75, %69
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = add i64 %98, %99
  %101 = call i32 @expand_upwards(%struct.vm_area_struct* %97, i64 %100)
  br label %102

102:                                              ; preds = %96, %61, %54
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %94, %46
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @expand_upwards(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
