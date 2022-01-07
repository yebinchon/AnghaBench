; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_send_clauses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_send_clauses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64*, %struct.TYPE_5__*)* @lower_send_clauses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_send_clauses(i64 %0, i64* %1, i64* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %125, %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %128

21:                                               ; preds = %18
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @OMP_CLAUSE_CODE(i64 %22)
  switch i32 %23, label %25 [
    i32 130, label %24
    i32 131, label %24
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %21, %21, %21, %21
  br label %26

25:                                               ; preds = %21
  br label %125

26:                                               ; preds = %24
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @OMP_CLAUSE_DECL(i64 %27)
  store i64 %28, i64* %10, align 8
  store i64 %28, i64* %13, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = call i64 @lookup_decl_in_outer_ctx(i64 %34, %struct.TYPE_5__* %35)
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @OMP_CLAUSE_CODE(i64 %38)
  %40 = icmp ne i32 %39, 131
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @is_global_var(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %125

46:                                               ; preds = %41, %37
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @is_variable_sized(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %125

51:                                               ; preds = %46
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @use_pointer_for_field(i64 %52, i32 0)
  store i32 %53, i32* %14, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @OMP_CLAUSE_CODE(i64 %54)
  switch i32 %55, label %83 [
    i32 130, label %56
    i32 131, label %56
    i32 129, label %57
    i32 128, label %72
  ]

56:                                               ; preds = %51, %51
  store i32 1, i32* %15, align 4
  br label %85

57:                                               ; preds = %51
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @is_reference(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60, %57
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %125

69:                                               ; preds = %64
  store i32 1, i32* %15, align 4
  br label %71

70:                                               ; preds = %60
  store i32 1, i32* %16, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %85

72:                                               ; preds = %51
  store i32 1, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @is_reference(i64 %76)
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ true, %72 ], [ %78, %75 ]
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %16, align 4
  br label %85

83:                                               ; preds = %51
  %84 = call i32 (...) @gcc_unreachable()
  br label %85

85:                                               ; preds = %83, %79, %71, %56
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = call i64 @build_sender_ref(i64 %89, %struct.TYPE_5__* %90)
  store i64 %91, i64* %11, align 8
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i64, i64* %13, align 8
  %96 = call i64 @build_fold_addr_expr(i64 %95)
  br label %99

97:                                               ; preds = %88
  %98 = load i64, i64* %13, align 8
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i64 [ %96, %94 ], [ %98, %97 ]
  store i64 %100, i64* %12, align 8
  %101 = load i32, i32* @MODIFY_EXPR, align 4
  %102 = load i32, i32* @void_type_node, align 4
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i64 @build2(i32 %101, i32 %102, i64 %103, i64 %104)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = call i32 @gimplify_and_add(i64 %106, i64* %107)
  br label %109

109:                                              ; preds = %99, %85
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = call i64 @build_sender_ref(i64 %113, %struct.TYPE_5__* %114)
  store i64 %115, i64* %11, align 8
  %116 = load i32, i32* @MODIFY_EXPR, align 4
  %117 = load i32, i32* @void_type_node, align 4
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i64 @build2(i32 %116, i32 %117, i64 %118, i64 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64*, i64** %7, align 8
  %123 = call i32 @gimplify_and_add(i64 %121, i64* %122)
  br label %124

124:                                              ; preds = %112, %109
  br label %125

125:                                              ; preds = %124, %68, %50, %45, %25
  %126 = load i64, i64* %9, align 8
  %127 = call i64 @OMP_CLAUSE_CHAIN(i64 %126)
  store i64 %127, i64* %9, align 8
  br label %18

128:                                              ; preds = %18
  ret void
}

declare dso_local i32 @OMP_CLAUSE_CODE(i64) #1

declare dso_local i64 @OMP_CLAUSE_DECL(i64) #1

declare dso_local i64 @lookup_decl_in_outer_ctx(i64, %struct.TYPE_5__*) #1

declare dso_local i64 @is_global_var(i64) #1

declare dso_local i64 @is_variable_sized(i64) #1

declare dso_local i32 @use_pointer_for_field(i64, i32) #1

declare dso_local i32 @is_reference(i64) #1

declare dso_local i32 @OMP_CLAUSE_LASTPRIVATE_FIRSTPRIVATE(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @build_sender_ref(i64, %struct.TYPE_5__*) #1

declare dso_local i64 @build_fold_addr_expr(i64) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i32 @gimplify_and_add(i64, i64*) #1

declare dso_local i64 @OMP_CLAUSE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
