; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_schedule_sm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_schedule_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.mem_ref_loc = type { i32, %struct.mem_ref_loc* }
%struct.fmt_data = type { %struct.loop*, %struct.loop* }
%struct.TYPE_6__ = type { i32, %struct.loop*, %struct.loop* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Executing store motion of \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" from loop %d\0A\00", align 1
@force_move_till = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i32*, i32, i32, %struct.mem_ref_loc*)* @schedule_sm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_sm(%struct.loop* %0, i32* %1, i32 %2, i32 %3, %struct.mem_ref_loc* %4) #0 {
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_ref_loc*, align 8
  %11 = alloca %struct.mem_ref_loc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fmt_data, align 8
  store %struct.loop* %0, %struct.loop** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mem_ref_loc* %4, %struct.mem_ref_loc** %10, align 8
  %17 = load i64, i64* @dump_file, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %5
  %20 = load i32, i32* @dump_flags, align 4
  %21 = load i32, i32* @TDF_DETAILS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i64, i64* @dump_file, align 8
  %26 = call i32 (i64, i8*, ...) @fprintf(i64 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @dump_file, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @print_generic_expr(i64 %27, i32 %28, i32 0)
  %30 = load i64, i64* @dump_file, align 8
  %31 = load %struct.loop*, %struct.loop** %6, align 8
  %32 = getelementptr inbounds %struct.loop, %struct.loop* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i64, i8*, ...) @fprintf(i64 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %24, %19, %5
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @TREE_TYPE(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @get_lsm_tmp_name(i32 %38)
  %40 = call i32 @make_rename_temp(i32 %37, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.loop*, %struct.loop** %6, align 8
  %42 = getelementptr inbounds %struct.fmt_data, %struct.fmt_data* %16, i32 0, i32 1
  store %struct.loop* %41, %struct.loop** %42, align 8
  %43 = load %struct.loop*, %struct.loop** %6, align 8
  %44 = getelementptr inbounds %struct.fmt_data, %struct.fmt_data* %16, i32 0, i32 0
  store %struct.loop* %43, %struct.loop** %44, align 8
  %45 = load i32, i32* @force_move_till, align 4
  %46 = call i32 @for_each_index(i32* %9, i32 %45, %struct.fmt_data* %16)
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %10, align 8
  %49 = call i32 @rewrite_mem_refs(i32 %47, %struct.mem_ref_loc* %48)
  %50 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %10, align 8
  store %struct.mem_ref_loc* %50, %struct.mem_ref_loc** %11, align 8
  br label %51

51:                                               ; preds = %67, %35
  %52 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %53 = icmp ne %struct.mem_ref_loc* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %56 = getelementptr inbounds %struct.mem_ref_loc, %struct.mem_ref_loc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_6__* @LIM_DATA(i32 %57)
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %62 = getelementptr inbounds %struct.mem_ref_loc, %struct.mem_ref_loc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_6__* @LIM_DATA(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %11, align 8
  %69 = getelementptr inbounds %struct.mem_ref_loc, %struct.mem_ref_loc* %68, i32 0, i32 1
  %70 = load %struct.mem_ref_loc*, %struct.mem_ref_loc** %69, align 8
  store %struct.mem_ref_loc* %70, %struct.mem_ref_loc** %11, align 8
  br label %51

71:                                               ; preds = %51
  %72 = load i32, i32* @MODIFY_EXPR, align 4
  %73 = load i32, i32* @void_type_node, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @build2(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = call i32 @xcalloc(i32 1, i32 4)
  %78 = load i32, i32* %14, align 4
  %79 = call %struct.TYPE_5__* @get_stmt_ann(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.loop*, %struct.loop** %6, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call %struct.TYPE_6__* @LIM_DATA(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store %struct.loop* %82, %struct.loop** %85, align 8
  %86 = load %struct.loop*, %struct.loop** %6, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call %struct.TYPE_6__* @LIM_DATA(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store %struct.loop* %86, %struct.loop** %89, align 8
  %90 = load %struct.loop*, %struct.loop** %6, align 8
  %91 = call i32 @loop_latch_edge(%struct.loop* %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @bsi_insert_on_edge(i32 %91, i32 %92)
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %112, %71
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load i32, i32* @MODIFY_EXPR, align 4
  %100 = load i32, i32* @void_type_node, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @unshare_expr(i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @build2(i32 %99, i32 %100, i32 %102, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %13, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @bsi_insert_on_edge(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %98
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %94

115:                                              ; preds = %94
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i32 @make_rename_temp(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @get_lsm_tmp_name(i32) #1

declare dso_local i32 @for_each_index(i32*, i32, %struct.fmt_data*) #1

declare dso_local i32 @rewrite_mem_refs(i32, %struct.mem_ref_loc*) #1

declare dso_local %struct.TYPE_6__* @LIM_DATA(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @xcalloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @get_stmt_ann(i32) #1

declare dso_local i32 @bsi_insert_on_edge(i32, i32) #1

declare dso_local i32 @loop_latch_edge(%struct.loop*) #1

declare dso_local i32 @unshare_expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
