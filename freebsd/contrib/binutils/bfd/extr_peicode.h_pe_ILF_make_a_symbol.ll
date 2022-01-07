; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_ILF_make_a_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_ILF_make_a_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i64, i64, i64*, i64, %struct.TYPE_17__*, %struct.TYPE_26__*, %struct.TYPE_15__**, %struct.TYPE_15__*, i32 }
%struct.TYPE_17__ = type { i16*, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i16, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_26__*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }

@BSF_LOCAL = common dso_local global i32 0, align 4
@C_STAT = common dso_local global i16 0, align 2
@C_EXT = common dso_local global i16 0, align 2
@NUM_ILF_SYMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@bfd_und_section = common dso_local global i32 0, align 4
@BSF_EXPORT = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_FUNCTION = common dso_local global i32 0, align 4
@C_THUMBEXT = common dso_local global i16 0, align 2
@C_THUMBEXTFUNC = common dso_local global i16 0, align 2
@C_THUMBSTAT = common dso_local global i16 0, align 2
@THUMBPEMAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i8*, i8*, %struct.TYPE_16__*, i32)* @pe_ILF_make_a_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pe_ILF_make_a_symbol(%struct.TYPE_25__* %0, i8* %1, i8* %2, %struct.TYPE_16__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i16, align 2
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @BSF_LOCAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i16, i16* @C_STAT, align 2
  store i16 %20, i16* %14, align 2
  br label %23

21:                                               ; preds = %5
  %22 = load i16, i16* @C_EXT, align 2
  store i16 %22, i16* %14, align 2
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NUM_ILF_SYMS, align 8
  %28 = icmp slt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BFD_ASSERT(i32 %29)
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %11, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 7
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  store %struct.TYPE_26__* %36, %struct.TYPE_26__** %12, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %13, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @sprintf(i64 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = icmp eq %struct.TYPE_16__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  store %struct.TYPE_16__* bitcast (i32* @bfd_und_section to %struct.TYPE_16__*), %struct.TYPE_16__** %9, align 8
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @H_PUT_32(i32 %52, i64 %59, i32 %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @H_PUT_16(i32 %68, i32 %71, i32 %74)
  %76 = load i16, i16* %14, align 2
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i16*, i16** %78, align 8
  %80 = getelementptr inbounds i16, i16* %79, i64 0
  store i16 %76, i16* %80, align 2
  %81 = load i16, i16* %14, align 2
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  store i16 %81, i16* %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  store i32 %88, i32* %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = ptrtoint %struct.TYPE_15__* %93 to i64
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i64 %94, i64* %100, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load i32, i32* @BSF_EXPORT, align 4
  %114 = load i32, i32* @BSF_GLOBAL, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 2
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %124, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  store %struct.TYPE_26__* %125, %struct.TYPE_26__** %127, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 4
  %133 = load i64*, i64** %132, align 8
  store i64 %130, i64* %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 8
  %137 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %136, align 8
  store %struct.TYPE_15__* %134, %struct.TYPE_15__** %137, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 9
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 1
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %143, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 8
  %148 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %148, i32 1
  store %struct.TYPE_15__** %149, %struct.TYPE_15__*** %147, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 4
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i32 1
  store i64* %153, i64** %151, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 7
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 1
  store %struct.TYPE_26__* %157, %struct.TYPE_26__** %155, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 1
  store %struct.TYPE_17__* %161, %struct.TYPE_17__** %159, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = call i64 @strlen(i8* %162)
  %164 = load i8*, i8** %7, align 8
  %165 = call i64 @strlen(i8* %164)
  %166 = add nsw i64 %163, %165
  %167 = add nsw i64 %166, 1
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %174, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @BFD_ASSERT(i32 %179)
  ret void
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @sprintf(i64, i8*, i8*, i8*) #1

declare dso_local i32 @H_PUT_32(i32, i64, i32) #1

declare dso_local i32 @H_PUT_16(i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
