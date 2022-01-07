; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32, i32, i32 }

@DW_DLC_READ = common dso_local global i32 0, align 4
@DW_DLE_DEBUG_INFO_NULL = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dwarf_elf_init failed: %s\00", align 1
@DW_A = common dso_local global i32 0, align 4
@DW_L = common dso_local global i32 0, align 4
@DW_LL = common dso_local global i32 0, align 4
@DW_I = common dso_local global i32 0, align 4
@DW_P = common dso_local global i32 0, align 4
@DW_R = common dso_local global i32 0, align 4
@DW_RR = common dso_local global i32 0, align 4
@DW_M = common dso_local global i32 0, align 4
@DW_F = common dso_local global i32 0, align 4
@DW_FF = common dso_local global i32 0, align 4
@DW_S = common dso_local global i32 0, align 4
@DW_O = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_dwarf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %5 = load %struct.readelf*, %struct.readelf** %2, align 8
  %6 = getelementptr inbounds %struct.readelf, %struct.readelf* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DW_DLC_READ, align 4
  %9 = load %struct.readelf*, %struct.readelf** %2, align 8
  %10 = getelementptr inbounds %struct.readelf, %struct.readelf* %9, i32 0, i32 1
  %11 = call i64 @dwarf_elf_init(i32 %7, i32 %8, i32* null, i32* null, i32* %10, i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @dwarf_errno(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @DW_DLE_DEBUG_INFO_NULL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dwarf_errmsg(i32 %20)
  %22 = call i32 @errx(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  br label %152

24:                                               ; preds = %1
  %25 = load %struct.readelf*, %struct.readelf** %2, align 8
  %26 = getelementptr inbounds %struct.readelf, %struct.readelf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DW_A, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.readelf*, %struct.readelf** %2, align 8
  %33 = call i32 @dump_dwarf_abbrev(%struct.readelf* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.readelf*, %struct.readelf** %2, align 8
  %36 = getelementptr inbounds %struct.readelf, %struct.readelf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DW_L, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.readelf*, %struct.readelf** %2, align 8
  %43 = call i32 @dump_dwarf_line(%struct.readelf* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.readelf*, %struct.readelf** %2, align 8
  %46 = getelementptr inbounds %struct.readelf, %struct.readelf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DW_LL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.readelf*, %struct.readelf** %2, align 8
  %53 = call i32 @dump_dwarf_line_decoded(%struct.readelf* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.readelf*, %struct.readelf** %2, align 8
  %56 = getelementptr inbounds %struct.readelf, %struct.readelf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DW_I, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.readelf*, %struct.readelf** %2, align 8
  %63 = call i32 @dump_dwarf_info(%struct.readelf* %62, i32 0)
  %64 = load %struct.readelf*, %struct.readelf** %2, align 8
  %65 = call i32 @dump_dwarf_info(%struct.readelf* %64, i32 1)
  br label %66

66:                                               ; preds = %61, %54
  %67 = load %struct.readelf*, %struct.readelf** %2, align 8
  %68 = getelementptr inbounds %struct.readelf, %struct.readelf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DW_P, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.readelf*, %struct.readelf** %2, align 8
  %75 = call i32 @dump_dwarf_pubnames(%struct.readelf* %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.readelf*, %struct.readelf** %2, align 8
  %78 = getelementptr inbounds %struct.readelf, %struct.readelf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DW_R, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.readelf*, %struct.readelf** %2, align 8
  %85 = call i32 @dump_dwarf_aranges(%struct.readelf* %84)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.readelf*, %struct.readelf** %2, align 8
  %88 = getelementptr inbounds %struct.readelf, %struct.readelf* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DW_RR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.readelf*, %struct.readelf** %2, align 8
  %95 = call i32 @dump_dwarf_ranges(%struct.readelf* %94)
  br label %96

96:                                               ; preds = %93, %86
  %97 = load %struct.readelf*, %struct.readelf** %2, align 8
  %98 = getelementptr inbounds %struct.readelf, %struct.readelf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DW_M, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.readelf*, %struct.readelf** %2, align 8
  %105 = call i32 @dump_dwarf_macinfo(%struct.readelf* %104)
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.readelf*, %struct.readelf** %2, align 8
  %108 = getelementptr inbounds %struct.readelf, %struct.readelf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DW_F, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.readelf*, %struct.readelf** %2, align 8
  %115 = call i32 @dump_dwarf_frame(%struct.readelf* %114, i32 0)
  br label %127

116:                                              ; preds = %106
  %117 = load %struct.readelf*, %struct.readelf** %2, align 8
  %118 = getelementptr inbounds %struct.readelf, %struct.readelf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DW_FF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.readelf*, %struct.readelf** %2, align 8
  %125 = call i32 @dump_dwarf_frame(%struct.readelf* %124, i32 1)
  br label %126

126:                                              ; preds = %123, %116
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.readelf*, %struct.readelf** %2, align 8
  %129 = getelementptr inbounds %struct.readelf, %struct.readelf* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DW_S, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.readelf*, %struct.readelf** %2, align 8
  %136 = call i32 @dump_dwarf_str(%struct.readelf* %135)
  br label %137

137:                                              ; preds = %134, %127
  %138 = load %struct.readelf*, %struct.readelf** %2, align 8
  %139 = getelementptr inbounds %struct.readelf, %struct.readelf* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DW_O, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load %struct.readelf*, %struct.readelf** %2, align 8
  %146 = call i32 @dump_dwarf_loclist(%struct.readelf* %145)
  br label %147

147:                                              ; preds = %144, %137
  %148 = load %struct.readelf*, %struct.readelf** %2, align 8
  %149 = getelementptr inbounds %struct.readelf, %struct.readelf* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dwarf_finish(i32 %150, i32* %3)
  br label %152

152:                                              ; preds = %147, %23
  ret void
}

declare dso_local i64 @dwarf_elf_init(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_errno(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dump_dwarf_abbrev(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf_line(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf_line_decoded(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf_info(%struct.readelf*, i32) #1

declare dso_local i32 @dump_dwarf_pubnames(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf_aranges(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf_ranges(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf_macinfo(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf_frame(%struct.readelf*, i32) #1

declare dso_local i32 @dump_dwarf_str(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf_loclist(%struct.readelf*) #1

declare dso_local i32 @dwarf_finish(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
