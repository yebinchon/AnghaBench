; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_add_constructors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_add_constructors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.fn_field = type { i32 }
%struct.symtab = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.type*, %struct.symbol**)* @add_constructors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_constructors(i32 %0, %struct.type* %1, %struct.symbol** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.symbol**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fn_field*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.type* %1, %struct.type** %5, align 8
  store %struct.symbol** %2, %struct.symbol*** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.type*, %struct.type** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %11, i32 %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %15
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %19, i32 %20)
  store %struct.fn_field* %21, %struct.fn_field** %9, align 8
  %22 = load %struct.fn_field*, %struct.fn_field** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @TYPE_FN_FIELD_STUB(%struct.fn_field* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %53

27:                                               ; preds = %18
  %28 = load %struct.fn_field*, %struct.fn_field** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %28, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @is_constructor_name(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %53

35:                                               ; preds = %27
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* @VAR_DOMAIN, align 4
  %38 = call %struct.symbol* @lookup_symbol(i8* %36, i32* null, i32 %37, i32* null, %struct.symtab** null)
  %39 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.symbol*, %struct.symbol** %39, i64 %41
  store %struct.symbol* %38, %struct.symbol** %42, align 8
  %43 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.symbol*, %struct.symbol** %43, i64 %45
  %47 = load %struct.symbol*, %struct.symbol** %46, align 8
  %48 = icmp ne %struct.symbol* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %35
  br label %53

53:                                               ; preds = %52, %34, %26
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FN_FIELD_STUB(%struct.fn_field*, i32) #1

declare dso_local i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local i32 @is_constructor_name(i8*) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32*, i32, i32*, %struct.symtab**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
