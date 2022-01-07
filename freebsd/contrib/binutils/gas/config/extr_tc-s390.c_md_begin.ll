; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-s390.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-s390.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_opcode = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@s390_arch_size = common dso_local global i32 0, align 4
@current_cpu = common dso_local global i64 0, align 8
@S390_OPCODE_Z900 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"The 64 bit file format is used without esame instructions.\00", align 1
@s390_cie_data_alignment = common dso_local global i32 0, align 4
@s390_flags = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@s390_opformat_hash = common dso_local global i32 0, align 4
@s390_opformats = common dso_local global %struct.s390_opcode* null, align 8
@s390_num_opformats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Internal assembler error for instruction format %s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@s390_opcode_hash = common dso_local global i32 0, align 4
@s390_opcodes = common dso_local global %struct.s390_opcode* null, align 8
@s390_num_opcodes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Internal assembler error for instruction %s\00", align 1
@text_section = common dso_local global i32 0, align 4
@data_section = common dso_local global i32 0, align 4
@bss_section = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = alloca %struct.s390_opcode*, align 8
  %2 = alloca %struct.s390_opcode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = load i64, i64* @FALSE, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @s390_arch_size, align 4
  %7 = icmp eq i32 %6, 64
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i64, i64* @current_cpu, align 8
  %10 = load i64, i64* @S390_OPCODE_Z900, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @as_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8, %0
  %15 = load i32, i32* @s390_arch_size, align 4
  %16 = sub nsw i32 0, %15
  %17 = sdiv i32 %16, 8
  store i32 %17, i32* @s390_cie_data_alignment, align 4
  %18 = load i64, i64* @s390_flags, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @stdoutput, align 4
  %22 = load i64, i64* @s390_flags, align 8
  %23 = call i32 @bfd_set_private_flags(i32 %21, i64 %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = call i32 (...) @hash_new()
  store i32 %25, i32* @s390_opformat_hash, align 4
  %26 = load %struct.s390_opcode*, %struct.s390_opcode** @s390_opformats, align 8
  %27 = load i32, i32* @s390_num_opformats, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %26, i64 %28
  store %struct.s390_opcode* %29, %struct.s390_opcode** %2, align 8
  %30 = load %struct.s390_opcode*, %struct.s390_opcode** @s390_opformats, align 8
  store %struct.s390_opcode* %30, %struct.s390_opcode** %1, align 8
  br label %31

31:                                               ; preds = %53, %24
  %32 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %33 = load %struct.s390_opcode*, %struct.s390_opcode** %2, align 8
  %34 = icmp ult %struct.s390_opcode* %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32, i32* @s390_opformat_hash, align 4
  %37 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %38 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %41 = ptrtoint %struct.s390_opcode* %40 to i32
  %42 = call i8* @hash_insert(i32 %36, i32 %39, i32 %41)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %48 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @as_bad(i32 %46, i32 %49)
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %45, %35
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %55 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %54, i32 1
  store %struct.s390_opcode* %55, %struct.s390_opcode** %1, align 8
  br label %31

56:                                               ; preds = %31
  %57 = call i32 (...) @hash_new()
  store i32 %57, i32* @s390_opcode_hash, align 4
  %58 = load %struct.s390_opcode*, %struct.s390_opcode** @s390_opcodes, align 8
  %59 = load i32, i32* @s390_num_opcodes, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %58, i64 %60
  store %struct.s390_opcode* %61, %struct.s390_opcode** %2, align 8
  %62 = load %struct.s390_opcode*, %struct.s390_opcode** @s390_opcodes, align 8
  store %struct.s390_opcode* %62, %struct.s390_opcode** %1, align 8
  br label %63

63:                                               ; preds = %113, %56
  %64 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %65 = load %struct.s390_opcode*, %struct.s390_opcode** %2, align 8
  %66 = icmp ult %struct.s390_opcode* %64, %65
  br i1 %66, label %67, label %116

67:                                               ; preds = %63
  %68 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %69 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @current_cpu, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %67
  %74 = load i32, i32* @s390_opcode_hash, align 4
  %75 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %76 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %79 = ptrtoint %struct.s390_opcode* %78 to i32
  %80 = call i8* @hash_insert(i32 %74, i32 %77, i32 %79)
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %86 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @as_bad(i32 %84, i32 %87)
  %89 = load i64, i64* @TRUE, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %83, %73
  br label %91

91:                                               ; preds = %108, %90
  %92 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %93 = load %struct.s390_opcode*, %struct.s390_opcode** %2, align 8
  %94 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %93, i64 -1
  %95 = icmp ult %struct.s390_opcode* %92, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %98 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %101 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %100, i64 1
  %102 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @strcmp(i32 %99, i32 %103)
  %105 = icmp eq i64 %104, 0
  br label %106

106:                                              ; preds = %96, %91
  %107 = phi i1 [ false, %91 ], [ %105, %96 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %110 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %109, i32 1
  store %struct.s390_opcode* %110, %struct.s390_opcode** %1, align 8
  br label %91

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %67
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.s390_opcode*, %struct.s390_opcode** %1, align 8
  %115 = getelementptr inbounds %struct.s390_opcode, %struct.s390_opcode* %114, i32 1
  store %struct.s390_opcode* %115, %struct.s390_opcode** %1, align 8
  br label %63

116:                                              ; preds = %63
  %117 = load i64, i64* %3, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 (...) @abort() #3
  unreachable

121:                                              ; preds = %116
  %122 = load i32, i32* @text_section, align 4
  %123 = call i32 @record_alignment(i32 %122, i32 2)
  %124 = load i32, i32* @data_section, align 4
  %125 = call i32 @record_alignment(i32 %124, i32 2)
  %126 = load i32, i32* @bss_section, align 4
  %127 = call i32 @record_alignment(i32 %126, i32 2)
  ret void
}

declare dso_local i32 @as_warn(i8*) #1

declare dso_local i32 @bfd_set_private_flags(i32, i64) #1

declare dso_local i32 @hash_new(...) #1

declare dso_local i8* @hash_insert(i32, i32, i32) #1

declare dso_local i32 @as_bad(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @record_alignment(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
