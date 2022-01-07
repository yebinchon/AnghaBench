; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_do_mlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_do_mlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i32, i64, %struct.vm_area_struct* }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @do_mlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mlock(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @PAGE_ALIGN(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %123

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %123

31:                                               ; preds = %26
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call %struct.vm_area_struct* @find_vma_prev(i32 %34, i64 %35, %struct.vm_area_struct** %12)
  store %struct.vm_area_struct* %36, %struct.vm_area_struct** %11, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %38 = icmp ne %struct.vm_area_struct* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %31
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %123

48:                                               ; preds = %39
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  store %struct.vm_area_struct* %55, %struct.vm_area_struct** %12, align 8
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %120, %56
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VM_LOCKED, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @VM_LOCKED, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %14, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %66, %58
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %78, %71
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @mlock_fixup(%struct.vm_area_struct* %81, %struct.vm_area_struct** %12, i64 %82, i64 %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %121

89:                                               ; preds = %80
  %90 = load i64, i64* %10, align 8
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %96, %89
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp uge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %121

105:                                              ; preds = %100
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %107 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %106, i32 0, i32 3
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %107, align 8
  store %struct.vm_area_struct* %108, %struct.vm_area_struct** %11, align 8
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %110 = icmp ne %struct.vm_area_struct* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %113 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %105
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %13, align 4
  br label %121

120:                                              ; preds = %111
  br label %58

121:                                              ; preds = %117, %104, %88
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %45, %30, %23
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma_prev(i32, i64, %struct.vm_area_struct**) #1

declare dso_local i32 @mlock_fixup(%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
