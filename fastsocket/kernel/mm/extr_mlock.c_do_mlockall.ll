; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_do_mlockall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_do_mlockall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, i32, %struct.vm_area_struct* }

@MCL_FUTURE = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@MCL_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_mlockall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mlockall(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MCL_FUTURE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @VM_LOCKED, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MCL_FUTURE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %62

23:                                               ; preds = %13
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %27, align 8
  store %struct.vm_area_struct* %28, %struct.vm_area_struct** %3, align 8
  br label %29

29:                                               ; preds = %57, %23
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %31 = icmp ne %struct.vm_area_struct* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VM_LOCKED, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @MCL_CURRENT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @VM_LOCKED, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %32
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @mlock_fixup(%struct.vm_area_struct* %48, %struct.vm_area_struct** %4, i32 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %47
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 3
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %59, align 8
  store %struct.vm_area_struct* %60, %struct.vm_area_struct** %3, align 8
  br label %29

61:                                               ; preds = %29
  br label %62

62:                                               ; preds = %61, %22
  ret i32 0
}

declare dso_local i32 @mlock_fixup(%struct.vm_area_struct*, %struct.vm_area_struct**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
