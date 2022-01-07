; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_write_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_write_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@C_FILE = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@N_DEBUG = common dso_local global i32 0, align 4
@N_ABS = common dso_local global i32 0, align 4
@N_UNDEF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i64*, i32**, i64*)* @coff_write_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_write_symbol(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2, i32* %3, i64* %4, i32** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i64* %6, i64** %15, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %17, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %18, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @C_FILE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %7
  %46 = load i32, i32* @BSF_DEBUGGING, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %7
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BSF_DEBUGGING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = call i64 @bfd_is_abs_section(%struct.TYPE_13__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @N_DEBUG, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  br label %108

70:                                               ; preds = %58, %51
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = call i64 @bfd_is_abs_section(%struct.TYPE_13__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32, i32* @N_ABS, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  store i32 %77, i32* %81, align 4
  br label %107

82:                                               ; preds = %70
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = call i64 @bfd_is_und_section(%struct.TYPE_13__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* @N_UNDEF, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  store i32 %89, i32* %93, align 4
  br label %106

94:                                               ; preds = %82
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %94, %88
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107, %64
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %112 = load i64*, i64** %13, align 8
  %113 = load i32**, i32*** %14, align 8
  %114 = load i64*, i64** %15, align 8
  %115 = call i32 @coff_fix_symbol_name(i32* %109, %struct.TYPE_18__* %110, %struct.TYPE_17__* %111, i64* %112, i32** %113, i64* %114)
  %116 = load i32*, i32** %9, align 8
  %117 = call i64 @bfd_coff_symesz(i32* %116)
  store i64 %117, i64* %20, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i64, i64* %20, align 8
  %120 = call i8* @bfd_alloc(i32* %118, i64 %119)
  store i8* %120, i8** %19, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %108
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %8, align 4
  br label %215

125:                                              ; preds = %108
  %126 = load i32*, i32** %9, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i8*, i8** %19, align 8
  %131 = call i32 @bfd_coff_swap_sym_out(i32* %126, %struct.TYPE_14__* %129, i8* %130)
  %132 = load i8*, i8** %19, align 8
  %133 = load i64, i64* %20, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i64 @bfd_bwrite(i8* %132, i64 %133, i32* %134)
  %136 = load i64, i64* %20, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %125
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %8, align 4
  br label %215

140:                                              ; preds = %125
  %141 = load i32*, i32** %9, align 8
  %142 = load i8*, i8** %19, align 8
  %143 = call i32 @bfd_release(i32* %141, i8* %142)
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ugt i32 %148, 0
  br i1 %149, label %150, label %204

150:                                              ; preds = %140
  %151 = load i32*, i32** %9, align 8
  %152 = call i64 @bfd_coff_auxesz(i32* %151)
  store i64 %152, i64* %21, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i64, i64* %21, align 8
  %155 = call i8* @bfd_alloc(i32* %153, i64 %154)
  store i8* %155, i8** %19, align 8
  %156 = load i8*, i8** %19, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %8, align 4
  br label %215

160:                                              ; preds = %150
  store i32 0, i32* %22, align 4
  br label %161

161:                                              ; preds = %197, %160
  %162 = load i32, i32* %22, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ult i32 %162, %167
  br i1 %168, label %169, label %200

169:                                              ; preds = %161
  %170 = load i32*, i32** %9, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %172 = load i32, i32* %22, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %22, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %19, align 8
  %187 = call i32 @bfd_coff_swap_aux_out(i32* %170, i32* %177, i32 %178, i32 %179, i32 %180, i32 %185, i8* %186)
  %188 = load i8*, i8** %19, align 8
  %189 = load i64, i64* %21, align 8
  %190 = load i32*, i32** %9, align 8
  %191 = call i64 @bfd_bwrite(i8* %188, i64 %189, i32* %190)
  %192 = load i64, i64* %21, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %169
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %8, align 4
  br label %215

196:                                              ; preds = %169
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %22, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %22, align 4
  br label %161

200:                                              ; preds = %161
  %201 = load i32*, i32** %9, align 8
  %202 = load i8*, i8** %19, align 8
  %203 = call i32 @bfd_release(i32* %201, i8* %202)
  br label %204

204:                                              ; preds = %200, %140
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %206 = load i32*, i32** %12, align 8
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @set_index(%struct.TYPE_18__* %205, i32 %207)
  %209 = load i32, i32* %16, align 4
  %210 = add i32 %209, 1
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %211, align 4
  %213 = add i32 %212, %210
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* @TRUE, align 4
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %204, %194, %158, %138, %123
  %216 = load i32, i32* %8, align 4
  ret i32 %216
}

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_13__*) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_13__*) #1

declare dso_local i32 @coff_fix_symbol_name(i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, i64*, i32**, i64*) #1

declare dso_local i64 @bfd_coff_symesz(i32*) #1

declare dso_local i8* @bfd_alloc(i32*, i64) #1

declare dso_local i32 @bfd_coff_swap_sym_out(i32*, %struct.TYPE_14__*, i8*) #1

declare dso_local i64 @bfd_bwrite(i8*, i64, i32*) #1

declare dso_local i32 @bfd_release(i32*, i8*) #1

declare dso_local i64 @bfd_coff_auxesz(i32*) #1

declare dso_local i32 @bfd_coff_swap_aux_out(i32*, i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @set_index(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
