; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_firstprivatize_type_sizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_firstprivatize_type_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.gimplify_omp_ctx*, i32*)* }
%struct.gimplify_omp_ctx = type { i32 }

@error_mark_node = common dso_local global i32* null, align 8
@FIELD_DECL = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gimplify_omp_ctx*, i32*)* @omp_firstprivatize_type_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx* %0, i32* %1) #0 {
  %3 = alloca %struct.gimplify_omp_ctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.gimplify_omp_ctx* %0, %struct.gimplify_omp_ctx** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** @error_mark_node, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %84

13:                                               ; preds = %8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @TYPE_MAIN_VARIANT(i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @pointer_set_insert(i32 %18, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %84

23:                                               ; preds = %13
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @TREE_CODE(i32* %24)
  switch i32 %25, label %70 [
    i32 134, label %26
    i32 135, label %26
    i32 136, label %26
    i32 131, label %26
    i32 137, label %35
    i32 130, label %42
    i32 128, label %42
    i32 132, label %42
    i32 133, label %66
    i32 129, label %66
  ]

26:                                               ; preds = %23, %23, %23, %23
  %27 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @TYPE_MIN_VALUE(i32* %28)
  %30 = call i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx* %27, i32 %29)
  %31 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @TYPE_MAX_VALUE(i32* %32)
  %34 = call i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx* %31, i32 %33)
  br label %71

35:                                               ; preds = %23
  %36 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @TREE_TYPE(i32* %37)
  call void @omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx* %36, i32* %38)
  %39 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @TYPE_DOMAIN(i32* %40)
  call void @omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx* %39, i32* %41)
  br label %71

42:                                               ; preds = %23, %23, %23
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @TYPE_FIELDS(i32* %43)
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %62, %42
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @TREE_CODE(i32* %49)
  %51 = load i32, i32* @FIELD_DECL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @DECL_FIELD_OFFSET(i32* %55)
  %57 = call i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx* %54, i32 %56)
  %58 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32* @TREE_TYPE(i32* %59)
  call void @omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx* %58, i32* %60)
  br label %61

61:                                               ; preds = %53, %48
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %5, align 8
  %64 = call i32* @TREE_CHAIN(i32* %63)
  store i32* %64, i32** %5, align 8
  br label %45

65:                                               ; preds = %45
  br label %71

66:                                               ; preds = %23, %23
  %67 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32* @TREE_TYPE(i32* %68)
  call void @omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx* %67, i32* %69)
  br label %71

70:                                               ; preds = %23
  br label %71

71:                                               ; preds = %70, %66, %65, %35, %26
  %72 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @TYPE_SIZE(i32* %73)
  %75 = call i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx* %72, i32 %74)
  %76 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @TYPE_SIZE_UNIT(i32* %77)
  %79 = call i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx* %76, i32 %78)
  %80 = load i32 (%struct.gimplify_omp_ctx*, i32*)*, i32 (%struct.gimplify_omp_ctx*, i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %81 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 %80(%struct.gimplify_omp_ctx* %81, i32* %82)
  br label %84

84:                                               ; preds = %71, %22, %12
  ret void
}

declare dso_local i32* @TYPE_MAIN_VARIANT(i32*) #1

declare dso_local i64 @pointer_set_insert(i32, i32*) #1

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx*, i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32*) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i32* @TYPE_DOMAIN(i32*) #1

declare dso_local i32* @TYPE_FIELDS(i32*) #1

declare dso_local i32 @DECL_FIELD_OFFSET(i32*) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32 @TYPE_SIZE(i32*) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
