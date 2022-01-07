; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_integrate.c_get_hard_reg_initial_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_integrate.c_get_hard_reg_initial_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.initial_value_struct* }
%struct.initial_value_struct = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@cfun = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_hard_reg_initial_val(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.initial_value_struct*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @has_hard_reg_initial_val(i32 %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %3, align 8
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cfun, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.initial_value_struct*, %struct.initial_value_struct** %17, align 8
  store %struct.initial_value_struct* %18, %struct.initial_value_struct** %6, align 8
  %19 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %20 = icmp eq %struct.initial_value_struct* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = call i8* @ggc_alloc(i32 4)
  %23 = bitcast i8* %22 to %struct.initial_value_struct*
  store %struct.initial_value_struct* %23, %struct.initial_value_struct** %6, align 8
  %24 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %25 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %27 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %26, i32 0, i32 1
  store i32 5, i32* %27, align 4
  %28 = call i8* @ggc_alloc(i32 20)
  %29 = bitcast i8* %28 to %struct.TYPE_4__*
  %30 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %31 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %30, i32 0, i32 2
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.initial_value_struct* %32, %struct.initial_value_struct** %34, align 8
  br label %35

35:                                               ; preds = %21, %15
  %36 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %37 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %40 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %45 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 5
  store i32 %47, i32* %45, align 4
  %48 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %49 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %52 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call %struct.TYPE_4__* @ggc_realloc(%struct.TYPE_4__* %50, i32 %56)
  %58 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %59 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %58, i32 0, i32 2
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %59, align 8
  br label %60

60:                                               ; preds = %43, %35
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @gen_rtx_REG(i32 %61, i32 %62)
  %64 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %65 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %68 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %63, i32* %72, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @gen_reg_rtx(i32 %73)
  %75 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %76 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %79 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %74, i64* %83, align 8
  %84 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %85 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %88 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %3, align 8
  br label %95

95:                                               ; preds = %60, %13
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local i64 @has_hard_reg_initial_val(i32, i32) #1

declare dso_local i8* @ggc_alloc(i32) #1

declare dso_local %struct.TYPE_4__* @ggc_realloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
