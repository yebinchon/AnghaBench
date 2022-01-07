; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_collect_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_collect_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.fn_field = type { i32 }
%struct.symtab = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.type*, %struct.symbol**)* @collect_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_methods(i8* %0, %struct.type* %1, %struct.symbol** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.symbol**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fn_field*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  store %struct.symbol** %2, %struct.symbol*** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = call i64 @destructor_name_p(i8* %11, %struct.type* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load %struct.type*, %struct.type** %5, align 8
  %17 = call i64 @get_destructor_fn_field(%struct.type* %16, i32* %8, i32* %9)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.type*, %struct.type** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %20, i32 %21)
  store %struct.fn_field* %22, %struct.fn_field** %10, align 8
  %23 = load %struct.fn_field*, %struct.fn_field** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %23, i32 %24)
  %26 = load i32, i32* @VAR_DOMAIN, align 4
  %27 = call %struct.symbol* @lookup_symbol(i32 %25, i32* null, i32 %26, i32* null, %struct.symtab** null)
  %28 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.symbol*, %struct.symbol** %28, i64 %30
  store %struct.symbol* %27, %struct.symbol** %31, align 8
  %32 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.symbol*, %struct.symbol** %32, i64 %34
  %36 = load %struct.symbol*, %struct.symbol** %35, align 8
  %37 = icmp ne %struct.symbol* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %19
  br label %42

42:                                               ; preds = %41, %15
  br label %48

43:                                               ; preds = %3
  %44 = load %struct.type*, %struct.type** %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %47 = call i32 @find_methods(%struct.type* %44, i8* %45, %struct.symbol** %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i64 @destructor_name_p(i8*, %struct.type*) #1

declare dso_local i64 @get_destructor_fn_field(%struct.type*, i32*, i32*) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local %struct.symbol* @lookup_symbol(i32, i32*, i32, i32*, %struct.symtab**) #1

declare dso_local i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local i32 @find_methods(%struct.type*, i8*, %struct.symbol**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
