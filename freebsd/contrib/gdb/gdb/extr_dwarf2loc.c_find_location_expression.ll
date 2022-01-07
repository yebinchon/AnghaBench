; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_find_location_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_find_location_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_loclist_baton = type { i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TARGET_ADDR_BIT = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dwarf2_loclist_baton*, i64*, i32)* @find_location_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_location_expression(%struct.dwarf2_loclist_baton* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwarf2_loclist_baton*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dwarf2_loclist_baton* %0, %struct.dwarf2_loclist_baton** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @TARGET_ADDR_BIT, align 4
  %18 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = mul i32 %20, 8
  %22 = sub i32 %21, 1
  %23 = shl i32 -2, %22
  %24 = xor i32 %23, -1
  store i32 %24, i32* %14, align 4
  %25 = load %struct.dwarf2_loclist_baton*, %struct.dwarf2_loclist_baton** %5, align 8
  %26 = getelementptr inbounds %struct.dwarf2_loclist_baton, %struct.dwarf2_loclist_baton* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dwarf2_loclist_baton*, %struct.dwarf2_loclist_baton** %5, align 8
  %31 = getelementptr inbounds %struct.dwarf2_loclist_baton, %struct.dwarf2_loclist_baton* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @SECT_OFF_TEXT(%struct.TYPE_2__* %32)
  %34 = call i32 @ANOFFSET(i32 %29, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.dwarf2_loclist_baton*, %struct.dwarf2_loclist_baton** %5, align 8
  %36 = getelementptr inbounds %struct.dwarf2_loclist_baton, %struct.dwarf2_loclist_baton* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = add i32 %37, %38
  store i32 %39, i32* %16, align 4
  %40 = load %struct.dwarf2_loclist_baton*, %struct.dwarf2_loclist_baton** %5, align 8
  %41 = getelementptr inbounds %struct.dwarf2_loclist_baton, %struct.dwarf2_loclist_baton* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %10, align 8
  %43 = load %struct.dwarf2_loclist_baton*, %struct.dwarf2_loclist_baton** %5, align 8
  %44 = getelementptr inbounds %struct.dwarf2_loclist_baton, %struct.dwarf2_loclist_baton* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.dwarf2_loclist_baton*, %struct.dwarf2_loclist_baton** %5, align 8
  %47 = getelementptr inbounds %struct.dwarf2_loclist_baton, %struct.dwarf2_loclist_baton* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8* %50, i8** %11, align 8
  br label %51

51:                                               ; preds = %3, %78, %103
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @dwarf2_read_address(i8* %52, i8* %53, i32* %13)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @dwarf2_read_address(i8* %59, i8* %60, i32* %13)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %51
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i8* null, i8** %4, align 8
  br label %108

72:                                               ; preds = %68, %51
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %16, align 4
  br label %51

80:                                               ; preds = %72
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @extract_unsigned_integer(i8* %87, i32 2)
  store i32 %88, i32* %13, align 4
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8* %90, i8** %10, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %80
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = zext i32 %99 to i64
  %101 = load i64*, i64** %6, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i8*, i8** %10, align 8
  store i8* %102, i8** %4, align 8
  br label %108

103:                                              ; preds = %94, %80
  %104 = load i32, i32* %13, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %10, align 8
  br label %51

108:                                              ; preds = %98, %71
  %109 = load i8*, i8** %4, align 8
  ret i8* %109
}

declare dso_local i32 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.TYPE_2__*) #1

declare dso_local i32 @dwarf2_read_address(i8*, i8*, i32*) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
