; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_skip_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_skip_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i64 }
%struct.symbol = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@language_asm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @arm_skip_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_skip_prologue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.symtab_and_line, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca %struct.symtab_and_line, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %7, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @DEPRECATED_PC_IN_CALL_DUMMY(i64 %12, i32 0, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %2, align 8
  br label %162

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @find_pc_partial_function(i64 %18, i8** %8, i64* %6, i64* %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @VAR_DOMAIN, align 4
  %24 = call %struct.symbol* @lookup_symbol(i8* %22, i32* null, i32 %23, i32* null, i32* null)
  store %struct.symbol* %24, %struct.symbol** %10, align 8
  %25 = load %struct.symbol*, %struct.symbol** %10, align 8
  %26 = icmp ne %struct.symbol* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = load %struct.symbol*, %struct.symbol** %10, align 8
  %29 = call i64 @SYMBOL_LANGUAGE(%struct.symbol* %28)
  %30 = load i64, i64* @language_asm, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = call { i64, i64 } @find_pc_line(i64 %33, i32 0)
  %35 = bitcast %struct.symtab_and_line* %11 to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = extractvalue { i64, i64 } %34, 0
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = extractvalue { i64, i64 } %34, 1
  store i64 %39, i64* %38, align 8
  %40 = bitcast %struct.symtab_and_line* %9 to i8*
  %41 = bitcast %struct.symtab_and_line* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %2, align 8
  br label %162

53:                                               ; preds = %45, %32
  br label %54

54:                                               ; preds = %53, %27, %21
  br label %55

55:                                               ; preds = %54, %17
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @arm_pc_is_thumb(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @thumb_skip_prologue(i64 %60, i64 %61)
  store i64 %62, i64* %2, align 8
  br label %162

63:                                               ; preds = %55
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add nsw i64 %68, 64
  %70 = icmp sgt i64 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %63
  %72 = load i64, i64* %3, align 8
  %73 = add nsw i64 %72, 64
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i64, i64* %3, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %157, %74
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %160

80:                                               ; preds = %76
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @read_memory_integer(i64 %81, i32 4)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp eq i64 %83, 3785408525
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %157

86:                                               ; preds = %80
  %87 = load i64, i64* %4, align 8
  %88 = and i64 %87, 4294963200
  %89 = icmp eq i64 %88, 3800940544
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %157

91:                                               ; preds = %86
  %92 = load i64, i64* %4, align 8
  %93 = and i64 %92, 4294963200
  %94 = icmp eq i64 %93, 3796746240
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %157

96:                                               ; preds = %91
  %97 = load i64, i64* %4, align 8
  %98 = icmp eq i64 %97, 3844988932
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %157

100:                                              ; preds = %96
  %101 = load i64, i64* %4, align 8
  %102 = and i64 %101, 4294967280
  %103 = icmp eq i64 %102, 3912040448
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %157

105:                                              ; preds = %100
  %106 = load i64, i64* %4, align 8
  %107 = and i64 %106, 4294965248
  %108 = icmp eq i64 %107, 3912095744
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %157

110:                                              ; preds = %105
  %111 = load i64, i64* %4, align 8
  %112 = and i64 %111, 4290711551
  %113 = icmp eq i64 %112, 3962372608
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %157

115:                                              ; preds = %110
  %116 = load i64, i64* %4, align 8
  %117 = and i64 %116, 4294938623
  %118 = icmp eq i64 %117, 3983343875
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %157

120:                                              ; preds = %115
  %121 = load i64, i64* %4, align 8
  %122 = and i64 %121, 4294963200
  %123 = icmp eq i64 %122, 3796676608
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %157

125:                                              ; preds = %120
  %126 = load i64, i64* %4, align 8
  %127 = and i64 %126, 4294963200
  %128 = icmp eq i64 %127, 3796750336
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %157

130:                                              ; preds = %125
  %131 = load i64, i64* %4, align 8
  %132 = and i64 %131, 4294950912
  %133 = icmp eq i64 %132, 3846897664
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %4, align 8
  %136 = and i64 %135, 4294951152
  %137 = icmp eq i64 %136, 3779788976
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %4, align 8
  %140 = and i64 %139, 4294950912
  %141 = icmp eq i64 %140, 3842703360
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %134, %130
  br label %157

143:                                              ; preds = %138
  %144 = load i64, i64* %4, align 8
  %145 = and i64 %144, 4294950912
  %146 = icmp eq i64 %145, 3855417344
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = load i64, i64* %4, align 8
  %149 = and i64 %148, 4294951152
  %150 = icmp eq i64 %149, 3788308656
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* %4, align 8
  %153 = and i64 %152, 4294950912
  %154 = icmp eq i64 %153, 3851223040
  br i1 %154, label %155, label %156

155:                                              ; preds = %151, %147, %143
  br label %157

156:                                              ; preds = %151
  br label %160

157:                                              ; preds = %155, %142, %129, %124, %119, %114, %109, %104, %99, %95, %90, %85
  %158 = load i64, i64* %5, align 8
  %159 = add nsw i64 %158, 4
  store i64 %159, i64* %5, align 8
  br label %76

160:                                              ; preds = %156, %76
  %161 = load i64, i64* %5, align 8
  store i64 %161, i64* %2, align 8
  br label %162

162:                                              ; preds = %160, %59, %50, %15
  %163 = load i64, i64* %2, align 8
  ret i64 %163
}

declare dso_local i64 @DEPRECATED_PC_IN_CALL_DUMMY(i64, i32, i32) #1

declare dso_local i64 @find_pc_partial_function(i64, i8**, i64*, i64*) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @SYMBOL_LANGUAGE(%struct.symbol*) #1

declare dso_local { i64, i64 } @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @arm_pc_is_thumb(i64) #1

declare dso_local i64 @thumb_skip_prologue(i64, i64) #1

declare dso_local i64 @read_memory_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
