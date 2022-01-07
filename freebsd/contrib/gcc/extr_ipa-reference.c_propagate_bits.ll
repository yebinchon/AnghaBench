; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_propagate_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_propagate_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge* }
%struct.cgraph_edge = type { %struct.cgraph_node*, %struct.cgraph_edge* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@all_module_statics = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*)* @propagate_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagate_bits(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.cgraph_edge*, align 8
  %6 = alloca %struct.cgraph_node*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %10 = call %struct.TYPE_4__* @get_reference_vars_info_from_cgraph(%struct.cgraph_node* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %14, i32 0, i32 0
  %16 = load %struct.cgraph_edge*, %struct.cgraph_edge** %15, align 8
  store %struct.cgraph_edge* %16, %struct.cgraph_edge** %5, align 8
  br label %17

17:                                               ; preds = %118, %1
  %18 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %19 = icmp ne %struct.cgraph_edge* %18, null
  br i1 %19, label %20, label %122

20:                                               ; preds = %17
  %21 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %22 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %21, i32 0, i32 0
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %22, align 8
  store %struct.cgraph_node* %23, %struct.cgraph_node** %6, align 8
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %25 = call %struct.cgraph_node* @cgraph_master_clone(%struct.cgraph_node* %24)
  store %struct.cgraph_node* %25, %struct.cgraph_node** %6, align 8
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %27 = icmp ne %struct.cgraph_node* %26, null
  br i1 %27, label %28, label %117

28:                                               ; preds = %20
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %30 = call %struct.TYPE_4__* @get_reference_vars_info_from_cgraph(%struct.cgraph_node* %29)
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %114

32:                                               ; preds = %28
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %34 = call %struct.TYPE_4__* @get_reference_vars_info_from_cgraph(%struct.cgraph_node* %33)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @all_module_statics, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @all_module_statics, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @BITMAP_FREE(i64 %52)
  %54 = load i64, i64* @all_module_statics, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %74

57:                                               ; preds = %43
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @bitmap_ior_into(i64 %68, i64 %71)
  br label %73

73:                                               ; preds = %65, %57
  br label %74

74:                                               ; preds = %73, %49
  br label %75

75:                                               ; preds = %74, %32
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @all_module_statics, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %75
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @all_module_statics, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @BITMAP_FREE(i64 %90)
  %92 = load i64, i64* @all_module_statics, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %112

95:                                               ; preds = %81
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @bitmap_ior_into(i64 %106, i64 %109)
  br label %111

111:                                              ; preds = %103, %95
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112, %75
  br label %116

114:                                              ; preds = %28
  %115 = call i32 (...) @gcc_unreachable()
  br label %116

116:                                              ; preds = %114, %113
  br label %117

117:                                              ; preds = %116, %20
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %120 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %119, i32 0, i32 1
  %121 = load %struct.cgraph_edge*, %struct.cgraph_edge** %120, align 8
  store %struct.cgraph_edge* %121, %struct.cgraph_edge** %5, align 8
  br label %17

122:                                              ; preds = %17
  ret void
}

declare dso_local %struct.TYPE_4__* @get_reference_vars_info_from_cgraph(%struct.cgraph_node*) #1

declare dso_local %struct.cgraph_node* @cgraph_master_clone(%struct.cgraph_node*) #1

declare dso_local i32 @BITMAP_FREE(i64) #1

declare dso_local i32 @bitmap_ior_into(i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
