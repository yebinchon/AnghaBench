; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_du.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_du.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_ofile = type { i32 }
%struct.coff_sfile = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i8* }
%struct.IT_du = type { i32, i32, i32, i32*, i32*, i32*, i8*, i32, i64, i64, i64 }

@abfd = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c" section %6s 0x%08x..0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"c_gcc\00", align 1
@DATE = common dso_local global i32 0, align 4
@file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_ofile*, %struct.coff_sfile*, i32)* @wr_du to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wr_du(%struct.coff_ofile* %0, %struct.coff_sfile* %1, i32 %2) #0 {
  %4 = alloca %struct.coff_ofile*, align 8
  %5 = alloca %struct.coff_sfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.IT_du, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.coff_ofile* %0, %struct.coff_ofile** %4, align 8
  store %struct.coff_sfile* %1, %struct.coff_sfile** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.coff_ofile*, %struct.coff_ofile** %4, align 8
  %16 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @nints(i32 %17)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  %20 = load %struct.coff_ofile*, %struct.coff_ofile** %4, align 8
  %21 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @nints(i32 %22)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %12, align 8
  %25 = load i32, i32* @abfd, align 4
  %26 = call i32 @bfd_get_file_flags(i32 %25)
  %27 = load i32, i32* @EXEC_P, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 1
  %32 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 10
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.coff_ofile*, %struct.coff_ofile** %4, align 8
  %39 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @xcalloc(i32 4, i32 %44)
  %46 = inttoptr i64 %45 to i32*
  %47 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 3
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @nints(i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 4
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @nints(i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 5
  store i32* %56, i32** %57, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %72, %3
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 -1, i32* %67, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %58

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %198, %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %201

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %92 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %82
  %101 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %102 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %110 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %108, %116
  %118 = add nsw i32 %117, 1
  %119 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %118, i32* %123, align 4
  %124 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %125 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %131, i32* %136, align 4
  br label %148

137:                                              ; preds = %82
  %138 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 0, i32* %142, align 4
  %143 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %100
  %149 = load i64, i64* @debug, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %194

151:                                              ; preds = %148
  %152 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %153 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = icmp ne %struct.TYPE_3__* %159, null
  br i1 %160, label %161, label %193

161:                                              ; preds = %151
  %162 = load %struct.coff_sfile*, %struct.coff_sfile** %5, align 8
  %163 = getelementptr inbounds %struct.coff_sfile, %struct.coff_sfile* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %183, %189
  %191 = sub nsw i32 %190, 1
  %192 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %171, i32 %177, i32 %191)
  br label %193

193:                                              ; preds = %161, %151
  br label %194

194:                                              ; preds = %193, %148
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 1
  %197 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 2
  store i32 %196, i32* %197, align 8
  br label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  br label %78

201:                                              ; preds = %78
  %202 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 6
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %202, align 8
  %203 = load i32, i32* @DATE, align 4
  %204 = getelementptr inbounds %struct.IT_du, %struct.IT_du* %7, i32 0, i32 7
  store i32 %203, i32* %204, align 8
  %205 = load i32, i32* @file, align 4
  %206 = call i32 @sysroff_swap_du_out(i32 %205, %struct.IT_du* %7)
  ret void
}

declare dso_local i8* @nints(i32) #1

declare dso_local i32 @bfd_get_file_flags(i32) #1

declare dso_local i64 @xcalloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @sysroff_swap_du_out(i32, %struct.IT_du*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
