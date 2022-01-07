; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_dwarf2_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_seg = type { %struct.line_seg*, %struct.line_subseg* }
%struct.line_subseg = type { %struct.line_entry**, %struct.line_entry*, %struct.line_subseg* }
%struct.line_entry = type { i32 }

@stdoutput = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@all_segs = common dso_local global %struct.line_seg* null, align 8
@sizeof_address = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c".debug_line\00", align 1
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c".debug_abbrev\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c".debug_aranges\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c".debug_ranges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarf2_finish() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.line_seg*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.line_subseg*, align 8
  %6 = alloca %struct.line_entry**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @stdoutput, align 4
  %11 = call i32* @bfd_get_section_by_name(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %0
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @seg_not_empty_p(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %0
  %20 = phi i1 [ true, %0 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.line_seg*, %struct.line_seg** @all_segs, align 8
  %23 = icmp ne %struct.line_seg* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %134

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @stdoutput, align 4
  %30 = call i32 @DWARF2_ADDR_SIZE(i32 %29)
  store i32 %30, i32* @sizeof_address, align 4
  %31 = call i32* @subseg_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32* %31, i32** %1, align 8
  %32 = load i32, i32* @stdoutput, align 4
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @SEC_READONLY, align 4
  %35 = load i32, i32* @SEC_DEBUGGING, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @bfd_set_section_flags(i32 %32, i32* %33, i32 %36)
  %38 = load %struct.line_seg*, %struct.line_seg** @all_segs, align 8
  store %struct.line_seg* %38, %struct.line_seg** %2, align 8
  br label %39

39:                                               ; preds = %63, %28
  %40 = load %struct.line_seg*, %struct.line_seg** %2, align 8
  %41 = icmp ne %struct.line_seg* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.line_seg*, %struct.line_seg** %2, align 8
  %44 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %43, i32 0, i32 1
  %45 = load %struct.line_subseg*, %struct.line_subseg** %44, align 8
  store %struct.line_subseg* %45, %struct.line_subseg** %5, align 8
  %46 = load %struct.line_subseg*, %struct.line_subseg** %5, align 8
  %47 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %46, i32 0, i32 0
  %48 = load %struct.line_entry**, %struct.line_entry*** %47, align 8
  store %struct.line_entry** %48, %struct.line_entry*** %6, align 8
  br label %49

49:                                               ; preds = %54, %42
  %50 = load %struct.line_subseg*, %struct.line_subseg** %5, align 8
  %51 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %50, i32 0, i32 2
  %52 = load %struct.line_subseg*, %struct.line_subseg** %51, align 8
  store %struct.line_subseg* %52, %struct.line_subseg** %5, align 8
  %53 = icmp ne %struct.line_subseg* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.line_subseg*, %struct.line_subseg** %5, align 8
  %56 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %55, i32 0, i32 1
  %57 = load %struct.line_entry*, %struct.line_entry** %56, align 8
  %58 = load %struct.line_entry**, %struct.line_entry*** %6, align 8
  store %struct.line_entry* %57, %struct.line_entry** %58, align 8
  %59 = load %struct.line_subseg*, %struct.line_subseg** %5, align 8
  %60 = getelementptr inbounds %struct.line_subseg, %struct.line_subseg* %59, i32 0, i32 0
  %61 = load %struct.line_entry**, %struct.line_entry*** %60, align 8
  store %struct.line_entry** %61, %struct.line_entry*** %6, align 8
  br label %49

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.line_seg*, %struct.line_seg** %2, align 8
  %65 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %64, i32 0, i32 0
  %66 = load %struct.line_seg*, %struct.line_seg** %65, align 8
  store %struct.line_seg* %66, %struct.line_seg** %2, align 8
  br label %39

67:                                               ; preds = %39
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @out_debug_line(i32* %68)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %67
  %73 = load %struct.line_seg*, %struct.line_seg** @all_segs, align 8
  %74 = call i32 @assert(%struct.line_seg* %73)
  %75 = call i32* @subseg_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %75, i32** %3, align 8
  %76 = call i32* @subseg_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32* %76, i32** %7, align 8
  %77 = call i32* @subseg_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32* %77, i32** %8, align 8
  %78 = load i32, i32* @stdoutput, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @SEC_READONLY, align 4
  %81 = load i32, i32* @SEC_DEBUGGING, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @bfd_set_section_flags(i32 %78, i32* %79, i32 %82)
  %84 = load i32, i32* @stdoutput, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @SEC_READONLY, align 4
  %87 = load i32, i32* @SEC_DEBUGGING, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @bfd_set_section_flags(i32 %84, i32* %85, i32 %88)
  %90 = load i32, i32* @stdoutput, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* @SEC_READONLY, align 4
  %93 = load i32, i32* @SEC_DEBUGGING, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @bfd_set_section_flags(i32 %90, i32* %91, i32 %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* @sizeof_address, align 4
  %98 = mul nsw i32 2, %97
  %99 = call i64 @ffs(i32 %98)
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @record_alignment(i32* %96, i64 %100)
  %102 = load %struct.line_seg*, %struct.line_seg** @all_segs, align 8
  %103 = getelementptr inbounds %struct.line_seg, %struct.line_seg* %102, i32 0, i32 0
  %104 = load %struct.line_seg*, %struct.line_seg** %103, align 8
  %105 = icmp eq %struct.line_seg* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %72
  store i32* null, i32** %9, align 8
  br label %123

107:                                              ; preds = %72
  %108 = call i32* @subseg_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32* %108, i32** %9, align 8
  %109 = load i32, i32* @stdoutput, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* @SEC_READONLY, align 4
  %112 = load i32, i32* @SEC_DEBUGGING, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @bfd_set_section_flags(i32 %109, i32* %110, i32 %113)
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* @sizeof_address, align 4
  %117 = mul nsw i32 2, %116
  %118 = call i64 @ffs(i32 %117)
  %119 = sub nsw i64 %118, 1
  %120 = call i32 @record_alignment(i32* %115, i64 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @out_debug_ranges(i32* %121)
  br label %123

123:                                              ; preds = %107, %106
  %124 = load i32*, i32** %8, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @out_debug_aranges(i32* %124, i32* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @out_debug_abbrev(i32* %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32*, i32** %1, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @out_debug_info(i32* %129, i32* %130, i32* %131, i32* %132)
  br label %134

134:                                              ; preds = %27, %123, %67
  ret void
}

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @seg_not_empty_p(i32*) #1

declare dso_local i32 @DWARF2_ADDR_SIZE(i32) #1

declare dso_local i32* @subseg_new(i8*, i32) #1

declare dso_local i32 @bfd_set_section_flags(i32, i32*, i32) #1

declare dso_local i32 @out_debug_line(i32*) #1

declare dso_local i32 @assert(%struct.line_seg*) #1

declare dso_local i32 @record_alignment(i32*, i64) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @out_debug_ranges(i32*) #1

declare dso_local i32 @out_debug_aranges(i32*, i32*) #1

declare dso_local i32 @out_debug_abbrev(i32*) #1

declare dso_local i32 @out_debug_info(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
