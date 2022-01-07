; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_binop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.axs_value = type { i32, i32 }

@TYPE_CODE_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Illegal combination of types in %s.\00", align 1
@axs_rvalue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*, %struct.axs_value*, %struct.axs_value*, i32, i32, i32, i8*)* @gen_binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_binop(%struct.agent_expr* %0, %struct.axs_value* %1, %struct.axs_value* %2, %struct.axs_value* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.agent_expr*, align 8
  %10 = alloca %struct.axs_value*, align 8
  %11 = alloca %struct.axs_value*, align 8
  %12 = alloca %struct.axs_value*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %9, align 8
  store %struct.axs_value* %1, %struct.axs_value** %10, align 8
  store %struct.axs_value* %2, %struct.axs_value** %11, align 8
  store %struct.axs_value* %3, %struct.axs_value** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %17 = load %struct.axs_value*, %struct.axs_value** %11, align 8
  %18 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @TYPE_CODE(i32 %19)
  %21 = load i64, i64* @TYPE_CODE_INT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %8
  %24 = load %struct.axs_value*, %struct.axs_value** %12, align 8
  %25 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @TYPE_CODE(i32 %26)
  %28 = load i64, i64* @TYPE_CODE_INT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %8
  %31 = load i8*, i8** %16, align 8
  %32 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.agent_expr*, %struct.agent_expr** %9, align 8
  %35 = load %struct.axs_value*, %struct.axs_value** %11, align 8
  %36 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @TYPE_UNSIGNED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @ax_simple(%struct.agent_expr* %34, i32 %45)
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.agent_expr*, %struct.agent_expr** %9, align 8
  %51 = load %struct.axs_value*, %struct.axs_value** %11, align 8
  %52 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gen_extend(%struct.agent_expr* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.axs_value*, %struct.axs_value** %11, align 8
  %57 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.axs_value*, %struct.axs_value** %10, align 8
  %60 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @axs_rvalue, align 4
  %62 = load %struct.axs_value*, %struct.axs_value** %10, align 8
  %63 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @gen_extend(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
