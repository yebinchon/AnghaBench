; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_list_debug.c___list_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_list_debug.c___list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@.str = private unnamed_addr constant [77 x i8] c"list_add corruption. next->prev should be prev (%p), but was %p. (next=%p).\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"list_add corruption. prev->next should be next (%p), but was %p. (prev=%p).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8
  %8 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 1
  %9 = load %struct.list_head*, %struct.list_head** %8, align 8
  %10 = load %struct.list_head*, %struct.list_head** %5, align 8
  %11 = icmp ne %struct.list_head* %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.list_head*, %struct.list_head** %5, align 8
  %14 = load %struct.list_head*, %struct.list_head** %6, align 8
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i32 0, i32 1
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8
  %17 = load %struct.list_head*, %struct.list_head** %6, align 8
  %18 = call i32 @WARN(i32 %12, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), %struct.list_head* %13, %struct.list_head* %16, %struct.list_head* %17)
  %19 = load %struct.list_head*, %struct.list_head** %5, align 8
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i32 0, i32 0
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8
  %22 = load %struct.list_head*, %struct.list_head** %6, align 8
  %23 = icmp ne %struct.list_head* %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.list_head*, %struct.list_head** %6, align 8
  %26 = load %struct.list_head*, %struct.list_head** %5, align 8
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  %29 = load %struct.list_head*, %struct.list_head** %5, align 8
  %30 = call i32 @WARN(i32 %24, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), %struct.list_head* %25, %struct.list_head* %28, %struct.list_head* %29)
  %31 = load %struct.list_head*, %struct.list_head** %4, align 8
  %32 = load %struct.list_head*, %struct.list_head** %6, align 8
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i32 0, i32 1
  store %struct.list_head* %31, %struct.list_head** %33, align 8
  %34 = load %struct.list_head*, %struct.list_head** %6, align 8
  %35 = load %struct.list_head*, %struct.list_head** %4, align 8
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i32 0, i32 0
  store %struct.list_head* %34, %struct.list_head** %36, align 8
  %37 = load %struct.list_head*, %struct.list_head** %5, align 8
  %38 = load %struct.list_head*, %struct.list_head** %4, align 8
  %39 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i32 0, i32 1
  store %struct.list_head* %37, %struct.list_head** %39, align 8
  %40 = load %struct.list_head*, %struct.list_head** %4, align 8
  %41 = load %struct.list_head*, %struct.list_head** %5, align 8
  %42 = getelementptr inbounds %struct.list_head, %struct.list_head* %41, i32 0, i32 0
  store %struct.list_head* %40, %struct.list_head** %42, align 8
  ret void
}

declare dso_local i32 @WARN(i32, i8*, %struct.list_head*, %struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
