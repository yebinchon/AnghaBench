; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_swap_aouthdr_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_swap_aouthdr_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.internal_aouthdr = type { i32, i32, i32, i64, i64, i32, i8*, i8*, %struct.internal_extra_pe_aouthdr }
%struct.internal_extra_pe_aouthdr = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [74 x i8] c"%B: aout header specifies an invalid number of data-directory entries: %d\00", align 1
@PE_IMPORT_ADDRESS_TABLE = common dso_local global i64 0, align 8
@PE_IMPORT_TABLE = common dso_local global i64 0, align 8
@first_thunk_address = common dso_local global i8* null, align 8
@import_table_size = common dso_local global i32 0, align 4
@thunk_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_XXi_swap_aouthdr_in(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.internal_aouthdr*, align 8
  %10 = alloca %struct.internal_extra_pe_aouthdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.internal_aouthdr*
  store %struct.internal_aouthdr* %18, %struct.internal_aouthdr** %9, align 8
  %19 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %20 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %19, i32 0, i32 8
  store %struct.internal_extra_pe_aouthdr* %20, %struct.internal_extra_pe_aouthdr** %10, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @H_GET_16(i32* %21, i64 %24)
  %26 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %27 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @H_GET_16(i32* %28, i64 %31)
  %33 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %34 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %33, i32 0, i32 7
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @GET_AOUTHDR_TSIZE(i32* %35, i32 %38)
  %40 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %41 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @GET_AOUTHDR_DSIZE(i32* %42, i32 %45)
  %47 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %48 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GET_AOUTHDR_BSIZE(i32* %49, i32 %52)
  %54 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %55 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @GET_AOUTHDR_ENTRY(i32* %56, i32 %59)
  %61 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %62 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @GET_AOUTHDR_TEXT_START(i32* %63, i32 %66)
  %68 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %69 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @GET_AOUTHDR_DATA_START(i32* %70, i32 %73)
  %75 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %76 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %78 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %81 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %83 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %82, i32 0, i32 6
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %86 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %85, i32 0, i32 30
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @H_GET_8(i32* %87, i64 %90)
  %92 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %93 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %92, i32 0, i32 29
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = call i8* @H_GET_8(i32* %94, i64 %98)
  %100 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %101 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %100, i32 0, i32 28
  store i8* %99, i8** %101, align 8
  %102 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %103 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %106 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %105, i32 0, i32 27
  store i64 %104, i64* %106, align 8
  %107 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %108 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %111 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %110, i32 0, i32 26
  store i64 %109, i64* %111, align 8
  %112 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %113 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %116 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %115, i32 0, i32 25
  store i32 %114, i32* %116, align 8
  %117 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %118 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %121 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %123 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %126 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 21
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @GET_OPTHDR_IMAGE_BASE(i32* %127, i32 %130)
  %132 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %133 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %132, i32 0, i32 5
  store i64 %131, i64* %133, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 20
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @H_GET_32(i32* %134, i32 %137)
  %139 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %140 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %139, i32 0, i32 24
  store i8* %138, i8** %140, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 19
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @H_GET_32(i32* %141, i32 %144)
  %146 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %147 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %146, i32 0, i32 23
  store i8* %145, i8** %147, align 8
  %148 = load i32*, i32** %4, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 18
  %151 = load i64, i64* %150, align 8
  %152 = call i8* @H_GET_16(i32* %148, i64 %151)
  %153 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %154 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %153, i32 0, i32 22
  store i8* %152, i8** %154, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 17
  %158 = load i64, i64* %157, align 8
  %159 = call i8* @H_GET_16(i32* %155, i64 %158)
  %160 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %161 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %160, i32 0, i32 21
  store i8* %159, i8** %161, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 16
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @H_GET_16(i32* %162, i64 %165)
  %167 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %168 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %167, i32 0, i32 20
  store i8* %166, i8** %168, align 8
  %169 = load i32*, i32** %4, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 15
  %172 = load i64, i64* %171, align 8
  %173 = call i8* @H_GET_16(i32* %169, i64 %172)
  %174 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %175 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %174, i32 0, i32 19
  store i8* %173, i8** %175, align 8
  %176 = load i32*, i32** %4, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 14
  %179 = load i64, i64* %178, align 8
  %180 = call i8* @H_GET_16(i32* %176, i64 %179)
  %181 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %182 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %181, i32 0, i32 18
  store i8* %180, i8** %182, align 8
  %183 = load i32*, i32** %4, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 13
  %186 = load i64, i64* %185, align 8
  %187 = call i8* @H_GET_16(i32* %183, i64 %186)
  %188 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %189 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %188, i32 0, i32 17
  store i8* %187, i8** %189, align 8
  %190 = load i32*, i32** %4, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @H_GET_32(i32* %190, i32 %193)
  %195 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %196 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %195, i32 0, i32 16
  store i8* %194, i8** %196, align 8
  %197 = load i32*, i32** %4, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @H_GET_32(i32* %197, i32 %200)
  %202 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %203 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %202, i32 0, i32 15
  store i8* %201, i8** %203, align 8
  %204 = load i32*, i32** %4, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 10
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @H_GET_32(i32* %204, i32 %207)
  %209 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %210 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %209, i32 0, i32 14
  store i8* %208, i8** %210, align 8
  %211 = load i32*, i32** %4, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 9
  %214 = load i32, i32* %213, align 8
  %215 = call i8* @H_GET_32(i32* %211, i32 %214)
  %216 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %217 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %216, i32 0, i32 13
  store i8* %215, i8** %217, align 8
  %218 = load i32*, i32** %4, align 8
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 8
  %221 = load i64, i64* %220, align 8
  %222 = call i8* @H_GET_16(i32* %218, i64 %221)
  %223 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %224 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %223, i32 0, i32 12
  store i8* %222, i8** %224, align 8
  %225 = load i32*, i32** %4, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  %229 = call i8* @H_GET_16(i32* %225, i64 %228)
  %230 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %231 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %230, i32 0, i32 11
  store i8* %229, i8** %231, align 8
  %232 = load i32*, i32** %4, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @GET_OPTHDR_SIZE_OF_STACK_RESERVE(i32* %232, i32 %235)
  %237 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %238 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %237, i32 0, i32 10
  store i32 %236, i32* %238, align 4
  %239 = load i32*, i32** %4, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @GET_OPTHDR_SIZE_OF_STACK_COMMIT(i32* %239, i32 %242)
  %244 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %245 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %244, i32 0, i32 9
  store i32 %243, i32* %245, align 8
  %246 = load i32*, i32** %4, align 8
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @GET_OPTHDR_SIZE_OF_HEAP_RESERVE(i32* %246, i32 %249)
  %251 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %252 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %251, i32 0, i32 8
  store i32 %250, i32* %252, align 4
  %253 = load i32*, i32** %4, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @GET_OPTHDR_SIZE_OF_HEAP_COMMIT(i32* %253, i32 %256)
  %258 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %259 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %258, i32 0, i32 7
  store i32 %257, i32* %259, align 8
  %260 = load i32*, i32** %4, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @H_GET_32(i32* %260, i32 %263)
  %265 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %266 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %265, i32 0, i32 6
  store i8* %264, i8** %266, align 8
  %267 = load i32*, i32** %4, align 8
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @H_GET_32(i32* %267, i32 %270)
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %274 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 4
  %275 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %276 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %277, 16
  br i1 %278, label %279, label %288

279:                                              ; preds = %3
  %280 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %281 = load i32*, i32** %4, align 8
  %282 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %283 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @_bfd_error_handler(i32 %280, i32* %281, i32 %284)
  %286 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %287 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %286, i32 0, i32 3
  store i32 0, i32* %287, align 4
  br label %288

288:                                              ; preds = %279, %3
  store i32 0, i32* %11, align 4
  br label %289

289:                                              ; preds = %343, %288
  %290 = load i32, i32* %11, align 4
  %291 = icmp slt i32 %290, 16
  br i1 %291, label %292, label %346

292:                                              ; preds = %289
  %293 = load i32*, i32** %4, align 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = load i32**, i32*** %295, align 8
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32*, i32** %296, i64 %298
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @H_GET_32(i32* %293, i32 %302)
  %304 = ptrtoint i8* %303 to i32
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* %12, align 4
  %306 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %307 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %306, i32 0, i32 4
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  store i32 %305, i32* %312, align 8
  %313 = load i32, i32* %12, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %334

315:                                              ; preds = %292
  %316 = load i32*, i32** %4, align 8
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 0
  %319 = load i32**, i32*** %318, align 8
  %320 = load i32, i32* %11, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = call i8* @H_GET_32(i32* %316, i32 %325)
  %327 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %328 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %327, i32 0, i32 4
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = load i32, i32* %11, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 1
  store i8* %326, i8** %333, align 8
  br label %342

334:                                              ; preds = %292
  %335 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %336 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %335, i32 0, i32 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 1
  store i8* null, i8** %341, align 8
  br label %342

342:                                              ; preds = %334, %315
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %11, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %11, align 4
  br label %289

346:                                              ; preds = %289
  %347 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %348 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %364

351:                                              ; preds = %346
  %352 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %353 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %352, i32 0, i32 5
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %356 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %358, %354
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %356, align 8
  %361 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %362 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  store i32 %363, i32* %362, align 8
  br label %364

364:                                              ; preds = %351, %346
  %365 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %366 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %365, i32 0, i32 4
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %382

369:                                              ; preds = %364
  %370 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %371 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %370, i32 0, i32 5
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %374 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = add nsw i64 %376, %372
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %374, align 4
  %379 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %380 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  store i32 %381, i32* %380, align 4
  br label %382

382:                                              ; preds = %369, %364
  %383 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %384 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %400

387:                                              ; preds = %382
  %388 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %389 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %388, i32 0, i32 5
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %392 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = add nsw i64 %394, %390
  %396 = trunc i64 %395 to i32
  store i32 %396, i32* %392, align 8
  %397 = load %struct.internal_aouthdr*, %struct.internal_aouthdr** %9, align 8
  %398 = getelementptr inbounds %struct.internal_aouthdr, %struct.internal_aouthdr* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  store i32 %399, i32* %398, align 8
  br label %400

400:                                              ; preds = %387, %382
  ret void
}

declare dso_local i8* @H_GET_16(i32*, i64) #1

declare dso_local i64 @GET_AOUTHDR_TSIZE(i32*, i32) #1

declare dso_local i64 @GET_AOUTHDR_DSIZE(i32*, i32) #1

declare dso_local i32 @GET_AOUTHDR_BSIZE(i32*, i32) #1

declare dso_local i32 @GET_AOUTHDR_ENTRY(i32*, i32) #1

declare dso_local i32 @GET_AOUTHDR_TEXT_START(i32*, i32) #1

declare dso_local i32 @GET_AOUTHDR_DATA_START(i32*, i32) #1

declare dso_local i8* @H_GET_8(i32*, i64) #1

declare dso_local i64 @GET_OPTHDR_IMAGE_BASE(i32*, i32) #1

declare dso_local i8* @H_GET_32(i32*, i32) #1

declare dso_local i32 @GET_OPTHDR_SIZE_OF_STACK_RESERVE(i32*, i32) #1

declare dso_local i32 @GET_OPTHDR_SIZE_OF_STACK_COMMIT(i32*, i32) #1

declare dso_local i32 @GET_OPTHDR_SIZE_OF_HEAP_RESERVE(i32*, i32) #1

declare dso_local i32 @GET_OPTHDR_SIZE_OF_HEAP_COMMIT(i32*, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
