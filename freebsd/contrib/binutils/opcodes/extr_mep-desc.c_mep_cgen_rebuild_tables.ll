; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-desc.c_mep_cgen_rebuild_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-desc.c_mep_cgen_rebuild_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i8*, i8*, i32, i64, i64, i32, i32* }

@CGEN_INT_INSN_P = common dso_local global i32 0, align 4
@CGEN_SIZE_UNKNOWN = common dso_local global i8* null, align 8
@MAX_ISAS = common dso_local global i32 0, align 4
@mep_cgen_isa_table = common dso_local global %struct.TYPE_12__* null, align 8
@MAX_MACHS = common dso_local global i32 0, align 4
@mep_cgen_mach_table = common dso_local global %struct.TYPE_11__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"mep_cgen_rebuild_tables: conflicting insn-chunk-bitsize values: `%d' vs. `%d'\0A\00", align 1
@UNSET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @mep_cgen_rebuild_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mep_cgen_rebuild_tables(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @CGEN_INT_INSN_P, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** @CGEN_SIZE_UNKNOWN, align 8
  %18 = getelementptr i8, i8* %17, i64 1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @CGEN_SIZE_UNKNOWN, align 8
  %22 = getelementptr i8, i8* %21, i64 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  store i32 65535, i32* %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %126, %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MAX_ISAS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %129

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @cgen_bitset_contains(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %125

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mep_cgen_isa_table, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %41
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %6, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @CGEN_SIZE_UNKNOWN, align 8
  %47 = getelementptr i8, i8* %46, i64 1
  %48 = icmp eq i8* %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %69

55:                                               ; preds = %38
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %68

64:                                               ; preds = %55
  %65 = load i8*, i8** @CGEN_SIZE_UNKNOWN, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %63
  br label %69

69:                                               ; preds = %68, %49
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** @CGEN_SIZE_UNKNOWN, align 8
  %74 = getelementptr i8, i8* %73, i64 1
  %75 = icmp eq i8* %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %96

82:                                               ; preds = %69
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = icmp eq i8* %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %95

91:                                               ; preds = %82
  %92 = load i8*, i8** @CGEN_SIZE_UNKNOWN, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %90
  br label %96

96:                                               ; preds = %95, %76
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %96
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %118, %110
  br label %125

125:                                              ; preds = %124, %33
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %29

129:                                              ; preds = %29
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %180, %129
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @MAX_MACHS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %183

134:                                              ; preds = %130
  %135 = load i32, i32* %3, align 4
  %136 = shl i32 1, %135
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %179

140:                                              ; preds = %134
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mep_cgen_mach_table, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %143
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %7, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %178

149:                                              ; preds = %140
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %149
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %157, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %154
  %163 = load i32, i32* @stderr, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @fprintf(i32 %163, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %166, i64 %169)
  %171 = call i32 (...) @abort() #3
  unreachable

172:                                              ; preds = %154, %149
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 5
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %172, %140
  br label %179

179:                                              ; preds = %178, %134
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  br label %130

183:                                              ; preds = %130
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %185 = call i32 @build_hw_table(%struct.TYPE_13__* %184)
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %187 = call i32 @build_ifield_table(%struct.TYPE_13__* %186)
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %189 = call i32 @build_operand_table(%struct.TYPE_13__* %188)
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %191 = call i32 @build_insn_table(%struct.TYPE_13__* %190)
  ret void
}

declare dso_local i64 @cgen_bitset_contains(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @build_hw_table(%struct.TYPE_13__*) #1

declare dso_local i32 @build_ifield_table(%struct.TYPE_13__*) #1

declare dso_local i32 @build_operand_table(%struct.TYPE_13__*) #1

declare dso_local i32 @build_insn_table(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
