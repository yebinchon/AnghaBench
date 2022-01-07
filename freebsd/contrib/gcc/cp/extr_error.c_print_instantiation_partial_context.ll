; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_print_instantiation_partial_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_print_instantiation_partial_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s:%d:   instantiated from %qs\0A\00", align 1
@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@TFF_RETURN_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s:%d:   instantiated from here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i32)* @print_instantiation_partial_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_instantiation_partial_context(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @expand_location(i32 %10)
  %12 = bitcast %struct.TYPE_5__* %8 to i64*
  store i64 %11, i64* %12, align 4
  %13 = bitcast %struct.TYPE_5__* %7 to i8*
  %14 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @NULL_TREE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %39

19:                                               ; preds = %9
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @TINST_DECL(i64 %27)
  %29 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %30 = load i32, i32* @TFF_RETURN_TYPE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @decl_as_string(i32 %28, i32 %31)
  %33 = call i32 (i32, i8*, i32, i32, ...) @pp_verbatim(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @TINST_LOCATION(i64 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %19
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @TREE_CHAIN(i64 %37)
  store i64 %38, i64* %5, align 8
  br label %9

39:                                               ; preds = %18
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, i32, ...) @pp_verbatim(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pp_base_newline(i32 %50)
  ret void
}

declare dso_local i64 @expand_location(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pp_verbatim(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @decl_as_string(i32, i32) #1

declare dso_local i32 @TINST_DECL(i64) #1

declare dso_local i32 @TINST_LOCATION(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_base_newline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
