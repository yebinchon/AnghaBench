; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_ctx_fdget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_ctx_fdget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventfd_ctx = type { i32 }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %0) #0 {
  %2 = alloca %struct.eventfd_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.eventfd_ctx*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.file* @eventfd_fget(i32 %6)
  store %struct.file* %7, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i64 @IS_ERR(%struct.file* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = bitcast %struct.file* %12 to %struct.eventfd_ctx*
  store %struct.eventfd_ctx* %13, %struct.eventfd_ctx** %2, align 8
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.eventfd_ctx* @eventfd_ctx_get(i32 %17)
  store %struct.eventfd_ctx* %18, %struct.eventfd_ctx** %5, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call i32 @fput(%struct.file* %19)
  %21 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  store %struct.eventfd_ctx* %21, %struct.eventfd_ctx** %2, align 8
  br label %22

22:                                               ; preds = %14, %11
  %23 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %2, align 8
  ret %struct.eventfd_ctx* %23
}

declare dso_local %struct.file* @eventfd_fget(i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_get(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
