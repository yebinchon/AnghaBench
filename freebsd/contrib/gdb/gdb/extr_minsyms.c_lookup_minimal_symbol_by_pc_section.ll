; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_minimal_symbol_by_pc_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_minimal_symbol_by_pc_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, %struct.minimal_symbol*, %struct.objfile* }
%struct.minimal_symbol = type { i64 }
%struct.obj_section = type { i32 }

@object_files = common dso_local global %struct.objfile* null, align 8
@mst_abs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc_section(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.minimal_symbol*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca %struct.minimal_symbol*, align 8
  %11 = alloca %struct.minimal_symbol*, align 8
  %12 = alloca %struct.obj_section*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call %struct.obj_section* @find_pc_section(i64 %13)
  store %struct.obj_section* %14, %struct.obj_section** %12, align 8
  %15 = load %struct.obj_section*, %struct.obj_section** %12, align 8
  %16 = icmp eq %struct.obj_section* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %3, align 8
  br label %174

18:                                               ; preds = %2
  %19 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  store %struct.objfile* %19, %struct.objfile** %9, align 8
  br label %20

20:                                               ; preds = %168, %18
  %21 = load %struct.objfile*, %struct.objfile** %9, align 8
  %22 = icmp ne %struct.objfile* %21, null
  br i1 %22, label %23, label %172

23:                                               ; preds = %20
  %24 = load %struct.objfile*, %struct.objfile** %9, align 8
  %25 = getelementptr inbounds %struct.objfile, %struct.objfile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %167

28:                                               ; preds = %23
  %29 = load %struct.objfile*, %struct.objfile** %9, align 8
  %30 = getelementptr inbounds %struct.objfile, %struct.objfile* %29, i32 0, i32 1
  %31 = load %struct.minimal_symbol*, %struct.minimal_symbol** %30, align 8
  store %struct.minimal_symbol* %31, %struct.minimal_symbol** %10, align 8
  store i32 0, i32* %6, align 4
  %32 = load %struct.objfile*, %struct.objfile** %9, align 8
  %33 = getelementptr inbounds %struct.objfile, %struct.objfile* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %37, i64 %39
  %41 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %40)
  %42 = icmp sge i64 %36, %41
  br i1 %42, label %43, label %166

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %72, %43
  %45 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %45, i64 %47
  %49 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %48)
  %50 = load i64, i64* %4, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %8, align 4
  %57 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %57, i64 %59
  %61 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %60)
  %62 = load i64, i64* %4, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %52
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %44

73:                                               ; preds = %44
  br label %74

74:                                               ; preds = %96, %73
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.objfile*, %struct.objfile** %9, align 8
  %77 = getelementptr inbounds %struct.objfile, %struct.objfile* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %82, i64 %84
  %86 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %85)
  %87 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %87, i64 %90
  %92 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %91)
  %93 = icmp eq i64 %86, %92
  br label %94

94:                                               ; preds = %81, %74
  %95 = phi i1 [ false, %74 ], [ %93, %81 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %74

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %114, %99
  %101 = load i32, i32* %7, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %104, i64 %106
  %108 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @mst_abs, align 8
  %111 = icmp eq i64 %109, %110
  br label %112

112:                                              ; preds = %103, %100
  %113 = phi i1 [ false, %100 ], [ %111, %103 ]
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %7, align 4
  br label %100

117:                                              ; preds = %112
  %118 = load i32*, i32** %5, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %145

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %141, %120
  %122 = load i32, i32* %7, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %125, i64 %127
  %129 = call i32* @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %128)
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %132, i64 %134
  %136 = call i32* @SYMBOL_BFD_SECTION(%struct.minimal_symbol* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = icmp ne i32* %136, %137
  br label %139

139:                                              ; preds = %131, %124, %121
  %140 = phi i1 [ false, %124 ], [ false, %121 ], [ %138, %131 ]
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %7, align 4
  br label %121

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %117
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = load %struct.minimal_symbol*, %struct.minimal_symbol** %11, align 8
  %150 = icmp eq %struct.minimal_symbol* %149, null
  br i1 %150, label %160, label %151

151:                                              ; preds = %148
  %152 = load %struct.minimal_symbol*, %struct.minimal_symbol** %11, align 8
  %153 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %152)
  %154 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %154, i64 %156
  %158 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %157)
  %159 = icmp slt i64 %153, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %151, %148
  %161 = load %struct.minimal_symbol*, %struct.minimal_symbol** %10, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %161, i64 %163
  store %struct.minimal_symbol* %164, %struct.minimal_symbol** %11, align 8
  br label %165

165:                                              ; preds = %160, %151, %145
  br label %166

166:                                              ; preds = %165, %28
  br label %167

167:                                              ; preds = %166, %23
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.objfile*, %struct.objfile** %9, align 8
  %170 = getelementptr inbounds %struct.objfile, %struct.objfile* %169, i32 0, i32 2
  %171 = load %struct.objfile*, %struct.objfile** %170, align 8
  store %struct.objfile* %171, %struct.objfile** %9, align 8
  br label %20

172:                                              ; preds = %20
  %173 = load %struct.minimal_symbol*, %struct.minimal_symbol** %11, align 8
  store %struct.minimal_symbol* %173, %struct.minimal_symbol** %3, align 8
  br label %174

174:                                              ; preds = %172, %17
  %175 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  ret %struct.minimal_symbol* %175
}

declare dso_local %struct.obj_section* @find_pc_section(i64) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32* @SYMBOL_BFD_SECTION(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
