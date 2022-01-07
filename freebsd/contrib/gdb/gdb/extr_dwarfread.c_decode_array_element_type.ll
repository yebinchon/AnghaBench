; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_array_element_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_array_element_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@SIZEOF_ATTRIBUTE = common dso_local global i32 0, align 4
@GET_UNSIGNED = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@FT_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8*)* @decode_array_element_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @decode_array_element_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @SIZEOF_ATTRIBUTE, align 4
  %10 = load i32, i32* @GET_UNSIGNED, align 4
  %11 = load i32, i32* @current_objfile, align 4
  %12 = call i8* @target_to_host(i8* %8, i32 %9, i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i16
  store i16 %13, i16* %5, align 2
  %14 = load i32, i32* @SIZEOF_ATTRIBUTE, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %2, align 8
  %18 = load i16, i16* %5, align 2
  %19 = call i32 @attribute_size(i16 zeroext %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @DIE_ID, align 4
  %24 = load i32, i32* @DIE_NAME, align 4
  %25 = load i16, i16* %5, align 2
  %26 = call i32 @bad_array_element_type_complaint(i32 %23, i32 %24, i16 zeroext %25)
  %27 = load i32, i32* @current_objfile, align 4
  %28 = load i32, i32* @FT_INTEGER, align 4
  %29 = call %struct.type* @dwarf_fundamental_type(i32 %27, i32 %28)
  store %struct.type* %29, %struct.type** %3, align 8
  br label %71

30:                                               ; preds = %1
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  switch i32 %32, label %62 [
    i32 131, label %33
    i32 130, label %42
    i32 128, label %45
    i32 129, label %59
  ]

33:                                               ; preds = %30
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GET_UNSIGNED, align 4
  %37 = load i32, i32* @current_objfile, align 4
  %38 = call i8* @target_to_host(i8* %34, i32 %35, i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i16
  store i16 %39, i16* %6, align 2
  %40 = load i16, i16* %6, align 2
  %41 = call %struct.type* @decode_fund_type(i16 zeroext %40)
  store %struct.type* %41, %struct.type** %3, align 8
  br label %70

42:                                               ; preds = %30
  %43 = load i8*, i8** %2, align 8
  %44 = call %struct.type* @decode_mod_fund_type(i8* %43)
  store %struct.type* %44, %struct.type** %3, align 8
  br label %70

45:                                               ; preds = %30
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @GET_UNSIGNED, align 4
  %49 = load i32, i32* @current_objfile, align 4
  %50 = call i8* @target_to_host(i8* %46, i32 %47, i32 %48, i32 %49)
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call %struct.type* @lookup_utype(i8* %51)
  store %struct.type* %52, %struct.type** %3, align 8
  %53 = load %struct.type*, %struct.type** %3, align 8
  %54 = icmp eq %struct.type* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i8*, i8** %4, align 8
  %57 = call %struct.type* @alloc_utype(i8* %56, i32* null)
  store %struct.type* %57, %struct.type** %3, align 8
  br label %58

58:                                               ; preds = %55, %45
  br label %70

59:                                               ; preds = %30
  %60 = load i8*, i8** %2, align 8
  %61 = call %struct.type* @decode_mod_u_d_type(i8* %60)
  store %struct.type* %61, %struct.type** %3, align 8
  br label %70

62:                                               ; preds = %30
  %63 = load i32, i32* @DIE_ID, align 4
  %64 = load i32, i32* @DIE_NAME, align 4
  %65 = load i16, i16* %5, align 2
  %66 = call i32 @bad_array_element_type_complaint(i32 %63, i32 %64, i16 zeroext %65)
  %67 = load i32, i32* @current_objfile, align 4
  %68 = load i32, i32* @FT_INTEGER, align 4
  %69 = call %struct.type* @dwarf_fundamental_type(i32 %67, i32 %68)
  store %struct.type* %69, %struct.type** %3, align 8
  br label %70

70:                                               ; preds = %62, %59, %58, %42, %33
  br label %71

71:                                               ; preds = %70, %22
  %72 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %72
}

declare dso_local i8* @target_to_host(i8*, i32, i32, i32) #1

declare dso_local i32 @attribute_size(i16 zeroext) #1

declare dso_local i32 @bad_array_element_type_complaint(i32, i32, i16 zeroext) #1

declare dso_local %struct.type* @dwarf_fundamental_type(i32, i32) #1

declare dso_local %struct.type* @decode_fund_type(i16 zeroext) #1

declare dso_local %struct.type* @decode_mod_fund_type(i8*) #1

declare dso_local %struct.type* @lookup_utype(i8*) #1

declare dso_local %struct.type* @alloc_utype(i8*, i32*) #1

declare dso_local %struct.type* @decode_mod_u_d_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
