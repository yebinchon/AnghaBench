; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_do_local_cprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_do_local_cprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.elt_loc_list* }
%struct.elt_loc_list = type { i64, i32, i64, %struct.elt_loc_list* }

@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@REG_EQUIV = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@dump_file = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"LOCAL CONST-PROP: Replacing reg %d in \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"insn %d with constant \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@local_const_prop_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"LOCAL COPY-PROP: Replacing reg %d in insn %d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" with reg %d\0A\00", align 1
@local_copy_prop_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i64*)* @do_local_cprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_local_cprop(i64 %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.elt_loc_list*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @REG_P(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %175

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @REGNO(i64 %21)
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @PATTERN(i64 %27)
  %29 = call i64 @GET_CODE(i32 %28)
  %30 = load i64, i64* @USE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %175

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @PATTERN(i64 %33)
  %35 = call i64 @asm_noperands(i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %175

37:                                               ; preds = %32, %20
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @GET_MODE(i64 %39)
  %41 = call %struct.TYPE_3__* @cselib_lookup(i64 %38, i32 %40, i32 0)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %12, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %176

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.elt_loc_list*, %struct.elt_loc_list** %47, align 8
  store %struct.elt_loc_list* %48, %struct.elt_loc_list** %13, align 8
  br label %49

49:                                               ; preds = %97, %45
  %50 = load %struct.elt_loc_list*, %struct.elt_loc_list** %13, align 8
  %51 = icmp ne %struct.elt_loc_list* %50, null
  br i1 %51, label %52, label %101

52:                                               ; preds = %49
  %53 = load %struct.elt_loc_list*, %struct.elt_loc_list** %13, align 8
  %54 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %14, align 8
  %56 = load %struct.elt_loc_list*, %struct.elt_loc_list** %13, align 8
  %57 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @CONSTANT_P(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %97

65:                                               ; preds = %60, %52
  %66 = load i64, i64* %14, align 8
  %67 = call i64 @gcse_constant_p(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* %14, align 8
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i64, i64* %14, align 8
  %73 = call i64 @REG_P(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @REGNO(i64 %76)
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.elt_loc_list*, %struct.elt_loc_list** %13, align 8
  %83 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @REG_EQUIV, align 4
  %86 = load i32, i32* @NULL_RTX, align 4
  %87 = call i64 @find_reg_note(i32 %84, i32 %85, i32 %86)
  store i64 %87, i64* %15, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @XEXP(i64 %90, i32 0)
  %92 = call i32 @MEM_P(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89, %81
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %94, %89, %75, %71
  br label %97

97:                                               ; preds = %96, %64
  %98 = load %struct.elt_loc_list*, %struct.elt_loc_list** %13, align 8
  %99 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %98, i32 0, i32 3
  %100 = load %struct.elt_loc_list*, %struct.elt_loc_list** %99, align 8
  store %struct.elt_loc_list* %100, %struct.elt_loc_list** %13, align 8
  br label %49

101:                                              ; preds = %49
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %101
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @constprop_register(i64 %105, i64 %106, i64 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %104
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = call i32 @adjust_libcall_notes(i64 %112, i64 %113, i64 %114, i64* %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @gcc_assert(i32 %117)
  %119 = load i32*, i32** @dump_file, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %111
  %122 = load i32*, i32** @dump_file, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @REGNO(i64 %123)
  %125 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** @dump_file, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @INSN_UID(i64 %127)
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** @dump_file, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @print_rtl(i32* %130, i64 %131)
  %133 = load i32*, i32** @dump_file, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %121, %111
  %136 = load i32, i32* @local_const_prop_count, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @local_const_prop_count, align 4
  store i32 1, i32* %5, align 4
  br label %176

138:                                              ; preds = %104, %101
  %139 = load i64, i64* %10, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %138
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %6, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %141
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %7, align 8
  %149 = call i64 @try_replace_reg(i64 %146, i64 %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %145
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load i64*, i64** %9, align 8
  %156 = call i32 @adjust_libcall_notes(i64 %152, i64 %153, i64 %154, i64* %155)
  %157 = load i32*, i32** @dump_file, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %151
  %160 = load i32*, i32** @dump_file, align 8
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @REGNO(i64 %161)
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @INSN_UID(i64 %163)
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %160, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %162, i32 %164)
  %166 = load i32*, i32** @dump_file, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @REGNO(i64 %167)
  %169 = call i32 (i32*, i8*, ...) @fprintf(i32* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %159, %151
  %171 = load i32, i32* @local_copy_prop_count, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @local_copy_prop_count, align 4
  store i32 1, i32* %5, align 4
  br label %176

173:                                              ; preds = %145, %141, %138
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174, %32, %26, %4
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %170, %135, %44
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @asm_noperands(i32) #1

declare dso_local %struct.TYPE_3__* @cselib_lookup(i64, i32, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @CONSTANT_P(i64) #1

declare dso_local i64 @gcse_constant_p(i64) #1

declare dso_local i64 @find_reg_note(i32, i32, i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @constprop_register(i64, i64, i64, i32) #1

declare dso_local i32 @adjust_libcall_notes(i64, i64, i64, i64*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @INSN_UID(i64) #1

declare dso_local i32 @print_rtl(i32*, i64) #1

declare dso_local i64 @try_replace_reg(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
