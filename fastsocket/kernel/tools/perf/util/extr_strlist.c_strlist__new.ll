; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_strlist.c_strlist__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_strlist.c_strlist__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@strlist__node_cmp = common dso_local global i32 0, align 4
@strlist__node_new = common dso_local global i32 0, align 4
@strlist__node_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.strlist* @strlist__new(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.strlist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strlist*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = call %struct.strlist* @malloc(i32 16)
  store %struct.strlist* %7, %struct.strlist** %6, align 8
  %8 = load %struct.strlist*, %struct.strlist** %6, align 8
  %9 = icmp ne %struct.strlist* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load %struct.strlist*, %struct.strlist** %6, align 8
  %12 = getelementptr inbounds %struct.strlist, %struct.strlist* %11, i32 0, i32 1
  %13 = call i32 @rblist__init(%struct.TYPE_2__* %12)
  %14 = load i32, i32* @strlist__node_cmp, align 4
  %15 = load %struct.strlist*, %struct.strlist** %6, align 8
  %16 = getelementptr inbounds %struct.strlist, %struct.strlist* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @strlist__node_new, align 4
  %19 = load %struct.strlist*, %struct.strlist** %6, align 8
  %20 = getelementptr inbounds %struct.strlist, %struct.strlist* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @strlist__node_delete, align 4
  %23 = load %struct.strlist*, %struct.strlist** %6, align 8
  %24 = getelementptr inbounds %struct.strlist, %struct.strlist* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.strlist*, %struct.strlist** %6, align 8
  %28 = getelementptr inbounds %struct.strlist, %struct.strlist* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %10
  %32 = load %struct.strlist*, %struct.strlist** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strlist__parse_list(%struct.strlist* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %40

37:                                               ; preds = %31, %10
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.strlist*, %struct.strlist** %6, align 8
  store %struct.strlist* %39, %struct.strlist** %3, align 8
  br label %43

40:                                               ; preds = %36
  %41 = load %struct.strlist*, %struct.strlist** %6, align 8
  %42 = call i32 @free(%struct.strlist* %41)
  store %struct.strlist* null, %struct.strlist** %3, align 8
  br label %43

43:                                               ; preds = %40, %38
  %44 = load %struct.strlist*, %struct.strlist** %3, align 8
  ret %struct.strlist* %44
}

declare dso_local %struct.strlist* @malloc(i32) #1

declare dso_local i32 @rblist__init(%struct.TYPE_2__*) #1

declare dso_local i64 @strlist__parse_list(%struct.strlist*, i8*) #1

declare dso_local i32 @free(%struct.strlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
