; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_arg_dependent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_lookup_arg_dependent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_lookup = type { i8*, i8*, i8*, i8*, i8* }

@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i8* null, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"argument dependent lookup finds %q+D\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"  in call to %qD\00", align 1
@error_mark_node = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lookup_arg_dependent(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.arg_lookup, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %10 = call i32 @timevar_push(i32 %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @remove_hidden_names(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %8, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %8, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %8, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @NULL_TREE, align 8
  %20 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %8, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** @NULL_TREE, align 8
  %22 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %8, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @arg_assoc_args(%struct.arg_lookup* %8, i8* %23)
  %25 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %8, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @TREE_CODE(i8* %30)
  %32 = load i64, i64* @VAR_DECL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @is_overloaded_fn(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** @error_mark_node, align 8
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %38, %34, %29, %3
  %45 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %45, i8* %46)
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i8* @remove_hidden_names(i8*) #1

declare dso_local i32 @arg_assoc_args(%struct.arg_lookup*, i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i32 @is_overloaded_fn(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
