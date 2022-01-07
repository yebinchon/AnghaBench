; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_omp_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_omp_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i64, %struct.cp_binding_level* }

@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_omp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"invalid exit from OpenMP structured block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_omp_return() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cp_binding_level*, align 8
  %3 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %3, %struct.cp_binding_level** %2, align 8
  br label %4

4:                                                ; preds = %16, %0
  %5 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %6 = icmp ne %struct.cp_binding_level* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %9 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @sk_omp, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %21

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %18 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %17, i32 0, i32 1
  %19 = load %struct.cp_binding_level*, %struct.cp_binding_level** %18, align 8
  store %struct.cp_binding_level* %19, %struct.cp_binding_level** %2, align 8
  br label %4

20:                                               ; preds = %4
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
