; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.axs_value = type { i32, i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@aop_mul = common dso_local global i32 0, align 4
@aop_sub = common dso_local global i32 0, align 4
@aop_div_unsigned = common dso_local global i32 0, align 4
@builtin_type_long = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"First argument of `-' is a pointer, but second argument is neither\0Aan integer nor a pointer of the same type.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Illegal combination of types in subtraction.\00", align 1
@axs_rvalue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*, %struct.axs_value*, %struct.axs_value*)* @gen_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_sub(%struct.agent_expr* %0, %struct.axs_value* %1, %struct.axs_value* %2, %struct.axs_value* %3) #0 {
  %5 = alloca %struct.agent_expr*, align 8
  %6 = alloca %struct.axs_value*, align 8
  %7 = alloca %struct.axs_value*, align 8
  %8 = alloca %struct.axs_value*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %5, align 8
  store %struct.axs_value* %1, %struct.axs_value** %6, align 8
  store %struct.axs_value* %2, %struct.axs_value** %7, align 8
  store %struct.axs_value* %3, %struct.axs_value** %8, align 8
  %9 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %10 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @TYPE_CODE(i32 %11)
  %13 = load i64, i64* @TYPE_CODE_PTR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %4
  %16 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %17 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @TYPE_CODE(i32 %18)
  %20 = load i64, i64* @TYPE_CODE_INT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %24 = load i32, i32* @aop_mul, align 4
  %25 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %26 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gen_scale(%struct.agent_expr* %23, i32 %24, i32 %27)
  %29 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %30 = load i32, i32* @aop_sub, align 4
  %31 = call i32 @ax_simple(%struct.agent_expr* %29, i32 %30)
  %32 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %33 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %34 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gen_extend(%struct.agent_expr* %32, i32 %35)
  %37 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %38 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %41 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %77

42:                                               ; preds = %15
  %43 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %44 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @TYPE_CODE(i32 %45)
  %47 = load i64, i64* @TYPE_CODE_PTR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %51 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TYPE_TARGET_TYPE(i32 %52)
  %54 = call i64 @TYPE_LENGTH(i32 %53)
  %55 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %56 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TYPE_TARGET_TYPE(i32 %57)
  %59 = call i64 @TYPE_LENGTH(i32 %58)
  %60 = icmp eq i64 %54, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %49
  %62 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %63 = load i32, i32* @aop_sub, align 4
  %64 = call i32 @ax_simple(%struct.agent_expr* %62, i32 %63)
  %65 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %66 = load i32, i32* @aop_div_unsigned, align 4
  %67 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %68 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @gen_scale(%struct.agent_expr* %65, i32 %66, i32 %69)
  %71 = load i32, i32* @builtin_type_long, align 4
  %72 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %73 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %76

74:                                               ; preds = %49, %42
  %75 = call i32 @error(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %61
  br label %77

77:                                               ; preds = %76, %22
  br label %109

78:                                               ; preds = %4
  %79 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %80 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @TYPE_CODE(i32 %81)
  %83 = load i64, i64* @TYPE_CODE_INT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %78
  %86 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %87 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @TYPE_CODE(i32 %88)
  %90 = load i64, i64* @TYPE_CODE_INT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %94 = load i32, i32* @aop_sub, align 4
  %95 = call i32 @ax_simple(%struct.agent_expr* %93, i32 %94)
  %96 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %97 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %98 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @gen_extend(%struct.agent_expr* %96, i32 %99)
  %101 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %102 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %105 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %108

106:                                              ; preds = %85, %78
  %107 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %92
  br label %109

109:                                              ; preds = %108, %77
  %110 = load i32, i32* @axs_rvalue, align 4
  %111 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %112 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  ret void
}

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @gen_scale(%struct.agent_expr*, i32, i32) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

declare dso_local i32 @gen_extend(%struct.agent_expr*, i32) #1

declare dso_local i64 @TYPE_LENGTH(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
