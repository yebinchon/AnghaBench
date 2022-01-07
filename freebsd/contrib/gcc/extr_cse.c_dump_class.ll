; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_dump_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i32, %struct.table_elt*, %struct.table_elt* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Equivalence chain for \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c": \0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_class(%struct.table_elt* %0) #0 {
  %2 = alloca %struct.table_elt*, align 8
  %3 = alloca %struct.table_elt*, align 8
  store %struct.table_elt* %0, %struct.table_elt** %2, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %8 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @print_rtl(i32 %6, i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %14 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %13, i32 0, i32 2
  %15 = load %struct.table_elt*, %struct.table_elt** %14, align 8
  store %struct.table_elt* %15, %struct.table_elt** %3, align 8
  br label %16

16:                                               ; preds = %27, %1
  %17 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %18 = icmp ne %struct.table_elt* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %22 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @print_rtl(i32 %20, i32 %23)
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %19
  %28 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %29 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %28, i32 0, i32 1
  %30 = load %struct.table_elt*, %struct.table_elt** %29, align 8
  store %struct.table_elt* %30, %struct.table_elt** %3, align 8
  br label %16

31:                                               ; preds = %16
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_rtl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
