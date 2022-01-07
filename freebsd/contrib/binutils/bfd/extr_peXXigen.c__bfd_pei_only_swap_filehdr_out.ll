; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_only_swap_filehdr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_only_swap_filehdr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_filehdr = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32*, i32 }
%struct.external_PEI_filehdr = type { i32, i32*, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@F_RELFLG = common dso_local global i32 0, align 4
@F_DLL = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i32 0, align 4
@NT_SIGNATURE = common dso_local global i32 0, align 4
@FILHSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_XXi_only_swap_filehdr_out(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.internal_filehdr*, align 8
  %9 = alloca %struct.external_PEI_filehdr*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.internal_filehdr*
  store %struct.internal_filehdr* %11, %struct.internal_filehdr** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.external_PEI_filehdr*
  store %struct.external_PEI_filehdr* %13, %struct.external_PEI_filehdr** %9, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_4__* @pe_data(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @F_RELFLG, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %23 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %19, %3
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_4__* @pe_data(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @F_DLL, align 4
  %34 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %35 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @DOSMAGIC, align 4
  %40 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %41 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %44 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 144, i32* %45, align 4
  %46 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %47 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 3, i32* %48, align 8
  %49 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %50 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %53 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i32 4, i32* %54, align 8
  %55 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %56 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  store i32 0, i32* %57, align 4
  %58 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %59 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 6
  store i32 65535, i32* %60, align 8
  %61 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %62 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 7
  store i32 0, i32* %63, align 4
  %64 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %65 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 8
  store i32 184, i32* %66, align 8
  %67 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %68 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 9
  store i32 0, i32* %69, align 4
  %70 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %71 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 10
  store i32 0, i32* %72, align 8
  %73 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %74 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 11
  store i32 0, i32* %75, align 4
  %76 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %77 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 12
  store i32 64, i32* %78, align 8
  %79 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %80 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 13
  store i32 0, i32* %81, align 4
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %93, %38
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %87 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 14
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %82

96:                                               ; preds = %82
  %97 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %98 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 15
  store i32 0, i32* %99, align 8
  %100 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %101 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 16
  store i32 0, i32* %102, align 4
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %114, %96
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 10
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %108 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 17
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %103

117:                                              ; preds = %103
  %118 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %119 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 18
  store i32 128, i32* %120, align 8
  %121 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %122 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 19
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 247078670, i32* %125, align 4
  %126 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %127 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 19
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 -855002112, i32* %130, align 4
  %131 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %132 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 19
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 1275181089, i32* %135, align 4
  %136 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %137 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 19
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  store i32 1750344141, i32* %140, align 4
  %141 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %142 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 19
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  store i32 1881174889, i32* %145, align 4
  %146 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %147 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 19
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 5
  store i32 1919381362, i32* %150, align 4
  %151 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %152 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 19
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 6
  store i32 1663069537, i32* %155, align 4
  %156 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %157 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 19
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 7
  store i32 1869508193, i32* %160, align 4
  %161 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %162 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 19
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 8
  store i32 1700929652, i32* %165, align 4
  %166 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %167 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 19
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 9
  store i32 1853190688, i32* %170, align 4
  %171 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %172 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 19
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 10
  store i32 544106784, i32* %175, align 4
  %176 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %177 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 19
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 11
  store i32 542330692, i32* %180, align 4
  %181 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %182 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 19
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 12
  store i32 1701080941, i32* %185, align 4
  %186 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %187 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 19
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 13
  store i32 168627502, i32* %190, align 4
  %191 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %192 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 19
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 14
  store i32 36, i32* %195, align 4
  %196 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %197 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 19
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 15
  store i32 0, i32* %200, align 4
  %201 = load i32, i32* @NT_SIGNATURE, align 4
  %202 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %203 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 20
  store i32 %201, i32* %204, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %207 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %210 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %209, i32 0, i32 27
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @H_PUT_16(i32* %205, i32 %208, i32 %211)
  %213 = load i32*, i32** %4, align 8
  %214 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %215 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %218 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %217, i32 0, i32 26
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @H_PUT_16(i32* %213, i32 %216, i32 %219)
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 @time(i32 0)
  %223 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %224 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %223, i32 0, i32 25
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @H_PUT_32(i32* %221, i32 %222, i32 %225)
  %227 = load i32*, i32** %4, align 8
  %228 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %229 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %232 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %231, i32 0, i32 24
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @PUT_FILEHDR_SYMPTR(i32* %227, i32 %230, i32 %233)
  %235 = load i32*, i32** %4, align 8
  %236 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %237 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %240 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %239, i32 0, i32 23
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @H_PUT_32(i32* %235, i32 %238, i32 %241)
  %243 = load i32*, i32** %4, align 8
  %244 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %245 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %248 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %247, i32 0, i32 22
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @H_PUT_16(i32* %243, i32 %246, i32 %249)
  %251 = load i32*, i32** %4, align 8
  %252 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %253 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %256 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %255, i32 0, i32 21
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @H_PUT_16(i32* %251, i32 %254, i32 %257)
  %259 = load i32*, i32** %4, align 8
  %260 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %261 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %265 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %264, i32 0, i32 20
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @H_PUT_16(i32* %259, i32 %263, i32 %266)
  %268 = load i32*, i32** %4, align 8
  %269 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %270 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %274 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %273, i32 0, i32 19
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @H_PUT_16(i32* %268, i32 %272, i32 %275)
  %277 = load i32*, i32** %4, align 8
  %278 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %279 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %283 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %282, i32 0, i32 18
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @H_PUT_16(i32* %277, i32 %281, i32 %284)
  %286 = load i32*, i32** %4, align 8
  %287 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %288 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %292 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %291, i32 0, i32 17
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @H_PUT_16(i32* %286, i32 %290, i32 %293)
  %295 = load i32*, i32** %4, align 8
  %296 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %297 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %301 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %300, i32 0, i32 16
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @H_PUT_16(i32* %295, i32 %299, i32 %302)
  %304 = load i32*, i32** %4, align 8
  %305 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %306 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %310 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %309, i32 0, i32 15
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @H_PUT_16(i32* %304, i32 %308, i32 %311)
  %313 = load i32*, i32** %4, align 8
  %314 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %315 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %319 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %318, i32 0, i32 14
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @H_PUT_16(i32* %313, i32 %317, i32 %320)
  %322 = load i32*, i32** %4, align 8
  %323 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %324 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %328 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %327, i32 0, i32 13
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @H_PUT_16(i32* %322, i32 %326, i32 %329)
  %331 = load i32*, i32** %4, align 8
  %332 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %333 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 8
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %337 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %336, i32 0, i32 12
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @H_PUT_16(i32* %331, i32 %335, i32 %338)
  %340 = load i32*, i32** %4, align 8
  %341 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %342 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 9
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %346 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %345, i32 0, i32 11
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @H_PUT_16(i32* %340, i32 %344, i32 %347)
  %349 = load i32*, i32** %4, align 8
  %350 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %351 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 10
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %355 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %354, i32 0, i32 10
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @H_PUT_16(i32* %349, i32 %353, i32 %356)
  %358 = load i32*, i32** %4, align 8
  %359 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %360 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %359, i32 0, i32 5
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 11
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %364 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %363, i32 0, i32 9
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @H_PUT_16(i32* %358, i32 %362, i32 %365)
  %367 = load i32*, i32** %4, align 8
  %368 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %369 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %368, i32 0, i32 5
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 12
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %373 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %372, i32 0, i32 8
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @H_PUT_16(i32* %367, i32 %371, i32 %374)
  %376 = load i32*, i32** %4, align 8
  %377 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %378 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 13
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %382 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %381, i32 0, i32 7
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @H_PUT_16(i32* %376, i32 %380, i32 %383)
  store i32 0, i32* %7, align 4
  br label %385

385:                                              ; preds = %406, %117
  %386 = load i32, i32* %7, align 4
  %387 = icmp slt i32 %386, 4
  br i1 %387, label %388, label %409

388:                                              ; preds = %385
  %389 = load i32*, i32** %4, align 8
  %390 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %391 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %390, i32 0, i32 5
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 14
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %7, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %399 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %398, i32 0, i32 6
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %7, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @H_PUT_16(i32* %389, i32 %397, i32 %404)
  br label %406

406:                                              ; preds = %388
  %407 = load i32, i32* %7, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %7, align 4
  br label %385

409:                                              ; preds = %385
  %410 = load i32*, i32** %4, align 8
  %411 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %412 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 15
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %416 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @H_PUT_16(i32* %410, i32 %414, i32 %417)
  %419 = load i32*, i32** %4, align 8
  %420 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %421 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %420, i32 0, i32 5
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 16
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %425 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @H_PUT_16(i32* %419, i32 %423, i32 %426)
  store i32 0, i32* %7, align 4
  br label %428

428:                                              ; preds = %449, %409
  %429 = load i32, i32* %7, align 4
  %430 = icmp slt i32 %429, 10
  br i1 %430, label %431, label %452

431:                                              ; preds = %428
  %432 = load i32*, i32** %4, align 8
  %433 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %434 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %433, i32 0, i32 5
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 17
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %7, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %442 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %441, i32 0, i32 3
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %7, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @H_PUT_16(i32* %432, i32 %440, i32 %447)
  br label %449

449:                                              ; preds = %431
  %450 = load i32, i32* %7, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %7, align 4
  br label %428

452:                                              ; preds = %428
  %453 = load i32*, i32** %4, align 8
  %454 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %455 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 18
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %459 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @H_PUT_32(i32* %453, i32 %457, i32 %460)
  store i32 0, i32* %7, align 4
  br label %462

462:                                              ; preds = %483, %452
  %463 = load i32, i32* %7, align 4
  %464 = icmp slt i32 %463, 16
  br i1 %464, label %465, label %486

465:                                              ; preds = %462
  %466 = load i32*, i32** %4, align 8
  %467 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %468 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %467, i32 0, i32 5
  %469 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %468, i32 0, i32 19
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %7, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %476 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %475, i32 0, i32 1
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %7, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @H_PUT_32(i32* %466, i32 %474, i32 %481)
  br label %483

483:                                              ; preds = %465
  %484 = load i32, i32* %7, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %7, align 4
  br label %462

486:                                              ; preds = %462
  %487 = load i32*, i32** %4, align 8
  %488 = load %struct.internal_filehdr*, %struct.internal_filehdr** %8, align 8
  %489 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %488, i32 0, i32 5
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 20
  %491 = load i32, i32* %490, align 8
  %492 = load %struct.external_PEI_filehdr*, %struct.external_PEI_filehdr** %9, align 8
  %493 = getelementptr inbounds %struct.external_PEI_filehdr, %struct.external_PEI_filehdr* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @H_PUT_32(i32* %487, i32 %491, i32 %494)
  %496 = load i32, i32* @FILHSZ, align 4
  ret i32 %496
}

declare dso_local %struct.TYPE_4__* @pe_data(i32*) #1

declare dso_local i32 @H_PUT_16(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @PUT_FILEHDR_SYMPTR(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
