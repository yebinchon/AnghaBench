; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_push_parse_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_push_parse_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_stack = type { %struct.parse_stack*, %struct.parse_stack* }

@top_stack = common dso_local global %struct.parse_stack* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @push_parse_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_parse_stack() #0 {
  %1 = alloca %struct.parse_stack*, align 8
  %2 = alloca %struct.parse_stack*, align 8
  %3 = load %struct.parse_stack*, %struct.parse_stack** @top_stack, align 8
  %4 = icmp ne %struct.parse_stack* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load %struct.parse_stack*, %struct.parse_stack** @top_stack, align 8
  %7 = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %6, i32 0, i32 1
  %8 = load %struct.parse_stack*, %struct.parse_stack** %7, align 8
  %9 = icmp ne %struct.parse_stack* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.parse_stack*, %struct.parse_stack** @top_stack, align 8
  %12 = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %11, i32 0, i32 1
  %13 = load %struct.parse_stack*, %struct.parse_stack** %12, align 8
  store %struct.parse_stack* %13, %struct.parse_stack** %1, align 8
  br label %17

14:                                               ; preds = %5, %0
  %15 = call i64 @xzalloc(i32 16)
  %16 = inttoptr i64 %15 to %struct.parse_stack*
  store %struct.parse_stack* %16, %struct.parse_stack** %1, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = load %struct.parse_stack*, %struct.parse_stack** @top_stack, align 8
  %19 = icmp ne %struct.parse_stack* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.parse_stack*, %struct.parse_stack** %1, align 8
  %22 = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %21, i32 0, i32 1
  %23 = load %struct.parse_stack*, %struct.parse_stack** %22, align 8
  store %struct.parse_stack* %23, %struct.parse_stack** %2, align 8
  %24 = load %struct.parse_stack*, %struct.parse_stack** %1, align 8
  %25 = load %struct.parse_stack*, %struct.parse_stack** @top_stack, align 8
  %26 = bitcast %struct.parse_stack* %24 to i8*
  %27 = bitcast %struct.parse_stack* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.parse_stack*, %struct.parse_stack** %1, align 8
  %29 = load %struct.parse_stack*, %struct.parse_stack** @top_stack, align 8
  %30 = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %29, i32 0, i32 1
  store %struct.parse_stack* %28, %struct.parse_stack** %30, align 8
  %31 = load %struct.parse_stack*, %struct.parse_stack** %2, align 8
  %32 = load %struct.parse_stack*, %struct.parse_stack** %1, align 8
  %33 = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %32, i32 0, i32 1
  store %struct.parse_stack* %31, %struct.parse_stack** %33, align 8
  %34 = load %struct.parse_stack*, %struct.parse_stack** @top_stack, align 8
  %35 = load %struct.parse_stack*, %struct.parse_stack** %1, align 8
  %36 = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %35, i32 0, i32 0
  store %struct.parse_stack* %34, %struct.parse_stack** %36, align 8
  br label %37

37:                                               ; preds = %20, %17
  %38 = load %struct.parse_stack*, %struct.parse_stack** %1, align 8
  store %struct.parse_stack* %38, %struct.parse_stack** @top_stack, align 8
  ret void
}

declare dso_local i64 @xzalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
