; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_dump_data_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_dump_data_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"(Data Ref: \0A  stmt: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  ref: \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"  base_object: \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"  Access function %d: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_data_reference(i32* %0, %struct.data_reference* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.data_reference*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.data_reference* %1, %struct.data_reference** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %10 = call i32 @DR_STMT(%struct.data_reference* %9)
  %11 = call i32 @print_generic_stmt(i32* %8, i32 %10, i32 0)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %16 = call i32 @DR_REF(%struct.data_reference* %15)
  %17 = call i32 @print_generic_stmt(i32* %14, i32 %16, i32 0)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %22 = call i32 @DR_BASE_OBJECT(%struct.data_reference* %21)
  %23 = call i32 @print_generic_stmt(i32* %20, i32 %22, i32 0)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %38, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %27 = call i32 @DR_NUM_DIMENSIONS(%struct.data_reference* %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @DR_ACCESS_FN(%struct.data_reference* %34, i32 %35)
  %37 = call i32 @print_generic_stmt(i32* %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_generic_stmt(i32*, i32, i32) #1

declare dso_local i32 @DR_STMT(%struct.data_reference*) #1

declare dso_local i32 @DR_REF(%struct.data_reference*) #1

declare dso_local i32 @DR_BASE_OBJECT(%struct.data_reference*) #1

declare dso_local i32 @DR_NUM_DIMENSIONS(%struct.data_reference*) #1

declare dso_local i32 @DR_ACCESS_FN(%struct.data_reference*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
