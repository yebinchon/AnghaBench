; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_build_indirect_object_id_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_build_indirect_object_id_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unsigned_type_node = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unary *\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_indirect_object_id_exp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @unsigned_type_node, align 4
  %7 = call i32 @TYPE_SIZE_UNIT(i32 %6)
  %8 = call i32 @int_cst_value(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @Pmode, align 4
  %10 = call i32 @GET_MODE_SIZE(i32 %9)
  %11 = load i32, i32* @Pmode, align 4
  %12 = call i32 @GET_MODE_SIZE(i32 %11)
  %13 = add nsw i32 %10, %12
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @Pmode, align 4
  %19 = call i32 @GET_MODE_SIZE(i32 %18)
  %20 = add nsw i32 %17, %19
  %21 = load i32, i32* @Pmode, align 4
  %22 = call i32 @GET_MODE_SIZE(i32 %21)
  %23 = add nsw i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @PLUS_EXPR, align 4
  %25 = load i32, i32* @ptr_type_node, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @build_int_cst(i32 %27, i32 %28)
  %30 = call i32 @build2(i32 %24, i32 %25, i32 %26, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @ptr_type_node, align 4
  %32 = call i32 @build_pointer_type(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @build_c_cast(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @build_indirect_ref(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @int_cst_value(i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @build_c_cast(i32, i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @build_indirect_ref(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
