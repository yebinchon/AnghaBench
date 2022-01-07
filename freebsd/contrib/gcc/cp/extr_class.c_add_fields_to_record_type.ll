; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_add_fields_to_record_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_add_fields_to_record_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sorted_fields_type = type { i64* }

@FIELD_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.sorted_fields_type*, i32)* @add_fields_to_record_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_fields_to_record_type(i64 %0, %struct.sorted_fields_type* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sorted_fields_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.sorted_fields_type* %1, %struct.sorted_fields_type** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @FIELD_DECL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @TREE_TYPE(i64 %18)
  %20 = call i64 @ANON_AGGR_TYPE_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @TREE_TYPE(i64 %23)
  %25 = call i64 @TYPE_FIELDS(i32 %24)
  %26 = load %struct.sorted_fields_type*, %struct.sorted_fields_type** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @add_fields_to_record_type(i64 %25, %struct.sorted_fields_type* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %17, %12
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.sorted_fields_type*, %struct.sorted_fields_type** %5, align 8
  %32 = getelementptr inbounds %struct.sorted_fields_type, %struct.sorted_fields_type* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  store i64 %30, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @TREE_CHAIN(i64 %40)
  store i64 %41, i64* %7, align 8
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
