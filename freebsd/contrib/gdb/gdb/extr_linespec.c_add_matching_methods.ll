; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_add_matching_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_add_matching_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.fn_field = type { i32 }
%struct.symtab = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.type*, %struct.symbol**)* @add_matching_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_matching_methods(i32 %0, %struct.type* %1, %struct.symbol** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.symbol**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fn_field*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.type* %1, %struct.type** %5, align 8
  store %struct.symbol** %2, %struct.symbol*** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %12, i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %69, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %16
  %20 = load %struct.type*, %struct.type** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %20, i32 %21)
  store %struct.fn_field* %22, %struct.fn_field** %9, align 8
  %23 = load %struct.fn_field*, %struct.fn_field** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @TYPE_FN_FIELD_STUB(%struct.fn_field* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %19
  %28 = load %struct.type*, %struct.type** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @gdb_mangle_name(%struct.type* %28, i32 %29, i32 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = call i8* @alloca(i64 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @strcpy(i8* %36, i8* %37)
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @xfree(i8* %39)
  br label %45

41:                                               ; preds = %19
  %42 = load %struct.fn_field*, %struct.fn_field** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %42, i32 %43)
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %41, %27
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @is_destructor_name(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %69

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @VAR_DOMAIN, align 4
  %53 = call %struct.symbol* @lookup_symbol(i8* %51, i32* null, i32 %52, i32* null, %struct.symtab** null)
  %54 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.symbol*, %struct.symbol** %54, i64 %56
  store %struct.symbol* %53, %struct.symbol** %57, align 8
  %58 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.symbol*, %struct.symbol** %58, i64 %60
  %62 = load %struct.symbol*, %struct.symbol** %61, align 8
  %63 = icmp ne %struct.symbol* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %68

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %64
  br label %69

69:                                               ; preds = %68, %49
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FN_FIELD_STUB(%struct.fn_field*, i32) #1

declare dso_local i8* @gdb_mangle_name(%struct.type*, i32, i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local i64 @is_destructor_name(i8*) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32*, i32, i32*, %struct.symtab**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
