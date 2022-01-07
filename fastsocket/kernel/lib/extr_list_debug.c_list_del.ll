; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_list_debug.c_list_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_list_debug.c_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.list_head* }
%struct.list_head = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.list_head* }

@.str = private unnamed_addr constant [58 x i8] c"list_del corruption. prev->next should be %p, but was %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"list_del corruption. next->prev should be %p, but was %p\0A\00", align 1
@LIST_POISON1 = common dso_local global %struct.TYPE_6__* null, align 8
@LIST_POISON2 = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_del(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  %3 = load %struct.list_head*, %struct.list_head** %2, align 8
  %4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8
  %8 = load %struct.list_head*, %struct.list_head** %2, align 8
  %9 = icmp ne %struct.list_head* %7, %8
  %10 = zext i1 %9 to i32
  %11 = load %struct.list_head*, %struct.list_head** %2, align 8
  %12 = load %struct.list_head*, %struct.list_head** %2, align 8
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8
  %17 = call i32 @WARN(i32 %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.list_head* %11, %struct.list_head* %16)
  %18 = load %struct.list_head*, %struct.list_head** %2, align 8
  %19 = getelementptr inbounds %struct.list_head, %struct.list_head* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.list_head*, %struct.list_head** %21, align 8
  %23 = load %struct.list_head*, %struct.list_head** %2, align 8
  %24 = icmp ne %struct.list_head* %22, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.list_head*, %struct.list_head** %2, align 8
  %27 = load %struct.list_head*, %struct.list_head** %2, align 8
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  %32 = call i32 @WARN(i32 %25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), %struct.list_head* %26, %struct.list_head* %31)
  %33 = load %struct.list_head*, %struct.list_head** %2, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.list_head*, %struct.list_head** %2, align 8
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @__list_del(%struct.TYPE_5__* %35, %struct.TYPE_6__* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LIST_POISON1, align 8
  %41 = load %struct.list_head*, %struct.list_head** %2, align 8
  %42 = getelementptr inbounds %struct.list_head, %struct.list_head* %41, i32 0, i32 1
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LIST_POISON2, align 8
  %44 = load %struct.list_head*, %struct.list_head** %2, align 8
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i32 0, i32 0
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %45, align 8
  ret void
}

declare dso_local i32 @WARN(i32, i8*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @__list_del(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
