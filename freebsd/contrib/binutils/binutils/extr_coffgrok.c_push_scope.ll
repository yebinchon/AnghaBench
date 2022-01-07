; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_push_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_push_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_scope = type { %struct.coff_scope*, %struct.coff_scope*, %struct.coff_scope*, %struct.coff_scope* }

@top_scope = common dso_local global %struct.coff_scope* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @push_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_scope(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coff_scope*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.coff_scope* (...) @empty_scope()
  store %struct.coff_scope* %4, %struct.coff_scope** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.coff_scope*, %struct.coff_scope** @top_scope, align 8
  %9 = icmp ne %struct.coff_scope* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load %struct.coff_scope*, %struct.coff_scope** @top_scope, align 8
  %12 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %11, i32 0, i32 1
  %13 = load %struct.coff_scope*, %struct.coff_scope** %12, align 8
  %14 = icmp ne %struct.coff_scope* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.coff_scope*, %struct.coff_scope** %3, align 8
  %17 = load %struct.coff_scope*, %struct.coff_scope** @top_scope, align 8
  %18 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %17, i32 0, i32 1
  %19 = load %struct.coff_scope*, %struct.coff_scope** %18, align 8
  %20 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %19, i32 0, i32 3
  store %struct.coff_scope* %16, %struct.coff_scope** %20, align 8
  br label %25

21:                                               ; preds = %10
  %22 = load %struct.coff_scope*, %struct.coff_scope** %3, align 8
  %23 = load %struct.coff_scope*, %struct.coff_scope** @top_scope, align 8
  %24 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %23, i32 0, i32 2
  store %struct.coff_scope* %22, %struct.coff_scope** %24, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.coff_scope*, %struct.coff_scope** %3, align 8
  %27 = load %struct.coff_scope*, %struct.coff_scope** @top_scope, align 8
  %28 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %27, i32 0, i32 1
  store %struct.coff_scope* %26, %struct.coff_scope** %28, align 8
  br label %29

29:                                               ; preds = %25, %7
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.coff_scope*, %struct.coff_scope** @top_scope, align 8
  %32 = load %struct.coff_scope*, %struct.coff_scope** %3, align 8
  %33 = getelementptr inbounds %struct.coff_scope, %struct.coff_scope* %32, i32 0, i32 0
  store %struct.coff_scope* %31, %struct.coff_scope** %33, align 8
  %34 = load %struct.coff_scope*, %struct.coff_scope** %3, align 8
  store %struct.coff_scope* %34, %struct.coff_scope** @top_scope, align 8
  ret void
}

declare dso_local %struct.coff_scope* @empty_scope(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
