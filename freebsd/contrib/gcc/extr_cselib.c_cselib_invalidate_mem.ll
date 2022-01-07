; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_invalidate_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_invalidate_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.elt_list* }
%struct.elt_list = type { %struct.elt_list*, %struct.TYPE_5__* }
%struct.elt_loc_list = type { %struct.elt_loc_list*, i32 }

@first_containing_mem = common dso_local global %struct.TYPE_5__* null, align 8
@dummy_val = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PARAM_MAX_CSELIB_MEMORY_LOCATIONS = common dso_local global i32 0, align 4
@cselib_rtx_varies_p = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@n_useless_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cselib_invalidate_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cselib_invalidate_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.elt_loc_list**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.elt_list**, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @XEXP(i32 %14, i32 0)
  %16 = call i32 @get_addr(i32 %15)
  %17 = call i32 @canon_rtx(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @canon_rtx(i32 %18)
  store i32 %19, i32* %2, align 4
  store %struct.TYPE_5__** @first_containing_mem, %struct.TYPE_5__*** %3, align 8
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %4, align 8
  br label %22

22:                                               ; preds = %121, %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, @dummy_val
  br i1 %24, label %25, label %123

25:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = bitcast i64* %27 to %struct.elt_loc_list**
  store %struct.elt_loc_list** %28, %struct.elt_loc_list*** %9, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %91, %64, %46, %25
  %35 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %9, align 8
  %36 = load %struct.elt_loc_list*, %struct.elt_loc_list** %35, align 8
  %37 = icmp ne %struct.elt_loc_list* %36, null
  br i1 %37, label %38, label %94

38:                                               ; preds = %34
  %39 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %9, align 8
  %40 = load %struct.elt_loc_list*, %struct.elt_loc_list** %39, align 8
  %41 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @MEM_P(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %9, align 8
  %48 = load %struct.elt_loc_list*, %struct.elt_loc_list** %47, align 8
  %49 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %48, i32 0, i32 0
  store %struct.elt_loc_list** %49, %struct.elt_loc_list*** %9, align 8
  br label %34

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @PARAM_MAX_CSELIB_MEMORY_LOCATIONS, align 4
  %53 = call i32 @PARAM_VALUE(i32 %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @GET_MODE(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @cselib_rtx_varies_p, align 4
  %62 = call i32 @canon_true_dependence(i32 %56, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %55
  store i32 1, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %9, align 8
  %68 = load %struct.elt_loc_list*, %struct.elt_loc_list** %67, align 8
  %69 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %68, i32 0, i32 0
  store %struct.elt_loc_list** %69, %struct.elt_loc_list*** %9, align 8
  br label %34

70:                                               ; preds = %55, %50
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @XEXP(i32 %71, i32 0)
  %73 = load i32, i32* @VOIDmode, align 4
  %74 = call %struct.TYPE_5__* @cselib_lookup(i32 %72, i32 %73, i32 0)
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %12, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store %struct.elt_list** %76, %struct.elt_list*** %13, align 8
  br label %77

77:                                               ; preds = %87, %70
  %78 = load %struct.elt_list**, %struct.elt_list*** %13, align 8
  %79 = load %struct.elt_list*, %struct.elt_list** %78, align 8
  %80 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = icmp eq %struct.TYPE_5__* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.elt_list**, %struct.elt_list*** %13, align 8
  %86 = call i32 @unchain_one_elt_list(%struct.elt_list** %85)
  br label %91

87:                                               ; preds = %77
  %88 = load %struct.elt_list**, %struct.elt_list*** %13, align 8
  %89 = load %struct.elt_list*, %struct.elt_list** %88, align 8
  %90 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %89, i32 0, i32 0
  store %struct.elt_list** %90, %struct.elt_list*** %13, align 8
  br label %77

91:                                               ; preds = %84
  %92 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %9, align 8
  %93 = call i32 @unchain_one_elt_loc_list(%struct.elt_loc_list** %92)
  br label %34

94:                                               ; preds = %34
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @n_useless_values, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @n_useless_values, align 4
  br label %105

105:                                              ; preds = %102, %97, %94
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %113, align 8
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store %struct.TYPE_5__** %116, %struct.TYPE_5__*** %3, align 8
  br label %120

117:                                              ; preds = %105
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %119, align 8
  br label %120

120:                                              ; preds = %117, %111
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %4, align 8
  br label %22

123:                                              ; preds = %22
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* @dummy_val, %struct.TYPE_5__** %124, align 8
  ret void
}

declare dso_local i32 @canon_rtx(i32) #1

declare dso_local i32 @get_addr(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i32 @canon_true_dependence(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local %struct.TYPE_5__* @cselib_lookup(i32, i32, i32) #1

declare dso_local i32 @unchain_one_elt_list(%struct.elt_list**) #1

declare dso_local i32 @unchain_one_elt_loc_list(%struct.elt_loc_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
