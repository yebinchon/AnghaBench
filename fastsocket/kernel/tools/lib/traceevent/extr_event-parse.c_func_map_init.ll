; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_func_map_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_func_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, %struct.func_list*, %struct.func_map* }
%struct.func_list = type { %struct.func_list*, i32*, i64, i32* }
%struct.func_map = type { i32*, i64, i32* }

@func_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*)* @func_map_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_map_init(%struct.pevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pevent*, align 8
  %4 = alloca %struct.func_list*, align 8
  %5 = alloca %struct.func_list*, align 8
  %6 = alloca %struct.func_map*, align 8
  %7 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %3, align 8
  %8 = load %struct.pevent*, %struct.pevent** %3, align 8
  %9 = getelementptr inbounds %struct.pevent, %struct.pevent* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 24, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.func_map* @malloc(i32 %14)
  store %struct.func_map* %15, %struct.func_map** %6, align 8
  %16 = load %struct.func_map*, %struct.func_map** %6, align 8
  %17 = icmp ne %struct.func_map* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %92

19:                                               ; preds = %1
  %20 = load %struct.pevent*, %struct.pevent** %3, align 8
  %21 = getelementptr inbounds %struct.pevent, %struct.pevent* %20, i32 0, i32 1
  %22 = load %struct.func_list*, %struct.func_list** %21, align 8
  store %struct.func_list* %22, %struct.func_list** %4, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %26, %19
  %24 = load %struct.func_list*, %struct.func_list** %4, align 8
  %25 = icmp ne %struct.func_list* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load %struct.func_list*, %struct.func_list** %4, align 8
  %28 = getelementptr inbounds %struct.func_list, %struct.func_list* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.func_map*, %struct.func_map** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.func_map, %struct.func_map* %30, i64 %32
  %34 = getelementptr inbounds %struct.func_map, %struct.func_map* %33, i32 0, i32 2
  store i32* %29, i32** %34, align 8
  %35 = load %struct.func_list*, %struct.func_list** %4, align 8
  %36 = getelementptr inbounds %struct.func_list, %struct.func_list* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.func_map*, %struct.func_map** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.func_map, %struct.func_map* %38, i64 %40
  %42 = getelementptr inbounds %struct.func_map, %struct.func_map* %41, i32 0, i32 1
  store i64 %37, i64* %42, align 8
  %43 = load %struct.func_list*, %struct.func_list** %4, align 8
  %44 = getelementptr inbounds %struct.func_list, %struct.func_list* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.func_map*, %struct.func_map** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.func_map, %struct.func_map* %46, i64 %48
  %50 = getelementptr inbounds %struct.func_map, %struct.func_map* %49, i32 0, i32 0
  store i32* %45, i32** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load %struct.func_list*, %struct.func_list** %4, align 8
  store %struct.func_list* %53, %struct.func_list** %5, align 8
  %54 = load %struct.func_list*, %struct.func_list** %4, align 8
  %55 = getelementptr inbounds %struct.func_list, %struct.func_list* %54, i32 0, i32 0
  %56 = load %struct.func_list*, %struct.func_list** %55, align 8
  store %struct.func_list* %56, %struct.func_list** %4, align 8
  %57 = load %struct.func_list*, %struct.func_list** %5, align 8
  %58 = call i32 @free(%struct.func_list* %57)
  br label %23

59:                                               ; preds = %23
  %60 = load %struct.func_map*, %struct.func_map** %6, align 8
  %61 = load %struct.pevent*, %struct.pevent** %3, align 8
  %62 = getelementptr inbounds %struct.pevent, %struct.pevent* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @func_cmp, align 4
  %65 = call i32 @qsort(%struct.func_map* %60, i32 %63, i32 24, i32 %64)
  %66 = load %struct.func_map*, %struct.func_map** %6, align 8
  %67 = load %struct.pevent*, %struct.pevent** %3, align 8
  %68 = getelementptr inbounds %struct.pevent, %struct.pevent* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.func_map, %struct.func_map* %66, i64 %70
  %72 = getelementptr inbounds %struct.func_map, %struct.func_map* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load %struct.func_map*, %struct.func_map** %6, align 8
  %74 = load %struct.pevent*, %struct.pevent** %3, align 8
  %75 = getelementptr inbounds %struct.pevent, %struct.pevent* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.func_map, %struct.func_map* %73, i64 %77
  %79 = getelementptr inbounds %struct.func_map, %struct.func_map* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.func_map*, %struct.func_map** %6, align 8
  %81 = load %struct.pevent*, %struct.pevent** %3, align 8
  %82 = getelementptr inbounds %struct.pevent, %struct.pevent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.func_map, %struct.func_map* %80, i64 %84
  %86 = getelementptr inbounds %struct.func_map, %struct.func_map* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  %87 = load %struct.func_map*, %struct.func_map** %6, align 8
  %88 = load %struct.pevent*, %struct.pevent** %3, align 8
  %89 = getelementptr inbounds %struct.pevent, %struct.pevent* %88, i32 0, i32 2
  store %struct.func_map* %87, %struct.func_map** %89, align 8
  %90 = load %struct.pevent*, %struct.pevent** %3, align 8
  %91 = getelementptr inbounds %struct.pevent, %struct.pevent* %90, i32 0, i32 1
  store %struct.func_list* null, %struct.func_list** %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %59, %18
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.func_map* @malloc(i32) #1

declare dso_local i32 @free(%struct.func_list*) #1

declare dso_local i32 @qsort(%struct.func_map*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
