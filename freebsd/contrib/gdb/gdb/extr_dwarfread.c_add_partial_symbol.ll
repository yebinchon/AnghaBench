; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_add_partial_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_add_partial_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i32, i32, i32, i32 }
%struct.objfile = type { i32, i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_BLOCK = common dso_local global i32 0, align 4
@cu_language = common dso_local global i32 0, align 4
@LOC_STATIC = common dso_local global i32 0, align 4
@LOC_TYPEDEF = common dso_local global i32 0, align 4
@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@language_cplus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*, %struct.objfile*)* @add_partial_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_partial_symbol(%struct.dieinfo* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.dieinfo*, align 8
  %4 = alloca %struct.objfile*, align 8
  store %struct.dieinfo* %0, %struct.dieinfo** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %5 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %6 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %129 [
    i32 134, label %8
    i32 133, label %26
    i32 130, label %41
    i32 132, label %59
    i32 129, label %74
    i32 136, label %89
    i32 131, label %89
    i32 128, label %89
    i32 135, label %89
  ]

8:                                                ; preds = %2
  %9 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %10 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %13 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = load i32, i32* @VAR_DOMAIN, align 4
  %17 = load i32, i32* @LOC_BLOCK, align 4
  %18 = load %struct.objfile*, %struct.objfile** %4, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 1
  %20 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %21 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @cu_language, align 4
  %24 = load %struct.objfile*, %struct.objfile** %4, align 8
  %25 = call i32 @add_psymbol_to_list(i32 %11, i32 %15, i32 %16, i32 %17, i32* %19, i32 0, i32 %22, i32 %23, %struct.objfile* %24)
  br label %129

26:                                               ; preds = %2
  %27 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %28 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %31 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strlen(i32 %32)
  %34 = load i32, i32* @VAR_DOMAIN, align 4
  %35 = load i32, i32* @LOC_STATIC, align 4
  %36 = load %struct.objfile*, %struct.objfile** %4, align 8
  %37 = getelementptr inbounds %struct.objfile, %struct.objfile* %36, i32 0, i32 1
  %38 = load i32, i32* @cu_language, align 4
  %39 = load %struct.objfile*, %struct.objfile** %4, align 8
  %40 = call i32 @add_psymbol_to_list(i32 %29, i32 %33, i32 %34, i32 %35, i32* %37, i32 0, i32 0, i32 %38, %struct.objfile* %39)
  br label %129

41:                                               ; preds = %2
  %42 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %43 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %46 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strlen(i32 %47)
  %49 = load i32, i32* @VAR_DOMAIN, align 4
  %50 = load i32, i32* @LOC_BLOCK, align 4
  %51 = load %struct.objfile*, %struct.objfile** %4, align 8
  %52 = getelementptr inbounds %struct.objfile, %struct.objfile* %51, i32 0, i32 0
  %53 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %54 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @cu_language, align 4
  %57 = load %struct.objfile*, %struct.objfile** %4, align 8
  %58 = call i32 @add_psymbol_to_list(i32 %44, i32 %48, i32 %49, i32 %50, i32* %52, i32 0, i32 %55, i32 %56, %struct.objfile* %57)
  br label %129

59:                                               ; preds = %2
  %60 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %61 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %64 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strlen(i32 %65)
  %67 = load i32, i32* @VAR_DOMAIN, align 4
  %68 = load i32, i32* @LOC_STATIC, align 4
  %69 = load %struct.objfile*, %struct.objfile** %4, align 8
  %70 = getelementptr inbounds %struct.objfile, %struct.objfile* %69, i32 0, i32 0
  %71 = load i32, i32* @cu_language, align 4
  %72 = load %struct.objfile*, %struct.objfile** %4, align 8
  %73 = call i32 @add_psymbol_to_list(i32 %62, i32 %66, i32 %67, i32 %68, i32* %70, i32 0, i32 0, i32 %71, %struct.objfile* %72)
  br label %129

74:                                               ; preds = %2
  %75 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %76 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %79 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @strlen(i32 %80)
  %82 = load i32, i32* @VAR_DOMAIN, align 4
  %83 = load i32, i32* @LOC_TYPEDEF, align 4
  %84 = load %struct.objfile*, %struct.objfile** %4, align 8
  %85 = getelementptr inbounds %struct.objfile, %struct.objfile* %84, i32 0, i32 0
  %86 = load i32, i32* @cu_language, align 4
  %87 = load %struct.objfile*, %struct.objfile** %4, align 8
  %88 = call i32 @add_psymbol_to_list(i32 %77, i32 %81, i32 %82, i32 %83, i32* %85, i32 0, i32 0, i32 %86, %struct.objfile* %87)
  br label %129

89:                                               ; preds = %2, %2, %2, %2
  %90 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %91 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %129

95:                                               ; preds = %89
  %96 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %97 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %100 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strlen(i32 %101)
  %103 = load i32, i32* @STRUCT_DOMAIN, align 4
  %104 = load i32, i32* @LOC_TYPEDEF, align 4
  %105 = load %struct.objfile*, %struct.objfile** %4, align 8
  %106 = getelementptr inbounds %struct.objfile, %struct.objfile* %105, i32 0, i32 0
  %107 = load i32, i32* @cu_language, align 4
  %108 = load %struct.objfile*, %struct.objfile** %4, align 8
  %109 = call i32 @add_psymbol_to_list(i32 %98, i32 %102, i32 %103, i32 %104, i32* %106, i32 0, i32 0, i32 %107, %struct.objfile* %108)
  %110 = load i32, i32* @cu_language, align 4
  %111 = load i32, i32* @language_cplus, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %95
  %114 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %115 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %118 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strlen(i32 %119)
  %121 = load i32, i32* @VAR_DOMAIN, align 4
  %122 = load i32, i32* @LOC_TYPEDEF, align 4
  %123 = load %struct.objfile*, %struct.objfile** %4, align 8
  %124 = getelementptr inbounds %struct.objfile, %struct.objfile* %123, i32 0, i32 0
  %125 = load i32, i32* @cu_language, align 4
  %126 = load %struct.objfile*, %struct.objfile** %4, align 8
  %127 = call i32 @add_psymbol_to_list(i32 %116, i32 %120, i32 %121, i32 %122, i32* %124, i32 0, i32 0, i32 %125, %struct.objfile* %126)
  br label %128

128:                                              ; preds = %113, %95
  br label %129

129:                                              ; preds = %2, %128, %94, %74, %59, %41, %26, %8
  ret void
}

declare dso_local i32 @add_psymbol_to_list(i32, i32, i32, i32, i32*, i32, i32, i32, %struct.objfile*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
