; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap_xip.c_xip_file_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap_xip.c_xip_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32, i32* }

@xip_file_vm_ops = common dso_local global i32 0, align 4
@VM_CAN_NONLINEAR = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xip_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = call i32 @file_accessed(%struct.file* %16)
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  store i32* @xip_file_vm_ops, i32** %19, align 8
  %20 = load i32, i32* @VM_CAN_NONLINEAR, align 4
  %21 = load i32, i32* @VM_MIXEDMAP, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
