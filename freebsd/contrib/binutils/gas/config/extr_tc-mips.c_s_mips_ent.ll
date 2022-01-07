; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_s_mips_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_s_mips_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@stdoutput = common dso_local global i32 0, align 4
@now_seg = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c".ent or .aent not in text section.\00", align 1
@cur_proc_ptr = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"missing .end\00", align 1
@mips_frame_reg_valid = common dso_local global i64 0, align 8
@mips_cprestore_valid = common dso_local global i64 0, align 8
@cur_proc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BSF_FUNCTION = common dso_local global i32 0, align 4
@numprocs = common dso_local global i32 0, align 4
@debug_type = common dso_local global i64 0, align 8
@DEBUG_STABS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s_mips_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_mips_ent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32* (...) @get_symbol()
  store i32* %4, i32** %3, align 8
  %5 = load i8*, i8** @input_line_pointer, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 44
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** @input_line_pointer, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** @input_line_pointer, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 (...) @SKIP_WHITESPACE()
  %14 = load i8*, i8** @input_line_pointer, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @ISDIGIT(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** @input_line_pointer, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %12
  %24 = call i32 (...) @get_number()
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* @stdoutput, align 4
  %27 = load i32, i32* @now_seg, align 4
  %28 = call i32 @bfd_get_section_flags(i32 %26, i32 %27)
  %29 = load i32, i32* @SEC_CODE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @as_warn(i32 %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur_proc_ptr, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @as_warn(i32 %42)
  br label %44

44:                                               ; preds = %41, %38, %35
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %44
  store i64 0, i64* @mips_frame_reg_valid, align 8
  store i64 0, i64* @mips_cprestore_valid, align 8
  store %struct.TYPE_6__* @cur_proc, %struct.TYPE_6__** @cur_proc_ptr, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur_proc_ptr, align 8
  %49 = call i32 @memset(%struct.TYPE_6__* %48, i8 signext 0, i32 4)
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cur_proc_ptr, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* @BSF_FUNCTION, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call %struct.TYPE_5__* @symbol_get_bfdsym(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @numprocs, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @numprocs, align 4
  %61 = load i64, i64* @debug_type, align 8
  %62 = load i64, i64* @DEBUG_STABS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %47
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @S_GET_NAME(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @S_GET_NAME(i32* %67)
  %69 = call i32 @stabs_generate_asm_func(i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %64, %47
  br label %71

71:                                               ; preds = %70, %44
  %72 = call i32 (...) @demand_empty_rest_of_line()
  ret void
}

declare dso_local i32* @get_symbol(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @get_number(...) #1

declare dso_local i32 @bfd_get_section_flags(i32, i32) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i8 signext, i32) #1

declare dso_local %struct.TYPE_5__* @symbol_get_bfdsym(i32*) #1

declare dso_local i32 @stabs_generate_asm_func(i32, i32) #1

declare dso_local i32 @S_GET_NAME(i32*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
