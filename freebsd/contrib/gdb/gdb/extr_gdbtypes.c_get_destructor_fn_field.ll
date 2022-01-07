; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_get_destructor_fn_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_get_destructor_fn_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.fn_field = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_destructor_fn_field(%struct.type* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fn_field*, align 8
  store %struct.type* %0, %struct.type** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.type*, %struct.type** %5, align 8
  %14 = call i32 @TYPE_NFN_FIELDS(%struct.type* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %11
  %17 = load %struct.type*, %struct.type** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %17, i32 %18)
  store %struct.fn_field* %19, %struct.fn_field** %10, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %38, %16
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.type*, %struct.type** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %22, i32 %23)
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.fn_field*, %struct.fn_field** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %27, i32 %28)
  %30 = call i64 @is_destructor_name(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  store i32 1, i32* %4, align 4
  br label %46

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %11

45:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local i64 @is_destructor_name(i32) #1

declare dso_local i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
