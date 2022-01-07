; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c___die_walk_instances_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c___die_walk_instances_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.__instance_walk_param = type { i64, i64, i32, i64 (%struct.TYPE_12__*, i32)* }

@DW_AT_abstract_origin = common dso_local global i32 0, align 4
@DIE_FIND_CB_CONTINUE = common dso_local global i32 0, align 4
@DW_TAG_inlined_subroutine = common dso_local global i64 0, align 8
@DIE_FIND_CB_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @__die_walk_instances_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__die_walk_instances_cb(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__instance_walk_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.__instance_walk_param*
  store %struct.__instance_walk_param* %13, %struct.__instance_walk_param** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = load i32, i32* @DW_AT_abstract_origin, align 4
  %16 = call i32* @dwarf_attr(%struct.TYPE_12__* %14, i32 %15, i32* %7)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %20, i32* %3, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.TYPE_12__* @dwarf_formref_die(i32* %22, %struct.TYPE_12__* %8)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.__instance_walk_param*, %struct.__instance_walk_param** %6, align 8
  %31 = getelementptr inbounds %struct.__instance_walk_param, %struct.__instance_walk_param* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %21
  %35 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %26
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = call i64 @dwarf_tag(%struct.TYPE_12__* %37)
  %39 = load i64, i64* @DW_TAG_inlined_subroutine, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = call i32 @dwarf_decl_line(%struct.TYPE_12__* %42, i32* %11)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = call i32 @die_get_call_lineno(%struct.TYPE_12__* %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = call i32 @die_get_decl_fileno(%struct.TYPE_12__* %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 @die_get_call_fileno(%struct.TYPE_12__* %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %56, i32* %3, align 4
  br label %80

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.__instance_walk_param*, %struct.__instance_walk_param** %6, align 8
  %61 = getelementptr inbounds %struct.__instance_walk_param, %struct.__instance_walk_param* %60, i32 0, i32 3
  %62 = load i64 (%struct.TYPE_12__*, i32)*, i64 (%struct.TYPE_12__*, i32)** %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = load %struct.__instance_walk_param*, %struct.__instance_walk_param** %6, align 8
  %65 = getelementptr inbounds %struct.__instance_walk_param, %struct.__instance_walk_param* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 %62(%struct.TYPE_12__* %63, i32 %66)
  %68 = load %struct.__instance_walk_param*, %struct.__instance_walk_param** %6, align 8
  %69 = getelementptr inbounds %struct.__instance_walk_param, %struct.__instance_walk_param* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.__instance_walk_param*, %struct.__instance_walk_param** %6, align 8
  %71 = getelementptr inbounds %struct.__instance_walk_param, %struct.__instance_walk_param* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* @DIE_FIND_CB_END, align 4
  br label %78

76:                                               ; preds = %59
  %77 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %55, %34, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32* @dwarf_attr(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @dwarf_formref_die(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @dwarf_tag(%struct.TYPE_12__*) #1

declare dso_local i32 @dwarf_decl_line(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @die_get_call_lineno(%struct.TYPE_12__*) #1

declare dso_local i32 @die_get_decl_fileno(%struct.TYPE_12__*) #1

declare dso_local i32 @die_get_call_fileno(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
