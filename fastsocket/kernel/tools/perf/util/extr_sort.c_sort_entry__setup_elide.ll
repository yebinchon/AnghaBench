; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c_sort_entry__setup_elide.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c_sort_entry__setup_elide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_entry = type { i32 }
%struct.strlist = type { i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"# %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_entry__setup_elide(%struct.sort_entry* %0, %struct.strlist* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.sort_entry*, align 8
  %6 = alloca %struct.strlist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.sort_entry* %0, %struct.sort_entry** %5, align 8
  store %struct.strlist* %1, %struct.strlist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.strlist*, %struct.strlist** %6, align 8
  %10 = icmp ne %struct.strlist* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = load %struct.strlist*, %struct.strlist** %6, align 8
  %13 = call i32 @strlist__nr_entries(%struct.strlist* %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.strlist*, %struct.strlist** %6, align 8
  %22 = call %struct.TYPE_2__* @strlist__entry(%struct.strlist* %21, i32 0)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %24)
  br label %26

26:                                               ; preds = %18, %15
  %27 = load %struct.sort_entry*, %struct.sort_entry** %5, align 8
  %28 = getelementptr inbounds %struct.sort_entry, %struct.sort_entry* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %11, %4
  ret void
}

declare dso_local i32 @strlist__nr_entries(%struct.strlist*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @strlist__entry(%struct.strlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
