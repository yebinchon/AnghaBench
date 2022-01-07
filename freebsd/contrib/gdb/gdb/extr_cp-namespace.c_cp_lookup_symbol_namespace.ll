; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_lookup_symbol_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_lookup_symbol_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }
%struct.using_direct = type { i8*, i32, %struct.using_direct* }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @cp_lookup_symbol_namespace(i8* %0, i8* %1, i8* %2, %struct.block* %3, i32 %4, %struct.symtab** %5) #0 {
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.symtab**, align 8
  %14 = alloca %struct.using_direct*, align 8
  %15 = alloca %struct.symbol*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.block* %3, %struct.block** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.symtab** %5, %struct.symtab*** %13, align 8
  %17 = load %struct.block*, %struct.block** %11, align 8
  %18 = call %struct.using_direct* @block_using(%struct.block* %17)
  store %struct.using_direct* %18, %struct.using_direct** %14, align 8
  br label %19

19:                                               ; preds = %45, %6
  %20 = load %struct.using_direct*, %struct.using_direct** %14, align 8
  %21 = icmp ne %struct.using_direct* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.using_direct*, %struct.using_direct** %14, align 8
  %25 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @strcmp(i8* %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.using_direct*, %struct.using_direct** %14, align 8
  %31 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.block*, %struct.block** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %38 = call %struct.symbol* @cp_lookup_symbol_namespace(i8* %32, i8* %33, i8* %34, %struct.block* %35, i32 %36, %struct.symtab** %37)
  store %struct.symbol* %38, %struct.symbol** %15, align 8
  %39 = load %struct.symbol*, %struct.symbol** %15, align 8
  %40 = icmp ne %struct.symbol* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load %struct.symbol*, %struct.symbol** %15, align 8
  store %struct.symbol* %42, %struct.symbol** %7, align 8
  br label %88

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.using_direct*, %struct.using_direct** %14, align 8
  %47 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %46, i32 0, i32 2
  %48 = load %struct.using_direct*, %struct.using_direct** %47, align 8
  store %struct.using_direct* %48, %struct.using_direct** %14, align 8
  br label %19

49:                                               ; preds = %19
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.block*, %struct.block** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %61 = call %struct.symbol* @lookup_symbol_file(i8* %56, i8* %57, %struct.block* %58, i32 %59, %struct.symtab** %60, i32 0)
  store %struct.symbol* %61, %struct.symbol** %7, align 8
  br label %88

62:                                               ; preds = %49
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 %64, 2
  %66 = load i8*, i8** %9, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = add nsw i64 %65, %67
  %69 = add nsw i64 %68, 1
  %70 = call i8* @alloca(i64 %69)
  store i8* %70, i8** %16, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strcpy(i8* %71, i8* %72)
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @strcat(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %76 = load i8*, i8** %16, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strcat(i8* %76, i8* %77)
  %79 = load i8*, i8** %16, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load %struct.block*, %struct.block** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.symtab**, %struct.symtab*** %13, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @cp_is_anonymous(i8* %84)
  %86 = call %struct.symbol* @lookup_symbol_file(i8* %79, i8* %80, %struct.block* %81, i32 %82, %struct.symtab** %83, i32 %85)
  store %struct.symbol* %86, %struct.symbol** %15, align 8
  %87 = load %struct.symbol*, %struct.symbol** %15, align 8
  store %struct.symbol* %87, %struct.symbol** %7, align 8
  br label %88

88:                                               ; preds = %62, %55, %41
  %89 = load %struct.symbol*, %struct.symbol** %7, align 8
  ret %struct.symbol* %89
}

declare dso_local %struct.using_direct* @block_using(%struct.block*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.symbol* @lookup_symbol_file(i8*, i8*, %struct.block*, i32, %struct.symtab**, i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @cp_is_anonymous(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
