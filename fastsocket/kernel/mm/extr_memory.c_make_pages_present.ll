; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_make_pages_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_make_pages_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32, i64 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_pages_present(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call %struct.vm_area_struct* @find_vma(i32 %12, i64 %13)
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %9, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %16 = icmp ne %struct.vm_area_struct* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VM_WRITE, align 4
  %25 = load i32, i32* @VM_SHARED, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @VM_WRITE, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp uge i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = call i64 @DIV_ROUND_UP(i64 %43, i64 %44)
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @PAGE_SIZE, align 8
  %48 = udiv i64 %46, %47
  %49 = sub i64 %45, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @get_user_pages(%struct.TYPE_3__* %51, i32 %54, i64 %55, i32 %56, i32 %57, i32 0, i32* null, i32* null)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %20
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %73

63:                                               ; preds = %20
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  br label %71

71:                                               ; preds = %68, %67
  %72 = phi i32 [ 0, %67 ], [ %70, %68 ]
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %61, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_3__*, i32, i64, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
