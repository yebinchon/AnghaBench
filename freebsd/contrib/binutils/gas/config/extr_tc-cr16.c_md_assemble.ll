; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_md_assemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_md_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cinv\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lshb\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lshw\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"lshd\00", align 1
@cr16_inst_hash = common dso_local global i32 0, align 4
@instruction = common dso_local global i32* null, align 8
@arg_ic = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"ashub\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ashud\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ashuw\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Unknown opcode: `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_assemble(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @reset_vars(i8* %7)
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @ISSPACE(i8 signext %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i1 [ false, %10 ], [ %20, %15 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %10

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %6, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  store i8 0, i8* %30, align 1
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @is_bcc_insn(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %37 = load i8*, i8** %2, align 8
  %38 = call i8* @get_b_cc(i8* %37)
  %39 = call i32 @strcpy(i8* %36, i8* %38)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %41 = call i32 @strcat(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcat(i8* %42, i8* %43)
  %45 = bitcast [32 x i8]* %5 to i8*
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %35, %27
  %47 = load i8*, i8** %2, align 8
  %48 = call i64 @streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @check_cinv_options(i8* %51)
  %53 = load i8*, i8** %2, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strcat(i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i8*, i8** %2, align 8
  %58 = call i64 @streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %2, align 8
  %62 = call i64 @streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %2, align 8
  %66 = call i64 @streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %112

68:                                               ; preds = %64, %60, %56
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 36
  br i1 %73, label %74, label %112

74:                                               ; preds = %68
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  %78 = load i32, i32* @cr16_inst_hash, align 4
  %79 = load i8*, i8** %2, align 8
  %80 = call i64 @hash_find(i32 %78, i8* %79)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** @instruction, align 8
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %83 = call i32 @parse_operands(%struct.TYPE_8__* %3, i8* %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @arg_ic, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %74
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load i8*, i8** %2, align 8
  %100 = call i64 @streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %110

103:                                              ; preds = %98
  %104 = load i8*, i8** %2, align 8
  %105 = call i64 @streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %109

108:                                              ; preds = %103
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %102
  br label %111

111:                                              ; preds = %110, %91, %74
  br label %112

112:                                              ; preds = %111, %68, %64
  %113 = load i32, i32* @cr16_inst_hash, align 4
  %114 = load i8*, i8** %2, align 8
  %115 = call i64 @hash_find(i32 %113, i8* %114)
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** @instruction, align 8
  %117 = load i32*, i32** @instruction, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %121 = load i8*, i8** %2, align 8
  %122 = call i32 @as_bad(i32 %120, i8* %121)
  br label %133

123:                                              ; preds = %112
  %124 = call i32 @dwarf2_emit_insn(i32 0)
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @parse_insn(%struct.TYPE_8__* %3, i8* %125)
  %127 = load i8*, i8** %2, align 8
  %128 = call i64 @assemble_insn(i8* %127, %struct.TYPE_8__* %3)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %133

131:                                              ; preds = %123
  %132 = call i32 @print_insn(%struct.TYPE_8__* %3)
  br label %133

133:                                              ; preds = %131, %130, %119
  ret void
}

declare dso_local i32 @reset_vars(i8*) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

declare dso_local i64 @is_bcc_insn(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @get_b_cc(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @check_cinv_options(i8*) #1

declare dso_local i64 @hash_find(i32, i8*) #1

declare dso_local i32 @parse_operands(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @dwarf2_emit_insn(i32) #1

declare dso_local i32 @parse_insn(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @assemble_insn(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @print_insn(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
