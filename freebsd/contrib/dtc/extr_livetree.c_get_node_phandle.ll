; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_get_node_phandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_get_node_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64 }

@get_node_phandle.phandle = internal global i32 1, align 4
@.str = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@phandle_format = common dso_local global i32 0, align 4
@PHANDLE_LEGACY = common dso_local global i32 0, align 4
@empty_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@PHANDLE_EPAPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_node_phandle(%struct.node* %0, %struct.node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store %struct.node* %1, %struct.node** %5, align 8
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.node*, %struct.node** %5, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.node*, %struct.node** %5, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %10, %2
  br label %21

21:                                               ; preds = %26, %20
  %22 = load %struct.node*, %struct.node** %4, align 8
  %23 = load i32, i32* @get_node_phandle.phandle, align 4
  %24 = call i64 @get_node_by_phandle(%struct.node* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @get_node_phandle.phandle, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @get_node_phandle.phandle, align 4
  br label %21

29:                                               ; preds = %21
  %30 = load i32, i32* @get_node_phandle.phandle, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.node*, %struct.node** %5, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.node*, %struct.node** %5, align 8
  %35 = call i32 @get_property(%struct.node* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @phandle_format, align 4
  %39 = load i32, i32* @PHANDLE_LEGACY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.node*, %struct.node** %5, align 8
  %44 = load i32, i32* @empty_data, align 4
  %45 = load i32, i32* @get_node_phandle.phandle, align 4
  %46 = call i32 @data_append_cell(i32 %44, i32 %45)
  %47 = call i32 @build_property(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = call i32 @add_property(%struct.node* %43, i32 %47)
  br label %49

49:                                               ; preds = %42, %37, %29
  %50 = load %struct.node*, %struct.node** %5, align 8
  %51 = call i32 @get_property(%struct.node* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @phandle_format, align 4
  %55 = load i32, i32* @PHANDLE_EPAPR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.node*, %struct.node** %5, align 8
  %60 = load i32, i32* @empty_data, align 4
  %61 = load i32, i32* @get_node_phandle.phandle, align 4
  %62 = call i32 @data_append_cell(i32 %60, i32 %61)
  %63 = call i32 @build_property(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = call i32 @add_property(%struct.node* %59, i32 %63)
  br label %65

65:                                               ; preds = %58, %53, %49
  %66 = load %struct.node*, %struct.node** %5, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @get_node_by_phandle(%struct.node*, i32) #1

declare dso_local i32 @get_property(%struct.node*, i8*) #1

declare dso_local i32 @add_property(%struct.node*, i32) #1

declare dso_local i32 @build_property(i8*, i32) #1

declare dso_local i32 @data_append_cell(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
