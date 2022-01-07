; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_which_variant_applies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_which_variant_applies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_which_variant_applies(%struct.type* %0, %struct.type* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i8* @ada_variant_discrim_name(%struct.type* %14)
  store i8* %15, i8** %12, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call %struct.type* @ada_lookup_struct_elt_type(%struct.type* %16, i8* %17, i32 1, i32* %10)
  store %struct.type* %18, %struct.type** %11, align 8
  %19 = load %struct.type*, %struct.type** %11, align 8
  %20 = icmp eq %struct.type* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load %struct.type*, %struct.type** %11, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call i32 @unpack_long(%struct.type* %23, i8* %27)
  store i32 %28, i32* %13, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %51, %22
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.type*, %struct.type** %5, align 8
  %32 = call i32 @TYPE_NFIELDS(%struct.type* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.type*, %struct.type** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @ada_is_others_clause(%struct.type* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %8, align 4
  br label %50

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.type*, %struct.type** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @ada_in_variant(i32 %42, %struct.type* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %29

54:                                               ; preds = %29
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %47, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @ada_variant_discrim_name(%struct.type*) #1

declare dso_local %struct.type* @ada_lookup_struct_elt_type(%struct.type*, i8*, i32, i32*) #1

declare dso_local i32 @unpack_long(%struct.type*, i8*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @ada_is_others_clause(%struct.type*, i32) #1

declare dso_local i64 @ada_in_variant(i32, %struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
