; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_delete_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_delete_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, %struct.display* }

@display_chain = common dso_local global %struct.display* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"No display number %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @delete_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_display(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.display*, align 8
  %4 = alloca %struct.display*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.display*, %struct.display** @display_chain, align 8
  %6 = icmp ne %struct.display* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.display*, %struct.display** @display_chain, align 8
  %12 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.display*, %struct.display** @display_chain, align 8
  store %struct.display* %17, %struct.display** %3, align 8
  %18 = load %struct.display*, %struct.display** %3, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 1
  %20 = load %struct.display*, %struct.display** %19, align 8
  store %struct.display* %20, %struct.display** @display_chain, align 8
  %21 = load %struct.display*, %struct.display** %3, align 8
  %22 = call i32 @free_display(%struct.display* %21)
  br label %58

23:                                               ; preds = %10
  %24 = load %struct.display*, %struct.display** @display_chain, align 8
  store %struct.display* %24, %struct.display** %4, align 8
  br label %25

25:                                               ; preds = %53, %23
  %26 = load %struct.display*, %struct.display** %4, align 8
  %27 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 1
  %28 = load %struct.display*, %struct.display** %27, align 8
  %29 = icmp eq %struct.display* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.display*, %struct.display** %4, align 8
  %35 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 1
  %36 = load %struct.display*, %struct.display** %35, align 8
  %37 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load %struct.display*, %struct.display** %4, align 8
  %43 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 1
  %44 = load %struct.display*, %struct.display** %43, align 8
  store %struct.display* %44, %struct.display** %3, align 8
  %45 = load %struct.display*, %struct.display** %3, align 8
  %46 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 1
  %47 = load %struct.display*, %struct.display** %46, align 8
  %48 = load %struct.display*, %struct.display** %4, align 8
  %49 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 1
  store %struct.display* %47, %struct.display** %49, align 8
  %50 = load %struct.display*, %struct.display** %3, align 8
  %51 = call i32 @free_display(%struct.display* %50)
  br label %57

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.display*, %struct.display** %4, align 8
  %55 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 1
  %56 = load %struct.display*, %struct.display** %55, align 8
  store %struct.display* %56, %struct.display** %4, align 8
  br label %25

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %16
  ret void
}

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @free_display(%struct.display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
