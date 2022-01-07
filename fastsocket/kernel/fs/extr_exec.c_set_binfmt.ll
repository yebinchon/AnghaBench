; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_set_binfmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_set_binfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.linux_binfmt* }
%struct.linux_binfmt = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_binfmt(%struct.linux_binfmt* %0) #0 {
  %2 = alloca %struct.linux_binfmt*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.linux_binfmt* %0, %struct.linux_binfmt** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %6, %struct.mm_struct** %3, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = load %struct.linux_binfmt*, %struct.linux_binfmt** %8, align 8
  %10 = icmp ne %struct.linux_binfmt* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = load %struct.linux_binfmt*, %struct.linux_binfmt** %13, align 8
  %15 = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @module_put(i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.linux_binfmt*, %struct.linux_binfmt** %2, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  store %struct.linux_binfmt* %19, %struct.linux_binfmt** %21, align 8
  %22 = load %struct.linux_binfmt*, %struct.linux_binfmt** %2, align 8
  %23 = icmp ne %struct.linux_binfmt* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.linux_binfmt*, %struct.linux_binfmt** %2, align 8
  %26 = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__module_get(i32 %27)
  br label %29

29:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
