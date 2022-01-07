; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_free_debug_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_free_debug_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32 }

@max = common dso_local global i32 0, align 4
@debug_information = common dso_local global %struct.TYPE_3__* null, align 8
@num_debug_info_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_debug_memory() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @free_abbrevs()
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %10, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @max, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @free_debug_section(i32 %8)
  br label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %3

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @debug_information, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %67

16:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %61, %16
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @num_debug_info_entries, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @debug_information, align 8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @debug_information, align 8
  %31 = load i32, i32* %1, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @free(%struct.TYPE_3__* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @debug_information, align 8
  %38 = load i32, i32* %1, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @free(%struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %29, %21
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @debug_information, align 8
  %46 = load i32, i32* %1, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @debug_information, align 8
  %54 = load i32, i32* %1, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @free(%struct.TYPE_3__* %58)
  br label %60

60:                                               ; preds = %52, %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %1, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %17

64:                                               ; preds = %17
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @debug_information, align 8
  %66 = call i32 @free(%struct.TYPE_3__* %65)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @debug_information, align 8
  store i32 0, i32* @num_debug_info_entries, align 4
  br label %67

67:                                               ; preds = %64, %13
  ret void
}

declare dso_local i32 @free_abbrevs(...) #1

declare dso_local i32 @free_debug_section(i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
