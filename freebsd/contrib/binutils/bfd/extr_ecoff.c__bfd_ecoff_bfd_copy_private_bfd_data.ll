; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_bfd_copy_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_bfd_copy_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecoff_debug_info = type { i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32, i32, i32, %struct.ecoff_debug_info }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (i32*, %struct.TYPE_13__*, i32)*, i32 (i32*, i32, %struct.TYPE_13__*)* }

@bfd_target_ecoff_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ifdNil = common dso_local global i32 0, align 4
@indexNil = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_ecoff_bfd_copy_private_bfd_data(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ecoff_debug_info*, align 8
  %7 = alloca %struct.ecoff_debug_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_15__* @ecoff_data(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 4
  store %struct.ecoff_debug_info* %15, %struct.ecoff_debug_info** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_15__* @ecoff_data(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 4
  store %struct.ecoff_debug_info* %18, %struct.ecoff_debug_info** %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @bfd_get_flavour(i32* %19)
  %21 = load i64, i64* @bfd_target_ecoff_flavour, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @bfd_get_flavour(i32* %24)
  %26 = load i64, i64* @bfd_target_ecoff_flavour, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %2
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %3, align 8
  br label %278

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = call %struct.TYPE_15__* @ecoff_data(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_15__* @ecoff_data(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call %struct.TYPE_15__* @ecoff_data(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call %struct.TYPE_15__* @ecoff_data(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call %struct.TYPE_15__* @ecoff_data(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call %struct.TYPE_15__* @ecoff_data(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %71, %30
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = call %struct.TYPE_15__* @ecoff_data(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call %struct.TYPE_15__* @ecoff_data(i32* %64)
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %63, i32* %70, align 4
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %52

74:                                               ; preds = %52
  %75 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %76 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %80 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 10
  store i32 %78, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = call i64 @bfd_get_symcount(i32* %82)
  store i64 %83, i64* %10, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i32** @bfd_get_outsymbols(i32* %84)
  store i32** %85, i32*** %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %74
  %89 = load i32**, i32*** %9, align 8
  %90 = icmp eq i32** %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %74
  %92 = load i64, i64* @TRUE, align 8
  store i64 %92, i64* %3, align 8
  br label %278

93:                                               ; preds = %88
  %94 = load i64, i64* @FALSE, align 8
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %108, %93
  %96 = load i64, i64* %10, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i32**, i32*** %9, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = call %struct.TYPE_14__* @ecoffsymbol(i32* %100)
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i64, i64* @TRUE, align 8
  store i64 %106, i64* %11, align 8
  br label %113

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %10, align 8
  %111 = load i32**, i32*** %9, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i32 1
  store i32** %112, i32*** %9, align 8
  br label %95

113:                                              ; preds = %105, %95
  %114 = load i64, i64* %11, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %232

116:                                              ; preds = %113
  %117 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %118 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %122 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 9
  store i32 %120, i32* %123, align 4
  %124 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %125 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %129 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 8
  store i32 %127, i32* %130, align 4
  %131 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %132 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %135 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %137 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %141 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 7
  store i32 %139, i32* %142, align 4
  %143 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %144 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %147 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 4
  %148 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %149 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %153 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 6
  store i32 %151, i32* %154, align 4
  %155 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %156 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %159 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 4
  %160 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %161 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %165 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  store i32 %163, i32* %166, align 4
  %167 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %168 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %171 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 4
  %172 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %173 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %177 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 4
  store i32 %175, i32* %178, align 4
  %179 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %180 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %183 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %185 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %189 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 4
  %191 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %192 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %195 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 4
  %196 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %197 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %201 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 4
  %203 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %204 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %207 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %209 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %213 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  store i32 %211, i32* %214, align 4
  %215 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %216 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %219 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %221 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %225 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 4
  %227 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %228 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %7, align 8
  %231 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  br label %276

232:                                              ; preds = %113
  %233 = load i32*, i32** %5, align 8
  %234 = call i64 @bfd_get_symcount(i32* %233)
  store i64 %234, i64* %10, align 8
  %235 = load i32*, i32** %5, align 8
  %236 = call i32** @bfd_get_outsymbols(i32* %235)
  store i32** %236, i32*** %9, align 8
  br label %237

237:                                              ; preds = %270, %232
  %238 = load i64, i64* %10, align 8
  %239 = icmp ugt i64 %238, 0
  br i1 %239, label %240, label %275

240:                                              ; preds = %237
  %241 = load i32*, i32** %5, align 8
  %242 = call %struct.TYPE_16__* @ecoff_backend(i32* %241)
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = load i32 (i32*, i32, %struct.TYPE_13__*)*, i32 (i32*, i32, %struct.TYPE_13__*)** %244, align 8
  %246 = load i32*, i32** %5, align 8
  %247 = load i32**, i32*** %9, align 8
  %248 = load i32*, i32** %247, align 8
  %249 = call %struct.TYPE_14__* @ecoffsymbol(i32* %248)
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 %245(i32* %246, i32 %251, %struct.TYPE_13__* %12)
  %253 = load i32, i32* @ifdNil, align 4
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i32 %253, i32* %254, align 4
  %255 = load i32, i32* @indexNil, align 4
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 4
  %258 = load i32*, i32** %5, align 8
  %259 = call %struct.TYPE_16__* @ecoff_backend(i32* %258)
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = load i32 (i32*, %struct.TYPE_13__*, i32)*, i32 (i32*, %struct.TYPE_13__*, i32)** %261, align 8
  %263 = load i32*, i32** %5, align 8
  %264 = load i32**, i32*** %9, align 8
  %265 = load i32*, i32** %264, align 8
  %266 = call %struct.TYPE_14__* @ecoffsymbol(i32* %265)
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 %262(i32* %263, %struct.TYPE_13__* %12, i32 %268)
  br label %270

270:                                              ; preds = %240
  %271 = load i64, i64* %10, align 8
  %272 = add i64 %271, -1
  store i64 %272, i64* %10, align 8
  %273 = load i32**, i32*** %9, align 8
  %274 = getelementptr inbounds i32*, i32** %273, i32 1
  store i32** %274, i32*** %9, align 8
  br label %237

275:                                              ; preds = %237
  br label %276

276:                                              ; preds = %275, %116
  %277 = load i64, i64* @TRUE, align 8
  store i64 %277, i64* %3, align 8
  br label %278

278:                                              ; preds = %276, %91, %28
  %279 = load i64, i64* %3, align 8
  ret i64 %279
}

declare dso_local %struct.TYPE_15__* @ecoff_data(i32*) #1

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i64 @bfd_get_symcount(i32*) #1

declare dso_local i32** @bfd_get_outsymbols(i32*) #1

declare dso_local %struct.TYPE_14__* @ecoffsymbol(i32*) #1

declare dso_local %struct.TYPE_16__* @ecoff_backend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
