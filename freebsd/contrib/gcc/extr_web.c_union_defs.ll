; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_web.c_union_defs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_web.c_union_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i32 }
%struct.df_ref = type { i32, %struct.df_ref* }
%struct.web_entry = type { i32 }
%struct.df_link = type { %struct.df_link*, %struct.df_ref* }

@DF_REF_READ_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @union_defs(%struct.df* %0, %struct.df_ref* %1, %struct.web_entry* %2, %struct.web_entry* %3, i32 (%struct.web_entry*, %struct.web_entry*)* %4) #0 {
  %6 = alloca %struct.df*, align 8
  %7 = alloca %struct.df_ref*, align 8
  %8 = alloca %struct.web_entry*, align 8
  %9 = alloca %struct.web_entry*, align 8
  %10 = alloca i32 (%struct.web_entry*, %struct.web_entry*)*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.df_link*, align 8
  %13 = alloca %struct.df_ref*, align 8
  %14 = alloca %struct.df_ref*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.df_ref*, align 8
  store %struct.df* %0, %struct.df** %6, align 8
  store %struct.df_ref* %1, %struct.df_ref** %7, align 8
  store %struct.web_entry* %2, %struct.web_entry** %8, align 8
  store %struct.web_entry* %3, %struct.web_entry** %9, align 8
  store i32 (%struct.web_entry*, %struct.web_entry*)* %4, i32 (%struct.web_entry*, %struct.web_entry*)** %10, align 8
  %17 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %18 = call i32* @DF_REF_INSN(%struct.df_ref* %17)
  store i32* %18, i32** %11, align 8
  %19 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %20 = call %struct.df_link* @DF_REF_CHAIN(%struct.df_ref* %19)
  store %struct.df_link* %20, %struct.df_link** %12, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load %struct.df*, %struct.df** %6, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call %struct.df_ref* @DF_INSN_USES(%struct.df* %24, i32* %25)
  store %struct.df_ref* %26, %struct.df_ref** %13, align 8
  %27 = load %struct.df*, %struct.df** %6, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call %struct.df_ref* @DF_INSN_DEFS(%struct.df* %27, i32* %28)
  store %struct.df_ref* %29, %struct.df_ref** %14, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32* @single_set(i32* %30)
  store i32* %31, i32** %15, align 8
  br label %33

32:                                               ; preds = %5
  store %struct.df_ref* null, %struct.df_ref** %13, align 8
  store %struct.df_ref* null, %struct.df_ref** %14, align 8
  store i32* null, i32** %15, align 8
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %60, %33
  %35 = load %struct.df_ref*, %struct.df_ref** %13, align 8
  %36 = icmp ne %struct.df_ref* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %39 = load %struct.df_ref*, %struct.df_ref** %13, align 8
  %40 = icmp ne %struct.df_ref* %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %43 = call i64 @DF_REF_REAL_REG(%struct.df_ref* %42)
  %44 = load %struct.df_ref*, %struct.df_ref** %13, align 8
  %45 = call i64 @DF_REF_REAL_REG(%struct.df_ref* %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i32 (%struct.web_entry*, %struct.web_entry*)*, i32 (%struct.web_entry*, %struct.web_entry*)** %10, align 8
  %49 = load %struct.web_entry*, %struct.web_entry** %9, align 8
  %50 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %51 = call i32 @DF_REF_ID(%struct.df_ref* %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %49, i64 %52
  %54 = load %struct.web_entry*, %struct.web_entry** %9, align 8
  %55 = load %struct.df_ref*, %struct.df_ref** %13, align 8
  %56 = call i32 @DF_REF_ID(%struct.df_ref* %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %54, i64 %57
  %59 = call i32 %48(%struct.web_entry* %53, %struct.web_entry* %58)
  br label %60

60:                                               ; preds = %47, %41, %37
  %61 = load %struct.df_ref*, %struct.df_ref** %13, align 8
  %62 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %61, i32 0, i32 1
  %63 = load %struct.df_ref*, %struct.df_ref** %62, align 8
  store %struct.df_ref* %63, %struct.df_ref** %13, align 8
  br label %34

64:                                               ; preds = %34
  %65 = load i32*, i32** %15, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %107

67:                                               ; preds = %64
  %68 = load i32*, i32** %15, align 8
  %69 = call i64 @SET_SRC(i32* %68)
  %70 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %71 = call i64 @DF_REF_REG(%struct.df_ref* %70)
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %67
  %74 = load i32*, i32** %15, align 8
  %75 = call i64 @SET_SRC(i32* %74)
  %76 = load i32*, i32** %15, align 8
  %77 = call i64 @SET_DEST(i32* %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %102, %79
  %81 = load %struct.df_ref*, %struct.df_ref** %14, align 8
  %82 = icmp ne %struct.df_ref* %81, null
  br i1 %82, label %83, label %106

83:                                               ; preds = %80
  %84 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %85 = call i64 @DF_REF_REAL_REG(%struct.df_ref* %84)
  %86 = load %struct.df_ref*, %struct.df_ref** %14, align 8
  %87 = call i64 @DF_REF_REAL_REG(%struct.df_ref* %86)
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load i32 (%struct.web_entry*, %struct.web_entry*)*, i32 (%struct.web_entry*, %struct.web_entry*)** %10, align 8
  %91 = load %struct.web_entry*, %struct.web_entry** %9, align 8
  %92 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %93 = call i32 @DF_REF_ID(%struct.df_ref* %92)
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %91, i64 %94
  %96 = load %struct.web_entry*, %struct.web_entry** %8, align 8
  %97 = load %struct.df_ref*, %struct.df_ref** %14, align 8
  %98 = call i32 @DF_REF_ID(%struct.df_ref* %97)
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %96, i64 %99
  %101 = call i32 %90(%struct.web_entry* %95, %struct.web_entry* %100)
  br label %102

102:                                              ; preds = %89, %83
  %103 = load %struct.df_ref*, %struct.df_ref** %14, align 8
  %104 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %103, i32 0, i32 1
  %105 = load %struct.df_ref*, %struct.df_ref** %104, align 8
  store %struct.df_ref* %105, %struct.df_ref** %14, align 8
  br label %80

106:                                              ; preds = %80
  br label %107

107:                                              ; preds = %106, %73, %67, %64
  br label %108

108:                                              ; preds = %111, %107
  %109 = load %struct.df_link*, %struct.df_link** %12, align 8
  %110 = icmp ne %struct.df_link* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = load i32 (%struct.web_entry*, %struct.web_entry*)*, i32 (%struct.web_entry*, %struct.web_entry*)** %10, align 8
  %113 = load %struct.web_entry*, %struct.web_entry** %9, align 8
  %114 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %115 = call i32 @DF_REF_ID(%struct.df_ref* %114)
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %113, i64 %116
  %118 = load %struct.web_entry*, %struct.web_entry** %8, align 8
  %119 = load %struct.df_link*, %struct.df_link** %12, align 8
  %120 = getelementptr inbounds %struct.df_link, %struct.df_link* %119, i32 0, i32 1
  %121 = load %struct.df_ref*, %struct.df_ref** %120, align 8
  %122 = call i32 @DF_REF_ID(%struct.df_ref* %121)
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %118, i64 %123
  %125 = call i32 %112(%struct.web_entry* %117, %struct.web_entry* %124)
  %126 = load %struct.df_link*, %struct.df_link** %12, align 8
  %127 = getelementptr inbounds %struct.df_link, %struct.df_link* %126, i32 0, i32 0
  %128 = load %struct.df_link*, %struct.df_link** %127, align 8
  store %struct.df_link* %128, %struct.df_link** %12, align 8
  br label %108

129:                                              ; preds = %108
  %130 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %131 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @DF_REF_READ_WRITE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %174

136:                                              ; preds = %129
  %137 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %138 = call i32* @DF_REF_INSN(%struct.df_ref* %137)
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load %struct.df*, %struct.df** %6, align 8
  %142 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %143 = call i32* @DF_REF_INSN(%struct.df_ref* %142)
  %144 = call %struct.df_ref* @DF_INSN_DEFS(%struct.df* %141, i32* %143)
  store %struct.df_ref* %144, %struct.df_ref** %16, align 8
  br label %146

145:                                              ; preds = %136
  store %struct.df_ref* null, %struct.df_ref** %16, align 8
  br label %146

146:                                              ; preds = %145, %140
  br label %147

147:                                              ; preds = %169, %146
  %148 = load %struct.df_ref*, %struct.df_ref** %16, align 8
  %149 = icmp ne %struct.df_ref* %148, null
  br i1 %149, label %150, label %173

150:                                              ; preds = %147
  %151 = load %struct.df_ref*, %struct.df_ref** %16, align 8
  %152 = call i64 @DF_REF_REAL_REG(%struct.df_ref* %151)
  %153 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %154 = call i64 @DF_REF_REAL_REG(%struct.df_ref* %153)
  %155 = icmp eq i64 %152, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load i32 (%struct.web_entry*, %struct.web_entry*)*, i32 (%struct.web_entry*, %struct.web_entry*)** %10, align 8
  %158 = load %struct.web_entry*, %struct.web_entry** %9, align 8
  %159 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %160 = call i32 @DF_REF_ID(%struct.df_ref* %159)
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %158, i64 %161
  %163 = load %struct.web_entry*, %struct.web_entry** %8, align 8
  %164 = load %struct.df_ref*, %struct.df_ref** %16, align 8
  %165 = call i32 @DF_REF_ID(%struct.df_ref* %164)
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %163, i64 %166
  %168 = call i32 %157(%struct.web_entry* %162, %struct.web_entry* %167)
  br label %169

169:                                              ; preds = %156, %150
  %170 = load %struct.df_ref*, %struct.df_ref** %16, align 8
  %171 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %170, i32 0, i32 1
  %172 = load %struct.df_ref*, %struct.df_ref** %171, align 8
  store %struct.df_ref* %172, %struct.df_ref** %16, align 8
  br label %147

173:                                              ; preds = %147
  br label %174

174:                                              ; preds = %173, %129
  ret void
}

declare dso_local i32* @DF_REF_INSN(%struct.df_ref*) #1

declare dso_local %struct.df_link* @DF_REF_CHAIN(%struct.df_ref*) #1

declare dso_local %struct.df_ref* @DF_INSN_USES(%struct.df*, i32*) #1

declare dso_local %struct.df_ref* @DF_INSN_DEFS(%struct.df*, i32*) #1

declare dso_local i32* @single_set(i32*) #1

declare dso_local i64 @DF_REF_REAL_REG(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_ID(%struct.df_ref*) #1

declare dso_local i64 @SET_SRC(i32*) #1

declare dso_local i64 @DF_REF_REG(%struct.df_ref*) #1

declare dso_local i64 @SET_DEST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
