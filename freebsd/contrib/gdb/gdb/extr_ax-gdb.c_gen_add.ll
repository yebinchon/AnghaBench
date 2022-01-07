; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.axs_value = type { i32, i32 }

@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@aop_swap = common dso_local global i32 0, align 4
@aop_mul = common dso_local global i32 0, align 4
@aop_add = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Illegal combination of types in %s.\00", align 1
@axs_rvalue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*, %struct.axs_value*, %struct.axs_value*, i8*)* @gen_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_add(%struct.agent_expr* %0, %struct.axs_value* %1, %struct.axs_value* %2, %struct.axs_value* %3, i8* %4) #0 {
  %6 = alloca %struct.agent_expr*, align 8
  %7 = alloca %struct.axs_value*, align 8
  %8 = alloca %struct.axs_value*, align 8
  %9 = alloca %struct.axs_value*, align 8
  %10 = alloca i8*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %6, align 8
  store %struct.axs_value* %1, %struct.axs_value** %7, align 8
  store %struct.axs_value* %2, %struct.axs_value** %8, align 8
  store %struct.axs_value* %3, %struct.axs_value** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %12 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @TYPE_CODE(i32 %13)
  %15 = load i64, i64* @TYPE_CODE_INT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %5
  %18 = load %struct.axs_value*, %struct.axs_value** %9, align 8
  %19 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @TYPE_CODE(i32 %20)
  %22 = load i64, i64* @TYPE_CODE_PTR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %26 = load i32, i32* @aop_swap, align 4
  %27 = call i32 @ax_simple(%struct.agent_expr* %25, i32 %26)
  %28 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %29 = load i32, i32* @aop_mul, align 4
  %30 = load %struct.axs_value*, %struct.axs_value** %9, align 8
  %31 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gen_scale(%struct.agent_expr* %28, i32 %29, i32 %32)
  %34 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %35 = load i32, i32* @aop_add, align 4
  %36 = call i32 @ax_simple(%struct.agent_expr* %34, i32 %35)
  %37 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %38 = load %struct.axs_value*, %struct.axs_value** %9, align 8
  %39 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gen_extend(%struct.agent_expr* %37, i32 %40)
  %42 = load %struct.axs_value*, %struct.axs_value** %9, align 8
  %43 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %46 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %114

47:                                               ; preds = %17, %5
  %48 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %49 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @TYPE_CODE(i32 %50)
  %52 = load i64, i64* @TYPE_CODE_PTR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %47
  %55 = load %struct.axs_value*, %struct.axs_value** %9, align 8
  %56 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @TYPE_CODE(i32 %57)
  %59 = load i64, i64* @TYPE_CODE_INT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %63 = load i32, i32* @aop_mul, align 4
  %64 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %65 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gen_scale(%struct.agent_expr* %62, i32 %63, i32 %66)
  %68 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %69 = load i32, i32* @aop_add, align 4
  %70 = call i32 @ax_simple(%struct.agent_expr* %68, i32 %69)
  %71 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %72 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %73 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gen_extend(%struct.agent_expr* %71, i32 %74)
  %76 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %77 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %80 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %113

81:                                               ; preds = %54, %47
  %82 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %83 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @TYPE_CODE(i32 %84)
  %86 = load i64, i64* @TYPE_CODE_INT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = load %struct.axs_value*, %struct.axs_value** %9, align 8
  %90 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @TYPE_CODE(i32 %91)
  %93 = load i64, i64* @TYPE_CODE_INT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %88
  %96 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %97 = load i32, i32* @aop_add, align 4
  %98 = call i32 @ax_simple(%struct.agent_expr* %96, i32 %97)
  %99 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %100 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %101 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @gen_extend(%struct.agent_expr* %99, i32 %102)
  %104 = load %struct.axs_value*, %struct.axs_value** %8, align 8
  %105 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %108 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %112

109:                                              ; preds = %88, %81
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %109, %95
  br label %113

113:                                              ; preds = %112, %61
  br label %114

114:                                              ; preds = %113, %24
  %115 = load i32, i32* @axs_rvalue, align 4
  %116 = load %struct.axs_value*, %struct.axs_value** %7, align 8
  %117 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  ret void
}

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

declare dso_local i32 @gen_scale(%struct.agent_expr*, i32, i32) #1

declare dso_local i32 @gen_extend(%struct.agent_expr*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
