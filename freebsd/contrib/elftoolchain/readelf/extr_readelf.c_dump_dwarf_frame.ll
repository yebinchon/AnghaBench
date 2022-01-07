; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section*, i32 }
%struct.section = type { i32* }

@DW_FRAME_CFA_COL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c".debug_frame\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32)* @dump_dwarf_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_frame(%struct.readelf* %0, i32 %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.section*, align 8
  %6 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.readelf*, %struct.readelf** %3, align 8
  %8 = getelementptr inbounds %struct.readelf, %struct.readelf* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DW_FRAME_CFA_COL, align 4
  %11 = call i32 @dwarf_set_frame_cfa_value(i32 %9, i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %48, %2
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.readelf*, %struct.readelf** %3, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %12
  %20 = load %struct.readelf*, %struct.readelf** %3, align 8
  %21 = getelementptr inbounds %struct.readelf, %struct.readelf* %20, i32 0, i32 1
  %22 = load %struct.section*, %struct.section** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.section, %struct.section* %22, i64 %24
  store %struct.section* %25, %struct.section** %5, align 8
  %26 = load %struct.section*, %struct.section** %5, align 8
  %27 = getelementptr inbounds %struct.section, %struct.section* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %19
  %31 = load %struct.section*, %struct.section** %5, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @strcmp(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.section*, %struct.section** %5, align 8
  %38 = getelementptr inbounds %struct.section, %struct.section* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @strcmp(i32* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.readelf*, %struct.readelf** %3, align 8
  %44 = load %struct.section*, %struct.section** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dump_dwarf_frame_section(%struct.readelf* %43, %struct.section* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %36, %19
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %12

51:                                               ; preds = %12
  ret void
}

declare dso_local i32 @dwarf_set_frame_cfa_value(i32, i32) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @dump_dwarf_frame_section(%struct.readelf*, %struct.section*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
