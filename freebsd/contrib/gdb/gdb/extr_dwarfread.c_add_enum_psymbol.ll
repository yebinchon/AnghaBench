; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_add_enum_psymbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_add_enum_psymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i8*, i64 }
%struct.objfile = type { i32 }

@AT_short_element_list = common dso_local global i32 0, align 4
@AT_element_list = common dso_local global i32 0, align 4
@GET_UNSIGNED = common dso_local global i32 0, align 4
@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_CONST = common dso_local global i32 0, align 4
@cu_language = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*, %struct.objfile*)* @add_enum_psymbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_enum_psymbol(%struct.dieinfo* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.dieinfo*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.dieinfo* %0, %struct.dieinfo** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %9 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %10 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %66

14:                                               ; preds = %2
  %15 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %16 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @AT_short_element_list, align 4
  %21 = call i32 @attribute_size(i32 %20)
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @AT_element_list, align 4
  %24 = call i32 @attribute_size(i32 %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GET_UNSIGNED, align 4
  %29 = load %struct.objfile*, %struct.objfile** %4, align 8
  %30 = call zeroext i16 @target_to_host(i8* %26, i32 %27, i32 %28, %struct.objfile* %29)
  store i16 %30, i16* %7, align 2
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %44, %25
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load %struct.objfile*, %struct.objfile** %4, align 8
  %46 = call i32 @TARGET_FT_LONG_SIZE(%struct.objfile* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = load i32, i32* @VAR_DOMAIN, align 4
  %54 = load i32, i32* @LOC_CONST, align 4
  %55 = load %struct.objfile*, %struct.objfile** %4, align 8
  %56 = getelementptr inbounds %struct.objfile, %struct.objfile* %55, i32 0, i32 0
  %57 = load i32, i32* @cu_language, align 4
  %58 = load %struct.objfile*, %struct.objfile** %4, align 8
  %59 = call i32 @add_psymbol_to_list(i8* %50, i64 %52, i32 %53, i32 %54, i32* %56, i32 0, i32 0, i32 %57, %struct.objfile* %58)
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = add nsw i64 %61, 1
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %5, align 8
  br label %40

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65, %2
  ret void
}

declare dso_local i32 @attribute_size(i32) #1

declare dso_local zeroext i16 @target_to_host(i8*, i32, i32, %struct.objfile*) #1

declare dso_local i32 @TARGET_FT_LONG_SIZE(%struct.objfile*) #1

declare dso_local i32 @add_psymbol_to_list(i8*, i64, i32, i32, i32*, i32, i32, i32, %struct.objfile*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
