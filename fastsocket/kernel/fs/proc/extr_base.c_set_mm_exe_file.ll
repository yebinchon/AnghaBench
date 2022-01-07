; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_set_mm_exe_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_set_mm_exe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64, %struct.file* }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_mm_exe_file(%struct.mm_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.file*, %struct.file** %4, align 8
  %6 = icmp ne %struct.file* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i32 @get_file(%struct.file* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 1
  %13 = load %struct.file*, %struct.file** %12, align 8
  %14 = icmp ne %struct.file* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 1
  %18 = load %struct.file*, %struct.file** %17, align 8
  %19 = call i32 @fput(%struct.file* %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 1
  store %struct.file* %21, %struct.file** %23, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
