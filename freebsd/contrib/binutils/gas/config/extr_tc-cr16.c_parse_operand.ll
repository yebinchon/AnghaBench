; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_parse_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_parse_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32, i8* }

@cur_arg_num = common dso_local global i32 0, align 4
@nullargs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@arg_cc = common dso_local global i32 0, align 4
@O_register = common dso_local global i8* null, align 8
@nullregister = common dso_local global i32 0, align 4
@arg_r = common dso_local global i32 0, align 4
@arg_rp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"lprd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sprd\00", align 1
@nullpregister = common dso_local global i32 0, align 4
@arg_pr = common dso_local global i32 0, align 4
@arg_prp = common dso_local global i32 0, align 4
@arg_icr = common dso_local global i32 0, align 4
@arg_ic = common dso_local global i32 0, align 4
@arg_rbase = common dso_local global i32 0, align 4
@arg_idxr = common dso_local global i32 0, align 4
@arg_crp = common dso_local global i32 0, align 4
@arg_cr = common dso_local global i32 0, align 4
@arg_c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*)* @parse_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_operand(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = load i32, i32* @cur_arg_num, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %11
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load i32, i32* @nullargs, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @get_cc(i8* %19)
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* @arg_cc, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** @O_register, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  br label %164

32:                                               ; preds = %18, %2
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @get_register(i8* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @nullregister, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, i32* @arg_r, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  store i8* null, i8** %45, align 8
  br label %164

46:                                               ; preds = %32
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 40
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @get_register_pair(i8* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @nullregister, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* @arg_rp, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @O_register, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  br label %164

67:                                               ; preds = %52, %46
  %68 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %67
  %71 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @get_pregister(i8* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @nullpregister, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* @arg_pr, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i8*, i8** @O_register, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  br label %164

88:                                               ; preds = %73, %70, %67
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @get_pregisterp(i8* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @nullpregister, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32, i32* @arg_prp, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** @O_register, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 7
  store i8* %100, i8** %102, align 8
  br label %164

103:                                              ; preds = %88
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  switch i32 %107, label %129 [
    i32 36, label %108
    i32 40, label %121
    i32 91, label %125
  ]

108:                                              ; preds = %103
  %109 = load i8*, i8** %3, align 8
  %110 = call i32* @strchr(i8* %109, i8 signext 40)
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* @arg_icr, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  br label %120

116:                                              ; preds = %108
  %117 = load i32, i32* @arg_ic, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %158

121:                                              ; preds = %103
  %122 = load i32, i32* @arg_rbase, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  br label %158

125:                                              ; preds = %103
  %126 = load i32, i32* @arg_idxr, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  br label %158

129:                                              ; preds = %103
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %3, align 8
  %132 = call i32* @strchr(i8* %131, i8 signext 40)
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load i8*, i8** %3, align 8
  %136 = call i32* @strchr(i8* %135, i8 signext 44)
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i8*, i8** %3, align 8
  %140 = call i32* @strchr(i8* %139, i8 signext 44)
  %141 = load i8*, i8** %3, align 8
  %142 = call i32* @strchr(i8* %141, i8 signext 40)
  %143 = icmp ugt i32* %140, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load i32, i32* @arg_crp, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 8
  br label %152

148:                                              ; preds = %138, %134
  %149 = load i32, i32* @arg_cr, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %148, %144
  br label %157

153:                                              ; preds = %130
  %154 = load i32, i32* @arg_c, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %153, %152
  br label %158

158:                                              ; preds = %157, %125, %121, %120
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 5
  store i64 0, i64* %160, align 8
  %161 = load i8*, i8** %3, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %163 = call i32 @set_operand(i8* %161, %struct.TYPE_5__* %162)
  br label %164

164:                                              ; preds = %158, %93, %78, %57, %37, %22
  ret void
}

declare dso_local i64 @IS_INSN_MNEMONIC(i8*) #1

declare dso_local i32 @get_cc(i8*) #1

declare dso_local i32 @get_register(i8*) #1

declare dso_local i32 @get_register_pair(i8*) #1

declare dso_local i32 @get_pregister(i8*) #1

declare dso_local i32 @get_pregisterp(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @set_operand(i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
