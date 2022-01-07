; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_current_tmpl_spec_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_current_tmpl_spec_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, i64, %struct.cp_binding_level* }

@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_template_parms = common dso_local global i64 0, align 8
@tsk_invalid_member_spec = common dso_local global i32 0, align 4
@processing_explicit_instantiation = common dso_local global i64 0, align 8
@tsk_invalid_expl_inst = common dso_local global i32 0, align 4
@tsk_expl_inst = common dso_local global i32 0, align 4
@tsk_insufficient_parms = common dso_local global i32 0, align 4
@tsk_none = common dso_local global i32 0, align 4
@tsk_excessive_parms = common dso_local global i32 0, align 4
@tsk_expl_spec = common dso_local global i32 0, align 4
@tsk_template = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @current_tmpl_spec_kind(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cp_binding_level*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %8, %struct.cp_binding_level** %7, align 8
  br label %9

9:                                                ; preds = %35, %1
  %10 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %11 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @sk_template_parms, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %17 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %25

24:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %32

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @tsk_invalid_member_spec, align 4
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.cp_binding_level*, %struct.cp_binding_level** %7, align 8
  %37 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %36, i32 0, i32 2
  %38 = load %struct.cp_binding_level*, %struct.cp_binding_level** %37, align 8
  store %struct.cp_binding_level* %38, %struct.cp_binding_level** %7, align 8
  br label %9

39:                                               ; preds = %9
  %40 = load i64, i64* @processing_explicit_instantiation, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @tsk_invalid_expl_inst, align 4
  store i32 %46, i32* %2, align 4
  br label %77

47:                                               ; preds = %42
  %48 = load i32, i32* @tsk_expl_inst, align 4
  store i32 %48, i32* %2, align 4
  br label %77

49:                                               ; preds = %39
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @tsk_insufficient_parms, align 4
  store i32 %54, i32* %2, align 4
  br label %77

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @tsk_none, align 4
  store i32 %60, i32* %2, align 4
  br label %77

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @tsk_excessive_parms, align 4
  store i32 %67, i32* %2, align 4
  br label %77

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @tsk_expl_spec, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @tsk_template, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %66, %59, %53, %47, %45, %29
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
