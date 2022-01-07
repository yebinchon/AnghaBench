; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_type_current_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_type_current_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, %struct.cp_binding_level*, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_namespace = common dso_local global i64 0, align 8
@global_type_node = common dso_local global i64 0, align 8
@sk_cleanup = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @lookup_type_current_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_type_current_level(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cp_binding_level*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @NULL_TREE, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %8 = call i32 @timevar_push(i32 %7)
  %9 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %10 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @sk_namespace, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @REAL_IDENTIFIER_TYPE_VALUE(i64 %16)
  %18 = load i64, i64* @NULL_TREE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @REAL_IDENTIFIER_TYPE_VALUE(i64 %21)
  %23 = load i64, i64* @global_type_node, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %26, %struct.cp_binding_level** %5, align 8
  br label %27

27:                                               ; preds = %25, %50
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.cp_binding_level*, %struct.cp_binding_level** %5, align 8
  %30 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @purpose_member(i64 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @REAL_IDENTIFIER_TYPE_VALUE(i64 %36)
  %38 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %35, i64 %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.cp_binding_level*, %struct.cp_binding_level** %5, align 8
  %41 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @sk_cleanup, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.cp_binding_level*, %struct.cp_binding_level** %5, align 8
  %47 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %46, i32 0, i32 1
  %48 = load %struct.cp_binding_level*, %struct.cp_binding_level** %47, align 8
  store %struct.cp_binding_level* %48, %struct.cp_binding_level** %5, align 8
  br label %50

49:                                               ; preds = %39
  br label %51

50:                                               ; preds = %45
  br label %27

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %20, %1
  %53 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %53, i64 %54)
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @REAL_IDENTIFIER_TYPE_VALUE(i64) #1

declare dso_local i64 @purpose_member(i64, i32) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
