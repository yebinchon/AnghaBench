; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_chains_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_chains_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i32, %struct.df* }
%struct.df = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.df_ref = type { i32 }

@DF_DU_CHAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Def-use chains:\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"d%d bb %d luid %d insn %d reg %d \00", align 1
@DF_REF_READ_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"read/write \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DF_UD_CHAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Use-def chains:\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"u%d bb %d luid %d insn %d reg %d \00", align 1
@DF_REF_STRIPPED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"stripped \00", align 1
@DF_REF_IN_NOTE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"note \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, i32*)* @df_chains_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_chains_dump(%struct.dataflow* %0, i32* %1) #0 {
  %3 = alloca %struct.dataflow*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.df*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.df_ref*, align 8
  %8 = alloca %struct.df_ref*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %10 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %9, i32 0, i32 1
  %11 = load %struct.df*, %struct.df** %10, align 8
  store %struct.df* %11, %struct.df** %5, align 8
  %12 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %13 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DF_DU_CHAIN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %79, %18
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.df*, %struct.df** %5, align 8
  %24 = getelementptr inbounds %struct.df, %struct.df* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %21
  %29 = load %struct.df*, %struct.df** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.df_ref* @DF_DEFS_GET(%struct.df* %29, i32 %30)
  store %struct.df_ref* %31, %struct.df_ref** %7, align 8
  %32 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %33 = icmp ne %struct.df_ref* %32, null
  br i1 %33, label %34, label %78

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %38 = call i32 @DF_REF_BBNO(%struct.df_ref* %37)
  %39 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %40 = call i64 @DF_REF_INSN(%struct.df_ref* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.df*, %struct.df** %5, align 8
  %44 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %45 = call i64 @DF_REF_INSN(%struct.df_ref* %44)
  %46 = call i32 @DF_INSN_LUID(%struct.df* %43, i64 %45)
  br label %48

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ %46, %42 ], [ -1, %47 ]
  %50 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %51 = call i64 @DF_REF_INSN(%struct.df_ref* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %55 = call i32 @DF_REF_INSN_UID(%struct.df_ref* %54)
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ -1, %56 ]
  %59 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %60 = call i32 @DF_REF_REGNO(%struct.df_ref* %59)
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i32 %49, i32 %58, i32 %60)
  %62 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %63 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DF_REF_READ_WRITE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %57
  %72 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %73 = call i32 @DF_REF_CHAIN(%struct.df_ref* %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @df_chain_dump(i32 %73, i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %71, %28
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %21

82:                                               ; preds = %21
  br label %83

83:                                               ; preds = %82, %2
  %84 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %85 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DF_UD_CHAIN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %179

90:                                               ; preds = %83
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %175, %90
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.df*, %struct.df** %5, align 8
  %96 = getelementptr inbounds %struct.df, %struct.df* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %94, %98
  br i1 %99, label %100, label %178

100:                                              ; preds = %93
  %101 = load %struct.df*, %struct.df** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call %struct.df_ref* @DF_USES_GET(%struct.df* %101, i32 %102)
  store %struct.df_ref* %103, %struct.df_ref** %8, align 8
  %104 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %105 = icmp ne %struct.df_ref* %104, null
  br i1 %105, label %106, label %174

106:                                              ; preds = %100
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %110 = call i32 @DF_REF_BBNO(%struct.df_ref* %109)
  %111 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %112 = call i64 @DF_REF_INSN(%struct.df_ref* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.df*, %struct.df** %5, align 8
  %116 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %117 = call i64 @DF_REF_INSN(%struct.df_ref* %116)
  %118 = call i32 @DF_INSN_LUID(%struct.df* %115, i64 %117)
  br label %120

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %114
  %121 = phi i32 [ %118, %114 ], [ -1, %119 ]
  %122 = load %struct.df*, %struct.df** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call %struct.df_ref* @DF_USES_GET(%struct.df* %122, i32 %123)
  %125 = call i64 @DF_REF_INSN(%struct.df_ref* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.df*, %struct.df** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call %struct.df_ref* @DF_USES_GET(%struct.df* %128, i32 %129)
  %131 = call i32 @DF_REF_INSN_UID(%struct.df_ref* %130)
  br label %133

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %127
  %134 = phi i32 [ %131, %127 ], [ -1, %132 ]
  %135 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %136 = call i32 @DF_REF_REGNO(%struct.df_ref* %135)
  %137 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %110, i32 %121, i32 %134, i32 %136)
  %138 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %139 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DF_REF_READ_WRITE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %133
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %133
  %148 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %149 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DF_REF_STRIPPED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %147
  %158 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %159 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DF_REF_IN_NOTE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %157
  %168 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %169 = call i32 @DF_REF_CHAIN(%struct.df_ref* %168)
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @df_chain_dump(i32 %169, i32* %170)
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %174

174:                                              ; preds = %167, %100
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %93

178:                                              ; preds = %93
  br label %179

179:                                              ; preds = %178, %83
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local %struct.df_ref* @DF_DEFS_GET(%struct.df*, i32) #1

declare dso_local i32 @DF_REF_BBNO(%struct.df_ref*) #1

declare dso_local i64 @DF_REF_INSN(%struct.df_ref*) #1

declare dso_local i32 @DF_INSN_LUID(%struct.df*, i64) #1

declare dso_local i32 @DF_REF_INSN_UID(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_REGNO(%struct.df_ref*) #1

declare dso_local i32 @df_chain_dump(i32, i32*) #1

declare dso_local i32 @DF_REF_CHAIN(%struct.df_ref*) #1

declare dso_local %struct.df_ref* @DF_USES_GET(%struct.df*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
