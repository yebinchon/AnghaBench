; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_make_one_lib_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_make_one_lib_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_19__*, %struct.TYPE_18__**, %struct.TYPE_18__*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__**, i8*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__**, i8*, i32 }
%struct.TYPE_18__ = type { i64, i8*, %struct.TYPE_19__*, i8* }
%struct.TYPE_17__ = type { i8*, i32, i32, i32, i32, i32 }

@NSECS = common dso_local global i32 0, align 4
@TMP_STUB = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s%05d.o\00", align 1
@HOW_BFD_WRITE_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"bfd_open failed open stub file: %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Creating stub file: %s\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@HOW_BFD_ARCH = common dso_local global i32 0, align 4
@secdata = common dso_local global %struct.TYPE_16__* null, align 8
@BSF_LOCAL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BSF_GLOBAL = common dso_local global i8* null, align 8
@create_compat_implib = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"___imp\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"__imp_\00", align 1
@head_label = common dso_local global i8* null, align 8
@bfd_und_section = common dso_local global i32 0, align 4
@HOW_JTAB_SIZE = common dso_local global i32 0, align 4
@HOW_JTAB = common dso_local global i32 0, align 4
@HOW_JTAB_ROFF = common dso_local global i32 0, align 4
@machine = common dso_local global i64 0, align 8
@MPPC = common dso_local global i64 0, align 8
@BFD_RELOC_16_GOTOFF = common dso_local global i32 0, align 4
@MX86 = common dso_local global i64 0, align 8
@BFD_RELOC_32_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_32 = common dso_local global i32 0, align 4
@BFD_RELOC_RVA = common dso_local global i32 0, align 4
@no_idata5 = common dso_local global i64 0, align 8
@no_idata4 = common dso_local global i64 0, align 8
@HOW_BFD_READ_TARGET = common dso_local global i32 0, align 4
@BFD_RELOC_32_GOTOFF = common dso_local global i32 0, align 4
@C_THUMBEXTFUNC = common dso_local global i32 0, align 4
@EXTRA = common dso_local global i32 0, align 4
@F_INTERWORK = common dso_local global i32 0, align 4
@MARM_INTERWORK = common dso_local global i64 0, align 8
@MTHUMB = common dso_local global i64 0, align 8
@ppc_glue_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32)* @make_one_lib_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_one_lib_file(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__**, align 8
  %11 = alloca %struct.TYPE_18__**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_20__**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  %26 = load i32, i32* @NSECS, align 4
  %27 = add nsw i32 %26, 4
  %28 = add nsw i32 %27, 0
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca %struct.TYPE_18__*, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %33 = load i8*, i8** @TMP_STUB, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 10
  %36 = call i8* @xmalloc(i32 %35)
  store i8* %36, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** @TMP_STUB, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39)
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* @HOW_BFD_WRITE_TARGET, align 4
  %43 = call i32* @bfd_openw(i8* %41, i32 %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %2
  %47 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @fatal(i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %46, %2
  %51 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @inform(i32 %51, i8* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @bfd_object, align 4
  %56 = call i32 @bfd_set_format(i32* %54, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @HOW_BFD_ARCH, align 4
  %59 = call i32 @bfd_set_arch_mach(i32* %57, i32 %58, i32 0)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @bfd_applicable_section_flags(i32* %60)
  store i32 %61, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %158, %50
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @NSECS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %161

66:                                               ; preds = %62
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i64 %69
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %17, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 (...) @abort() #4
  unreachable

78:                                               ; preds = %66
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_19__* @bfd_make_section_old_way(i32* %79, i32 %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 5
  store %struct.TYPE_19__* %83, %struct.TYPE_19__** %85, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @bfd_set_section_flags(i32* %86, %struct.TYPE_19__* %89, i32 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bfd_set_section_alignment(i32* %96, %struct.TYPE_19__* %99, i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %110, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i8* @bfd_make_empty_symbol(i32* %111)
  %113 = bitcast i8* %112 to %struct.TYPE_18__*
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 7
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %115, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  store i8* %120, i8** %124, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  store %struct.TYPE_19__* %127, %struct.TYPE_19__** %131, align 8
  %132 = load i8*, i8** @BSF_LOCAL, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  store i8* %132, i8** %136, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 7
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %145
  store %struct.TYPE_18__* %143, %struct.TYPE_18__** %146, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %148
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 6
  store %struct.TYPE_18__** %149, %struct.TYPE_18__*** %151, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 3
  store i32 0, i32* %153, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 4
  store i32* null, i32** %155, align 8
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %78
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %62

161:                                              ; preds = %62
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %192, label %166

166:                                              ; preds = %161
  %167 = load i32*, i32** %5, align 8
  %168 = call i8* @bfd_make_empty_symbol(i32* %167)
  %169 = bitcast i8* %168 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %169, %struct.TYPE_18__** %6, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @make_imp_label(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %172)
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i64 128
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  store %struct.TYPE_19__* %179, %struct.TYPE_19__** %181, align 8
  %182 = load i8*, i8** @BSF_GLOBAL, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %16, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %190
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %191, align 8
  br label %192

192:                                              ; preds = %166, %161
  %193 = load i64, i64* @create_compat_implib, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %192
  %196 = load i32*, i32** %5, align 8
  %197 = call i8* @bfd_make_empty_symbol(i32* %196)
  %198 = bitcast i8* %197 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %198, %struct.TYPE_18__** %7, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i8* @make_imp_label(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %201)
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i64 133
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  store %struct.TYPE_19__* %208, %struct.TYPE_19__** %210, align 8
  %211 = load i8*, i8** @BSF_GLOBAL, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  store i64 0, i64* %215, align 8
  br label %216

216:                                              ; preds = %195, %192
  %217 = load i32*, i32** %5, align 8
  %218 = call i8* @bfd_make_empty_symbol(i32* %217)
  %219 = bitcast i8* %218 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %219, %struct.TYPE_18__** %8, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i8* @make_imp_label(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %222)
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i64 133
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 5
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  store %struct.TYPE_19__* %229, %struct.TYPE_19__** %231, align 8
  %232 = load i8*, i8** @BSF_GLOBAL, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  store i64 0, i64* %236, align 8
  %237 = load i32*, i32** %5, align 8
  %238 = call i8* @bfd_make_empty_symbol(i32* %237)
  %239 = bitcast i8* %238 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %239, %struct.TYPE_18__** %9, align 8
  %240 = load i8*, i8** @head_label, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 3
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 2
  store %struct.TYPE_19__* bitcast (i32* @bfd_und_section to %struct.TYPE_19__*), %struct.TYPE_19__** %244, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  store i8* null, i8** %246, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  store i64 0, i64* %248, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %250
  store %struct.TYPE_18__** %251, %struct.TYPE_18__*** %11, align 8
  %252 = load i64, i64* @create_compat_implib, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %216
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %16, align 4
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %258
  store %struct.TYPE_18__* %255, %struct.TYPE_18__** %259, align 8
  br label %260

260:                                              ; preds = %254, %216
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %262 = load i32, i32* %16, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %16, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %264
  store %struct.TYPE_18__* %261, %struct.TYPE_18__** %265, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %267
  store %struct.TYPE_18__** %268, %struct.TYPE_18__*** %10, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %16, align 4
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %272
  store %struct.TYPE_18__* %269, %struct.TYPE_18__** %273, align 8
  %274 = load i32, i32* %16, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %32, i64 %275
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %276, align 8
  store i32 0, i32* %4, align 4
  br label %277

277:                                              ; preds = %532, %260
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* @NSECS, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %535

281:                                              ; preds = %277
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %283 = load i32, i32* %4, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i64 %284
  store %struct.TYPE_16__* %285, %struct.TYPE_16__** %18, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 5
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %287, align 8
  store %struct.TYPE_19__* %288, %struct.TYPE_19__** %19, align 8
  %289 = load i32, i32* %4, align 4
  switch i32 %289, label %531 [
    i32 128, label %290
    i32 134, label %369
    i32 133, label %369
    i32 132, label %446
    i32 131, label %493
  ]

290:                                              ; preds = %281
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %368, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* @HOW_JTAB_SIZE, align 4
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 3
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* @HOW_JTAB_SIZE, align 4
  %300 = call i8* @xmalloc(i32 %299)
  %301 = bitcast i8* %300 to i32*
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 4
  store i32* %301, i32** %303, align 8
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 4
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* @HOW_JTAB, align 4
  %308 = load i32, i32* @HOW_JTAB_SIZE, align 4
  %309 = call i32 @memcpy(i32* %306, i32 %307, i32 %308)
  %310 = call i8* @xmalloc(i32 32)
  %311 = bitcast i8* %310 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %311, %struct.TYPE_20__** %20, align 8
  %312 = call i8* @xmalloc(i32 16)
  %313 = bitcast i8* %312 to %struct.TYPE_20__**
  store %struct.TYPE_20__** %313, %struct.TYPE_20__*** %21, align 8
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %315 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %21, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %315, i64 0
  store %struct.TYPE_20__* %314, %struct.TYPE_20__** %316, align 8
  %317 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %21, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %317, i64 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %318, align 8
  %319 = load i32, i32* @HOW_JTAB_ROFF, align 4
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 3
  store i32 0, i32* %323, align 8
  %324 = load i64, i64* @machine, align 8
  %325 = load i64, i64* @MPPC, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %336

327:                                              ; preds = %295
  %328 = load i32*, i32** %5, align 8
  %329 = load i32, i32* @BFD_RELOC_16_GOTOFF, align 4
  %330 = call i8* @bfd_reloc_type_lookup(i32* %328, i32 %329)
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 2
  store i8* %330, i8** %332, align 8
  %333 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 1
  store %struct.TYPE_18__** %333, %struct.TYPE_18__*** %335, align 8
  br label %362

336:                                              ; preds = %295
  %337 = load i64, i64* @machine, align 8
  %338 = load i64, i64* @MX86, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %349

340:                                              ; preds = %336
  %341 = load i32*, i32** %5, align 8
  %342 = load i32, i32* @BFD_RELOC_32_PCREL, align 4
  %343 = call i8* @bfd_reloc_type_lookup(i32* %341, i32 %342)
  %344 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 2
  store i8* %343, i8** %345, align 8
  %346 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 1
  store %struct.TYPE_18__** %346, %struct.TYPE_18__*** %348, align 8
  br label %361

349:                                              ; preds = %336
  %350 = load i32*, i32** %5, align 8
  %351 = load i32, i32* @BFD_RELOC_32, align 4
  %352 = call i8* @bfd_reloc_type_lookup(i32* %350, i32 %351)
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 2
  store i8* %352, i8** %354, align 8
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i64 133
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 6
  %358 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %357, align 8
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 1
  store %struct.TYPE_18__** %358, %struct.TYPE_18__*** %360, align 8
  br label %361

361:                                              ; preds = %349, %340
  br label %362

362:                                              ; preds = %361, %327
  %363 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %21, align 8
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 1
  store %struct.TYPE_20__** %363, %struct.TYPE_20__*** %365, align 8
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 0
  store i32 1, i32* %367, align 8
  br label %368

368:                                              ; preds = %362, %290
  br label %531

369:                                              ; preds = %281, %281
  %370 = call i8* @xmalloc(i32 4)
  %371 = bitcast i8* %370 to i32*
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 4
  store i32* %371, i32** %373, align 8
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 3
  store i32 4, i32* %375, align 4
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %408

380:                                              ; preds = %369
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 4
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 0
  store i32 %383, i32* %387, align 4
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = ashr i32 %390, 8
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 4
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 1
  store i32 %391, i32* %395, align 4
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 8
  %399 = ashr i32 %398, 16
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 4
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 2
  store i32 %399, i32* %403, align 4
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 4
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 3
  store i32 128, i32* %407, align 4
  br label %445

408:                                              ; preds = %369
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 0
  store i32 1, i32* %410, align 8
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 4
  %413 = load i32*, i32** %412, align 8
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @memset(i32* %413, i32 0, i32 %416)
  %418 = call i8* @xmalloc(i32 32)
  %419 = bitcast i8* %418 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %419, %struct.TYPE_20__** %20, align 8
  %420 = call i8* @xmalloc(i32 16)
  %421 = bitcast i8* %420 to %struct.TYPE_20__**
  store %struct.TYPE_20__** %421, %struct.TYPE_20__*** %21, align 8
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %423 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %21, align 8
  %424 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %423, i64 0
  store %struct.TYPE_20__* %422, %struct.TYPE_20__** %424, align 8
  %425 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %21, align 8
  %426 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %425, i64 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %426, align 8
  %427 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 0
  store i32 0, i32* %428, align 8
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 3
  store i32 0, i32* %430, align 8
  %431 = load i32*, i32** %5, align 8
  %432 = load i32, i32* @BFD_RELOC_RVA, align 4
  %433 = call i8* @bfd_reloc_type_lookup(i32* %431, i32 %432)
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %434, i32 0, i32 2
  store i8* %433, i8** %435, align 8
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i64 132
  %438 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %437, i32 0, i32 6
  %439 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %438, align 8
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 1
  store %struct.TYPE_18__** %439, %struct.TYPE_18__*** %441, align 8
  %442 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %21, align 8
  %443 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 1
  store %struct.TYPE_20__** %442, %struct.TYPE_20__*** %444, align 8
  br label %445

445:                                              ; preds = %408, %380
  br label %531

446:                                              ; preds = %281
  %447 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %492, label %451

451:                                              ; preds = %446
  %452 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  store i32 %454, i32* %22, align 4
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %456 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = call i8* @xlate(i32 %457)
  %459 = call i32 @strlen(i8* %458)
  %460 = add nsw i32 %459, 3
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 3
  store i32 %460, i32* %462, align 4
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 4
  %466 = call i8* @xmalloc(i32 %465)
  %467 = bitcast i8* %466 to i32*
  %468 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 4
  store i32* %467, i32** %469, align 8
  %470 = load i32, i32* %22, align 4
  %471 = and i32 %470, 255
  %472 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %473 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %472, i32 0, i32 4
  %474 = load i32*, i32** %473, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 0
  store i32 %471, i32* %475, align 4
  %476 = load i32, i32* %22, align 4
  %477 = ashr i32 %476, 8
  %478 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %478, i32 0, i32 4
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 1
  store i32 %477, i32* %481, align 4
  %482 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 4
  %484 = load i32*, i32** %483, align 8
  %485 = bitcast i32* %484 to i8*
  %486 = getelementptr inbounds i8, i8* %485, i64 2
  %487 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 8
  %490 = call i8* @xlate(i32 %489)
  %491 = call i32 @strcpy(i8* %486, i8* %490)
  br label %492

492:                                              ; preds = %451, %446
  br label %531

493:                                              ; preds = %281
  %494 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %495 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %494, i32 0, i32 3
  store i32 4, i32* %495, align 4
  %496 = call i8* @xmalloc(i32 4)
  %497 = bitcast i8* %496 to i32*
  %498 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %499 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %498, i32 0, i32 4
  store i32* %497, i32** %499, align 8
  %500 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %501 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %500, i32 0, i32 4
  %502 = load i32*, i32** %501, align 8
  %503 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @memset(i32* %502, i32 0, i32 %505)
  %507 = call i8* @xmalloc(i32 32)
  %508 = bitcast i8* %507 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %508, %struct.TYPE_20__** %20, align 8
  %509 = call i8* @xmalloc(i32 16)
  %510 = bitcast i8* %509 to %struct.TYPE_20__**
  store %struct.TYPE_20__** %510, %struct.TYPE_20__*** %21, align 8
  %511 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %512 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %21, align 8
  %513 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %512, i64 0
  store %struct.TYPE_20__* %511, %struct.TYPE_20__** %513, align 8
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %515 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %514, i32 0, i32 0
  store i32 0, i32* %515, align 8
  %516 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %517 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %516, i32 0, i32 3
  store i32 0, i32* %517, align 8
  %518 = load i32*, i32** %5, align 8
  %519 = load i32, i32* @BFD_RELOC_RVA, align 4
  %520 = call i8* @bfd_reloc_type_lookup(i32* %518, i32 %519)
  %521 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %522 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %521, i32 0, i32 2
  store i8* %520, i8** %522, align 8
  %523 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %10, align 8
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 1
  store %struct.TYPE_18__** %523, %struct.TYPE_18__*** %525, align 8
  %526 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %21, align 8
  %527 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %528 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %527, i32 0, i32 1
  store %struct.TYPE_20__** %526, %struct.TYPE_20__*** %528, align 8
  %529 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %530 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %529, i32 0, i32 0
  store i32 1, i32* %530, align 8
  br label %531

531:                                              ; preds = %281, %493, %492, %445, %368
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %4, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %4, align 4
  br label %277

535:                                              ; preds = %277
  store i32 0, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %536

536:                                              ; preds = %559, %535
  %537 = load i32, i32* %4, align 4
  %538 = load i32, i32* @NSECS, align 4
  %539 = icmp slt i32 %537, %538
  br i1 %539, label %540, label %562

540:                                              ; preds = %536
  %541 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %542 = load i32, i32* %4, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %541, i64 %543
  store %struct.TYPE_16__* %544, %struct.TYPE_16__** %24, align 8
  %545 = load i32*, i32** %5, align 8
  %546 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %547 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %546, i32 0, i32 5
  %548 = load %struct.TYPE_19__*, %struct.TYPE_19__** %547, align 8
  %549 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %550 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @bfd_set_section_size(i32* %545, %struct.TYPE_19__* %548, i32 %551)
  %553 = load i32*, i32** %5, align 8
  %554 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %555 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %554, i32 0, i32 5
  %556 = load %struct.TYPE_19__*, %struct.TYPE_19__** %555, align 8
  %557 = load i32, i32* %23, align 4
  %558 = call i32 @bfd_set_section_vma(i32* %553, %struct.TYPE_19__* %556, i32 %557)
  br label %559

559:                                              ; preds = %540
  %560 = load i32, i32* %4, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %4, align 4
  br label %536

562:                                              ; preds = %536
  store i32 0, i32* %4, align 4
  br label %563

563:                                              ; preds = %597, %562
  %564 = load i32, i32* %4, align 4
  %565 = load i32, i32* @NSECS, align 4
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %567, label %600

567:                                              ; preds = %563
  %568 = load %struct.TYPE_16__*, %struct.TYPE_16__** @secdata, align 8
  %569 = load i32, i32* %4, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %568, i64 %570
  store %struct.TYPE_16__* %571, %struct.TYPE_16__** %25, align 8
  %572 = load i32, i32* %4, align 4
  %573 = icmp eq i32 %572, 133
  br i1 %573, label %574, label %578

574:                                              ; preds = %567
  %575 = load i64, i64* @no_idata5, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %578

577:                                              ; preds = %574
  br label %597

578:                                              ; preds = %574, %567
  %579 = load i32, i32* %4, align 4
  %580 = icmp eq i32 %579, 134
  br i1 %580, label %581, label %585

581:                                              ; preds = %578
  %582 = load i64, i64* @no_idata4, align 8
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %585

584:                                              ; preds = %581
  br label %597

585:                                              ; preds = %581, %578
  %586 = load i32*, i32** %5, align 8
  %587 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %588 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %587, i32 0, i32 5
  %589 = load %struct.TYPE_19__*, %struct.TYPE_19__** %588, align 8
  %590 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %590, i32 0, i32 4
  %592 = load i32*, i32** %591, align 8
  %593 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %594 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %593, i32 0, i32 3
  %595 = load i32, i32* %594, align 4
  %596 = call i32 @bfd_set_section_contents(i32* %586, %struct.TYPE_19__* %589, i32* %592, i32 0, i32 %595)
  br label %597

597:                                              ; preds = %585, %584, %577
  %598 = load i32, i32* %4, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %4, align 4
  br label %563

600:                                              ; preds = %563
  %601 = load i32*, i32** %5, align 8
  %602 = load i32, i32* %16, align 4
  %603 = call i32 @bfd_set_symtab(i32* %601, %struct.TYPE_18__** %32, i32 %602)
  %604 = load i32*, i32** %5, align 8
  %605 = call i32 @bfd_close(i32* %604)
  %606 = load i8*, i8** %15, align 8
  %607 = load i32, i32* @HOW_BFD_READ_TARGET, align 4
  %608 = call i32* @bfd_openr(i8* %606, i32 %607)
  store i32* %608, i32** %5, align 8
  %609 = load i32*, i32** %5, align 8
  %610 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %610)
  ret i32* %609
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @xmalloc(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32* @bfd_openw(i8*, i32) #2

declare dso_local i32 @fatal(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @inform(i32, i8*) #2

declare dso_local i32 @bfd_set_format(i32*, i32) #2

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #2

declare dso_local i32 @bfd_applicable_section_flags(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local %struct.TYPE_19__* @bfd_make_section_old_way(i32*, i32) #2

declare dso_local i32 @bfd_set_section_flags(i32*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @bfd_set_section_alignment(i32*, %struct.TYPE_19__*, i32) #2

declare dso_local i8* @bfd_make_empty_symbol(i32*) #2

declare dso_local i8* @make_imp_label(i8*, i8*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i8* @bfd_reloc_type_lookup(i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i8* @xlate(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @bfd_set_section_size(i32*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @bfd_set_section_vma(i32*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_19__*, i32*, i32, i32) #2

declare dso_local i32 @bfd_set_symtab(i32*, %struct.TYPE_18__**, i32) #2

declare dso_local i32 @bfd_close(i32*) #2

declare dso_local i32* @bfd_openr(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
