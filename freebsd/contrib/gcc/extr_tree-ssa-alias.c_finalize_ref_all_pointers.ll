; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias.c_finalize_ref_all_pointers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias.c_finalize_ref_all_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_info = type { i64, i64, i32, %struct.TYPE_5__**, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@global_var = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alias_info*)* @finalize_ref_all_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalize_ref_all_pointers(%struct.alias_info* %0) #0 {
  %2 = alloca %struct.alias_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.alias_info* %0, %struct.alias_info** %2, align 8
  %7 = load i64, i64* @global_var, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.alias_info*, %struct.alias_info** %2, align 8
  %11 = getelementptr inbounds %struct.alias_info, %struct.alias_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* @global_var, align 8
  %14 = call i32 @add_may_alias(i32 %12, i64 %13)
  br label %83

15:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.alias_info*, %struct.alias_info** %2, align 8
  %19 = getelementptr inbounds %struct.alias_info, %struct.alias_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.alias_info*, %struct.alias_info** %2, align 8
  %24 = getelementptr inbounds %struct.alias_info, %struct.alias_info* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @is_call_clobbered(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load %struct.alias_info*, %struct.alias_info** %2, align 8
  %36 = getelementptr inbounds %struct.alias_info, %struct.alias_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @add_may_alias(i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %34, %22
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %16

44:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %79, %44
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.alias_info*, %struct.alias_info** %2, align 8
  %48 = getelementptr inbounds %struct.alias_info, %struct.alias_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %45
  %52 = load %struct.alias_info*, %struct.alias_info** %2, align 8
  %53 = getelementptr inbounds %struct.alias_info, %struct.alias_info* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @PTR_IS_REF_ALL(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %79

64:                                               ; preds = %51
  %65 = load i64, i64* %5, align 8
  %66 = call %struct.TYPE_6__* @var_ann(i64 %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @is_call_clobbered(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.alias_info*, %struct.alias_info** %2, align 8
  %74 = getelementptr inbounds %struct.alias_info, %struct.alias_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @add_may_alias(i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %72, %64
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %3, align 8
  br label %45

82:                                               ; preds = %45
  br label %83

83:                                               ; preds = %82, %9
  ret void
}

declare dso_local i32 @add_may_alias(i32, i64) #1

declare dso_local i64 @is_call_clobbered(i64) #1

declare dso_local i64 @PTR_IS_REF_ALL(i64) #1

declare dso_local %struct.TYPE_6__* @var_ann(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
