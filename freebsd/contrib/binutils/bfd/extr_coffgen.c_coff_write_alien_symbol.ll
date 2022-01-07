; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_write_alien_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_write_alien_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i8*, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i64, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32, i64, i64, i64, i8* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@T_NULL = common dso_local global i64 0, align 8
@N_UNDEF = common dso_local global i8* null, align 8
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@C_STAT = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@C_NT_WEAK = common dso_local global i32 0, align 4
@C_WEAKEXT = common dso_local global i32 0, align 4
@C_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_22__*, i32*, i32*, i32**, i32*)* @coff_write_alien_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_write_alien_symbol(i32* %0, %struct.TYPE_22__* %1, i32* %2, i32* %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %14, align 8
  %17 = load i64, i64* @T_NULL, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  store i64 %17, i64* %21, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = call i64 @bfd_is_und_section(%struct.TYPE_15__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %6
  %32 = load i8*, i8** @N_UNDEF, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 5
  store i8* %32, i8** %36, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 4
  store i64 %39, i64* %43, align 8
  br label %135

44:                                               ; preds = %6
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = call i64 @bfd_is_com_section(%struct.TYPE_15__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i8*, i8** @N_UNDEF, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 5
  store i8* %51, i8** %55, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 4
  store i64 %58, i64* %62, align 8
  br label %134

63:                                               ; preds = %44
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BSF_DEBUGGING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %72, align 8
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %7, align 4
  br label %193

74:                                               ; preds = %63
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 5
  store i8* %81, i8** %85, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %88, %93
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 4
  store i64 %94, i64* %98, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @obj_pe(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %74
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %109
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %102, %74
  %117 = load i32*, i32** %8, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %119 = call %struct.TYPE_21__* @coff_symbol_from(i32* %117, %struct.TYPE_22__* %118)
  store %struct.TYPE_21__* %119, %struct.TYPE_21__** %16, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %121 = icmp ne %struct.TYPE_21__* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = call %struct.TYPE_16__* @bfd_asymbol_bfd(i32* %124)
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 3
  store i64 %127, i64* %131, align 8
  br label %132

132:                                              ; preds = %122, %116
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %50
  br label %135

135:                                              ; preds = %134, %31
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @BSF_LOCAL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %135
  %147 = load i32, i32* @C_STAT, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 8
  br label %180

152:                                              ; preds = %135
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @BSF_WEAK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %152
  %160 = load i32*, i32** %8, align 8
  %161 = call i64 @obj_pe(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @C_NT_WEAK, align 4
  br label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @C_WEAKEXT, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  store i32 %168, i32* %172, align 8
  br label %179

173:                                              ; preds = %152
  %174 = load i32, i32* @C_EXT, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  store i32 %174, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %167
  br label %180

180:                                              ; preds = %179, %146
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  store i64 0, i64* %184, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = load i32**, i32*** %12, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = call i32 @coff_write_symbol(i32* %185, %struct.TYPE_22__* %186, %struct.TYPE_20__* %187, i32* %188, i32* %189, i32** %190, i32* %191)
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %180, %70
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_15__*) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_15__*) #1

declare dso_local i64 @obj_pe(i32*) #1

declare dso_local %struct.TYPE_21__* @coff_symbol_from(i32*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_16__* @bfd_asymbol_bfd(i32*) #1

declare dso_local i32 @coff_write_symbol(i32*, %struct.TYPE_22__*, %struct.TYPE_20__*, i32*, i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
