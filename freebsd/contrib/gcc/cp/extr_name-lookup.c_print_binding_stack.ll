; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_print_binding_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_print_binding_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { %struct.cp_binding_level* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"current_binding_level=%p\0Aclass_binding_level=%p\0ANAMESPACE_LEVEL (global_namespace)=%p\0A\00", align 1
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@class_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@global_namespace = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"global:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_binding_stack() #0 {
  %1 = alloca %struct.cp_binding_level*, align 8
  %2 = load i32, i32* @stderr, align 4
  %3 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %4 = bitcast %struct.cp_binding_level* %3 to i8*
  %5 = load %struct.cp_binding_level*, %struct.cp_binding_level** @class_binding_level, align 8
  %6 = bitcast %struct.cp_binding_level* %5 to i8*
  %7 = load i32, i32* @global_namespace, align 4
  %8 = call i64 @NAMESPACE_LEVEL(i32 %7)
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i8* %4, i8* %6, i8* %9)
  %11 = load %struct.cp_binding_level*, %struct.cp_binding_level** @class_binding_level, align 8
  %12 = icmp ne %struct.cp_binding_level* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %0
  %14 = load %struct.cp_binding_level*, %struct.cp_binding_level** @class_binding_level, align 8
  store %struct.cp_binding_level* %14, %struct.cp_binding_level** %1, align 8
  br label %15

15:                                               ; preds = %24, %13
  %16 = load %struct.cp_binding_level*, %struct.cp_binding_level** %1, align 8
  %17 = icmp ne %struct.cp_binding_level* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.cp_binding_level*, %struct.cp_binding_level** %1, align 8
  %20 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %21 = icmp eq %struct.cp_binding_level* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %28

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.cp_binding_level*, %struct.cp_binding_level** %1, align 8
  %26 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %25, i32 0, i32 0
  %27 = load %struct.cp_binding_level*, %struct.cp_binding_level** %26, align 8
  store %struct.cp_binding_level* %27, %struct.cp_binding_level** %1, align 8
  br label %15

28:                                               ; preds = %22, %15
  %29 = load %struct.cp_binding_level*, %struct.cp_binding_level** %1, align 8
  %30 = icmp ne %struct.cp_binding_level* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load %struct.cp_binding_level*, %struct.cp_binding_level** @class_binding_level, align 8
  store %struct.cp_binding_level* %32, %struct.cp_binding_level** %1, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %34, %struct.cp_binding_level** %1, align 8
  br label %35

35:                                               ; preds = %33, %31
  br label %38

36:                                               ; preds = %0
  %37 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %37, %struct.cp_binding_level** %1, align 8
  br label %38

38:                                               ; preds = %36, %35
  %39 = load %struct.cp_binding_level*, %struct.cp_binding_level** %1, align 8
  %40 = call i32 @print_other_binding_stack(%struct.cp_binding_level* %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @global_namespace, align 4
  %44 = call i64 @NAMESPACE_LEVEL(i32 %43)
  %45 = call i32 @print_binding_level(i64 %44)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @NAMESPACE_LEVEL(i32) #1

declare dso_local i32 @print_other_binding_stack(%struct.cp_binding_level*) #1

declare dso_local i32 @print_binding_level(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
