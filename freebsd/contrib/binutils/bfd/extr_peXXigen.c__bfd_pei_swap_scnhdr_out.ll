; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_swap_scnhdr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_swap_scnhdr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_scnhdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pe_required_section_flags = type { i8*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@SCNHSZ = common dso_local global i32 0, align 4
@IMAGE_SCN_CNT_UNINITIALIZED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".arch\00", align 1
@IMAGE_SCN_MEM_READ = common dso_local global i32 0, align 4
@IMAGE_SCN_CNT_INITIALIZED_DATA = common dso_local global i32 0, align 4
@IMAGE_SCN_MEM_DISCARDABLE = common dso_local global i32 0, align 4
@IMAGE_SCN_ALIGN_8BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@IMAGE_SCN_MEM_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".edata\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".idata\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".pdata\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".rdata\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c".reloc\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c".rsrc\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@IMAGE_SCN_CNT_CODE = common dso_local global i32 0, align 4
@IMAGE_SCN_MEM_EXECUTE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c".tls\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c".xdata\00", align 1
@WP_TEXT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"%s: line number overflow: 0x%lx > 0xffff\00", align 1
@bfd_error_file_truncated = common dso_local global i32 0, align 4
@IMAGE_SCN_LNK_NRELOC_OVFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_XXi_swap_scnhdr_out(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.internal_scnhdr*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [13 x %struct.pe_required_section_flags], align 16
  %13 = alloca %struct.pe_required_section_flags*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.internal_scnhdr*
  store %struct.internal_scnhdr* %15, %struct.internal_scnhdr** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  %18 = load i32, i32* @SCNHSZ, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %23 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memcpy(i32 %21, i32 %24, i32 4)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %28 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.TYPE_9__* @pe_data(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %29, %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PUT_SCNHDR_VADDR(i32* %26, i32 %35, i32 %38)
  %40 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %41 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IMAGE_SCN_CNT_UNINITIALIZED_DATA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %3
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @bfd_pe_executable_p(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %52 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %58

54:                                               ; preds = %46
  store i64 0, i64* %10, align 8
  %55 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %56 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %72

59:                                               ; preds = %3
  %60 = load i32*, i32** %4, align 8
  %61 = call i64 @bfd_pe_executable_p(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %65 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  br label %68

67:                                               ; preds = %59
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %67, %63
  %69 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %70 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PUT_SCNHDR_SIZE(i32* %73, i64 %74, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PUT_SCNHDR_PADDR(i32* %79, i64 %80, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %87 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PUT_SCNHDR_SCNPTR(i32* %85, i32 %88, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %95 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PUT_SCNHDR_RELPTR(i32* %93, i32 %96, i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %103 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PUT_SCNHDR_LNNOPTR(i32* %101, i32 %104, i32 %107)
  %109 = getelementptr inbounds [13 x %struct.pe_required_section_flags], [13 x %struct.pe_required_section_flags]* %12, i64 0, i64 0
  %110 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %110, align 16
  %111 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %109, i32 0, i32 1
  %112 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %113 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @IMAGE_SCN_MEM_DISCARDABLE, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @IMAGE_SCN_ALIGN_8BYTES, align 4
  %118 = or i32 %116, %117
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %111, align 8
  %120 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %109, i64 1
  %121 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %121, align 16
  %122 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %120, i32 0, i32 1
  %123 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %124 = load i32, i32* @IMAGE_SCN_CNT_UNINITIALIZED_DATA, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @IMAGE_SCN_MEM_WRITE, align 4
  %127 = or i32 %125, %126
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %122, align 8
  %129 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %120, i64 1
  %130 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %130, align 16
  %131 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %129, i32 0, i32 1
  %132 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %133 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @IMAGE_SCN_MEM_WRITE, align 4
  %136 = or i32 %134, %135
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %131, align 8
  %138 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %129, i64 1
  %139 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %139, align 16
  %140 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %138, i32 0, i32 1
  %141 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %142 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %143 = or i32 %141, %142
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %140, align 8
  %145 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %138, i64 1
  %146 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %146, align 16
  %147 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %145, i32 0, i32 1
  %148 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %149 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @IMAGE_SCN_MEM_WRITE, align 4
  %152 = or i32 %150, %151
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %147, align 8
  %154 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %145, i64 1
  %155 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %154, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %155, align 16
  %156 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %154, i32 0, i32 1
  %157 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %158 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %159 = or i32 %157, %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %156, align 8
  %161 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %154, i64 1
  %162 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %162, align 16
  %163 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %161, i32 0, i32 1
  %164 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %165 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %166 = or i32 %164, %165
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %163, align 8
  %168 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %161, i64 1
  %169 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %168, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %169, align 16
  %170 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %168, i32 0, i32 1
  %171 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %172 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @IMAGE_SCN_MEM_DISCARDABLE, align 4
  %175 = or i32 %173, %174
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %170, align 8
  %177 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %168, i64 1
  %178 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %177, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %178, align 16
  %179 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %177, i32 0, i32 1
  %180 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %181 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @IMAGE_SCN_MEM_WRITE, align 4
  %184 = or i32 %182, %183
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %179, align 8
  %186 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %177, i64 1
  %187 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %186, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %187, align 16
  %188 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %186, i32 0, i32 1
  %189 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %190 = load i32, i32* @IMAGE_SCN_CNT_CODE, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @IMAGE_SCN_MEM_EXECUTE, align 4
  %193 = or i32 %191, %192
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %188, align 8
  %195 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %186, i64 1
  %196 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %195, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %196, align 16
  %197 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %195, i32 0, i32 1
  %198 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %199 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @IMAGE_SCN_MEM_WRITE, align 4
  %202 = or i32 %200, %201
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %197, align 8
  %204 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %195, i64 1
  %205 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %204, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %205, align 16
  %206 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %204, i32 0, i32 1
  %207 = load i32, i32* @IMAGE_SCN_MEM_READ, align 4
  %208 = load i32, i32* @IMAGE_SCN_CNT_INITIALIZED_DATA, align 4
  %209 = or i32 %207, %208
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %206, align 8
  %211 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %204, i64 1
  %212 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %211, i32 0, i32 0
  store i8* null, i8** %212, align 16
  %213 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %211, i32 0, i32 1
  store i64 0, i64* %213, align 8
  %214 = getelementptr inbounds [13 x %struct.pe_required_section_flags], [13 x %struct.pe_required_section_flags]* %12, i64 0, i64 0
  store %struct.pe_required_section_flags* %214, %struct.pe_required_section_flags** %13, align 8
  br label %215

215:                                              ; preds = %259, %72
  %216 = load %struct.pe_required_section_flags*, %struct.pe_required_section_flags** %13, align 8
  %217 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %262

220:                                              ; preds = %215
  %221 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %222 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.pe_required_section_flags*, %struct.pe_required_section_flags** %13, align 8
  %225 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @strcmp(i32 %223, i8* %226)
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %258

229:                                              ; preds = %220
  %230 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %231 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @strcmp(i32 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %229
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 @bfd_get_file_flags(i32* %236)
  %238 = load i32, i32* @WP_TEXT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %235, %229
  %242 = load i32, i32* @IMAGE_SCN_MEM_WRITE, align 4
  %243 = xor i32 %242, -1
  %244 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %245 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %241, %235
  %249 = load %struct.pe_required_section_flags*, %struct.pe_required_section_flags** %13, align 8
  %250 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %253 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = or i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 4
  br label %262

258:                                              ; preds = %220
  br label %259

259:                                              ; preds = %258
  %260 = load %struct.pe_required_section_flags*, %struct.pe_required_section_flags** %13, align 8
  %261 = getelementptr inbounds %struct.pe_required_section_flags, %struct.pe_required_section_flags* %260, i32 1
  store %struct.pe_required_section_flags* %261, %struct.pe_required_section_flags** %13, align 8
  br label %215

262:                                              ; preds = %248, %215
  %263 = load i32*, i32** %4, align 8
  %264 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %265 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @H_PUT_32(i32* %263, i32 %266, i32 %269)
  %271 = load i32*, i32** %4, align 8
  %272 = call %struct.TYPE_10__* @coff_data(i32* %271)
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %273, align 8
  %275 = icmp ne %struct.TYPE_7__* %274, null
  br i1 %275, label %276, label %317

276:                                              ; preds = %262
  %277 = load i32*, i32** %4, align 8
  %278 = call %struct.TYPE_10__* @coff_data(i32* %277)
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %317, label %284

284:                                              ; preds = %276
  %285 = load i32*, i32** %4, align 8
  %286 = call %struct.TYPE_10__* @coff_data(i32* %285)
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %317, label %292

292:                                              ; preds = %284
  %293 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %294 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = call i64 @strcmp(i32 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %317

298:                                              ; preds = %292
  %299 = load i32*, i32** %4, align 8
  %300 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %301 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = and i32 %302, 65535
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @H_PUT_16(i32* %299, i32 %303, i32 %306)
  %308 = load i32*, i32** %4, align 8
  %309 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %310 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = ashr i32 %311, 16
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @H_PUT_16(i32* %308, i32 %312, i32 %315)
  br label %380

317:                                              ; preds = %292, %284, %276, %262
  %318 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %319 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = icmp sle i32 %320, 65535
  br i1 %321, label %322, label %331

322:                                              ; preds = %317
  %323 = load i32*, i32** %4, align 8
  %324 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %325 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @H_PUT_16(i32* %323, i32 %326, i32 %329)
  br label %346

331:                                              ; preds = %317
  %332 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %333 = load i32*, i32** %4, align 8
  %334 = call i32 @bfd_get_filename(i32* %333)
  %335 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %336 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @_bfd_error_handler(i32 %332, i32 %334, i32 %337)
  %339 = load i32, i32* @bfd_error_file_truncated, align 4
  %340 = call i32 @bfd_set_error(i32 %339)
  %341 = load i32*, i32** %4, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @H_PUT_16(i32* %341, i32 65535, i32 %344)
  store i32 0, i32* %9, align 4
  br label %346

346:                                              ; preds = %331, %322
  %347 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %348 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = icmp slt i32 %349, 65535
  br i1 %350, label %351, label %360

351:                                              ; preds = %346
  %352 = load i32*, i32** %4, align 8
  %353 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %354 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @H_PUT_16(i32* %352, i32 %355, i32 %358)
  br label %379

360:                                              ; preds = %346
  %361 = load i32*, i32** %4, align 8
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @H_PUT_16(i32* %361, i32 65535, i32 %364)
  %366 = load i32, i32* @IMAGE_SCN_LNK_NRELOC_OVFL, align 4
  %367 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %368 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 4
  %371 = load i32*, i32** %4, align 8
  %372 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %373 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @H_PUT_32(i32* %371, i32 %374, i32 %377)
  br label %379

379:                                              ; preds = %360, %351
  br label %380

380:                                              ; preds = %379, %298
  %381 = load i32, i32* %9, align 4
  ret i32 %381
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_VADDR(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @pe_data(i32*) #1

declare dso_local i64 @bfd_pe_executable_p(i32*) #1

declare dso_local i32 @PUT_SCNHDR_SIZE(i32*, i64, i32) #1

declare dso_local i32 @PUT_SCNHDR_PADDR(i32*, i64, i32) #1

declare dso_local i32 @PUT_SCNHDR_SCNPTR(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_RELPTR(i32*, i32, i32) #1

declare dso_local i32 @PUT_SCNHDR_LNNOPTR(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @coff_data(i32*) #1

declare dso_local i32 @H_PUT_16(i32*, i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
