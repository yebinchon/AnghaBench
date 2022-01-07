; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_printk_map_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_printk_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, %struct.printk_list*, %struct.printk_map* }
%struct.printk_list = type { %struct.printk_list*, i32, i32 }
%struct.printk_map = type { i32, i32 }

@printk_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*)* @printk_map_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printk_map_init(%struct.pevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pevent*, align 8
  %4 = alloca %struct.printk_list*, align 8
  %5 = alloca %struct.printk_list*, align 8
  %6 = alloca %struct.printk_map*, align 8
  %7 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %3, align 8
  %8 = load %struct.pevent*, %struct.pevent** %3, align 8
  %9 = getelementptr inbounds %struct.pevent, %struct.pevent* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.printk_map* @malloc(i32 %14)
  store %struct.printk_map* %15, %struct.printk_map** %6, align 8
  %16 = load %struct.printk_map*, %struct.printk_map** %6, align 8
  %17 = icmp ne %struct.printk_map* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.pevent*, %struct.pevent** %3, align 8
  %21 = getelementptr inbounds %struct.pevent, %struct.pevent* %20, i32 0, i32 1
  %22 = load %struct.printk_list*, %struct.printk_list** %21, align 8
  store %struct.printk_list* %22, %struct.printk_list** %4, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %26, %19
  %24 = load %struct.printk_list*, %struct.printk_list** %4, align 8
  %25 = icmp ne %struct.printk_list* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.printk_list*, %struct.printk_list** %4, align 8
  %28 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.printk_map*, %struct.printk_map** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.printk_map, %struct.printk_map* %30, i64 %32
  %34 = getelementptr inbounds %struct.printk_map, %struct.printk_map* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 4
  %35 = load %struct.printk_list*, %struct.printk_list** %4, align 8
  %36 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.printk_map*, %struct.printk_map** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.printk_map, %struct.printk_map* %38, i64 %40
  %42 = getelementptr inbounds %struct.printk_map, %struct.printk_map* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load %struct.printk_list*, %struct.printk_list** %4, align 8
  store %struct.printk_list* %45, %struct.printk_list** %5, align 8
  %46 = load %struct.printk_list*, %struct.printk_list** %4, align 8
  %47 = getelementptr inbounds %struct.printk_list, %struct.printk_list* %46, i32 0, i32 0
  %48 = load %struct.printk_list*, %struct.printk_list** %47, align 8
  store %struct.printk_list* %48, %struct.printk_list** %4, align 8
  %49 = load %struct.printk_list*, %struct.printk_list** %5, align 8
  %50 = call i32 @free(%struct.printk_list* %49)
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.printk_map*, %struct.printk_map** %6, align 8
  %53 = load %struct.pevent*, %struct.pevent** %3, align 8
  %54 = getelementptr inbounds %struct.pevent, %struct.pevent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @printk_cmp, align 4
  %57 = call i32 @qsort(%struct.printk_map* %52, i32 %55, i32 8, i32 %56)
  %58 = load %struct.printk_map*, %struct.printk_map** %6, align 8
  %59 = load %struct.pevent*, %struct.pevent** %3, align 8
  %60 = getelementptr inbounds %struct.pevent, %struct.pevent* %59, i32 0, i32 2
  store %struct.printk_map* %58, %struct.printk_map** %60, align 8
  %61 = load %struct.pevent*, %struct.pevent** %3, align 8
  %62 = getelementptr inbounds %struct.pevent, %struct.pevent* %61, i32 0, i32 1
  store %struct.printk_list* null, %struct.printk_list** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %51, %18
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.printk_map* @malloc(i32) #1

declare dso_local i32 @free(%struct.printk_list*) #1

declare dso_local i32 @qsort(%struct.printk_map*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
