; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_finish_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_finish_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf64_x86_64_link_hash_table = type { i64, i64, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@elf64_x86_64_plt0_entry = common dso_local global i32 0, align 4
@PLT_ENTRY_SIZE = common dso_local global i32 0, align 4
@GOT_ENTRY_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @elf64_x86_64_finish_dynamic_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_x86_64_finish_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf64_x86_64_link_hash_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %13 = call %struct.elf64_x86_64_link_hash_table* @elf64_x86_64_hash_table(%struct.bfd_link_info* %12)
  store %struct.elf64_x86_64_link_hash_table* %13, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %14 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %15 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_16__* @bfd_get_section_by_name(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %7, align 8
  %20 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %21 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %386

25:                                               ; preds = %2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = icmp eq %struct.TYPE_16__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %30 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = icmp eq %struct.TYPE_16__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %25
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %28
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %8, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %9, align 8
  br label %48

48:                                               ; preds = %156, %35
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %52, label %159

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @bfd_elf64_swap_dyn_in(i32* %53, i32* %54, %struct.TYPE_17__* %10)
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %58 [
    i32 132, label %59
    i32 133, label %74
    i32 131, label %84
    i32 130, label %95
    i32 128, label %114
    i32 129, label %133
  ]

58:                                               ; preds = %52
  br label %156

59:                                               ; preds = %52
  %60 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %61 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %60, i32 0, i32 3
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %11, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %152

74:                                               ; preds = %52
  %75 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %76 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %75, i32 0, i32 5
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %152

84:                                               ; preds = %52
  %85 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %86 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %85, i32 0, i32 5
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %11, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %152

95:                                               ; preds = %52
  %96 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %97 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %96, i32 0, i32 5
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = icmp ne %struct.TYPE_14__* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %102 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %101, i32 0, i32 5
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %11, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %100, %95
  br label %152

114:                                              ; preds = %52
  %115 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %116 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %115, i32 0, i32 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %11, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %128 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %152

133:                                              ; preds = %52
  %134 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %135 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %134, i32 0, i32 2
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %11, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %147 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %145, %148
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %133, %114, %113, %84, %74, %59
  %153 = load i32*, i32** %3, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @bfd_elf64_swap_dyn_out(i32* %153, %struct.TYPE_17__* %10, i32* %154)
  br label %156

156:                                              ; preds = %152, %58
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %8, align 8
  br label %48

159:                                              ; preds = %48
  %160 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %161 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %160, i32 0, i32 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = icmp ne %struct.TYPE_16__* %162, null
  br i1 %163, label %164, label %385

164:                                              ; preds = %159
  %165 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %166 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %165, i32 0, i32 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %385

171:                                              ; preds = %164
  %172 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %173 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %172, i32 0, i32 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* @elf64_x86_64_plt0_entry, align 4
  %178 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %179 = call i32 @memcpy(i64 %176, i32 %177, i32 %178)
  %180 = load i32*, i32** %3, align 8
  %181 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %182 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %181, i32 0, i32 3
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %189 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %188, i32 0, i32 3
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %187, %192
  %194 = add nsw i64 %193, 8
  %195 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %196 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %195, i32 0, i32 4
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %194, %201
  %203 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %204 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %203, i32 0, i32 4
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %202, %207
  %209 = sub nsw i64 %208, 6
  %210 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %211 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %210, i32 0, i32 4
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 2
  %216 = call i32 @bfd_put_32(i32* %180, i64 %209, i64 %215)
  %217 = load i32*, i32** %3, align 8
  %218 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %219 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %218, i32 0, i32 3
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %226 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %225, i32 0, i32 3
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %224, %229
  %231 = add nsw i64 %230, 16
  %232 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %233 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %232, i32 0, i32 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %231, %238
  %240 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %241 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %240, i32 0, i32 4
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = sub nsw i64 %239, %244
  %246 = sub nsw i64 %245, 12
  %247 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %248 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %247, i32 0, i32 4
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 8
  %253 = call i32 @bfd_put_32(i32* %217, i64 %246, i64 %252)
  %254 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %255 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %256 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %255, i32 0, i32 4
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_19__* %259)
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  store i32 %254, i32* %262, align 4
  %263 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %264 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %384

267:                                              ; preds = %171
  %268 = load i32*, i32** %3, align 8
  %269 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %270 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %269, i32 0, i32 2
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %275 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %273, %276
  %278 = call i32 @bfd_put_64(i32* %268, i64 0, i64 %277)
  %279 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %280 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %279, i32 0, i32 4
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %285 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %283, %286
  %288 = load i32, i32* @elf64_x86_64_plt0_entry, align 4
  %289 = load i32, i32* @PLT_ENTRY_SIZE, align 4
  %290 = call i32 @memcpy(i64 %287, i32 %288, i32 %289)
  %291 = load i32*, i32** %3, align 8
  %292 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %293 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %292, i32 0, i32 3
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 4
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %300 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %299, i32 0, i32 3
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %298, %303
  %305 = add nsw i64 %304, 8
  %306 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %307 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %306, i32 0, i32 4
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 4
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = sub nsw i64 %305, %312
  %314 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %315 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %314, i32 0, i32 4
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %313, %318
  %320 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %321 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = sub nsw i64 %319, %322
  %324 = sub nsw i64 %323, 6
  %325 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %326 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %325, i32 0, i32 4
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %331 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %329, %332
  %334 = add nsw i64 %333, 2
  %335 = call i32 @bfd_put_32(i32* %291, i64 %324, i64 %334)
  %336 = load i32*, i32** %3, align 8
  %337 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %338 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %337, i32 0, i32 2
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 4
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %345 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %344, i32 0, i32 2
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %343, %348
  %350 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %351 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = add nsw i64 %349, %352
  %354 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %355 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %354, i32 0, i32 4
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = sub nsw i64 %353, %360
  %362 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %363 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %362, i32 0, i32 4
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = sub nsw i64 %361, %366
  %368 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %369 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = sub nsw i64 %367, %370
  %372 = sub nsw i64 %371, 12
  %373 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %374 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %373, i32 0, i32 4
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %379 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %377, %380
  %382 = add nsw i64 %381, 8
  %383 = call i32 @bfd_put_32(i32* %336, i64 %372, i64 %382)
  br label %384

384:                                              ; preds = %267, %171
  br label %385

385:                                              ; preds = %384, %164, %159
  br label %386

386:                                              ; preds = %385, %2
  %387 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %388 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %387, i32 0, i32 3
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %388, align 8
  %390 = icmp ne %struct.TYPE_16__* %389, null
  br i1 %390, label %391, label %458

391:                                              ; preds = %386
  %392 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %393 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %392, i32 0, i32 3
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = icmp sgt i64 %396, 0
  br i1 %397, label %398, label %448

398:                                              ; preds = %391
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %400 = icmp eq %struct.TYPE_16__* %399, null
  br i1 %400, label %401, label %409

401:                                              ; preds = %398
  %402 = load i32*, i32** %3, align 8
  %403 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %404 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %403, i32 0, i32 3
  %405 = load %struct.TYPE_16__*, %struct.TYPE_16__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = call i32 @bfd_put_64(i32* %402, i64 0, i64 %407)
  br label %426

409:                                              ; preds = %398
  %410 = load i32*, i32** %3, align 8
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 4
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = add nsw i64 %415, %418
  %420 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %421 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %420, i32 0, i32 3
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = call i32 @bfd_put_64(i32* %410, i64 %419, i64 %424)
  br label %426

426:                                              ; preds = %409, %401
  %427 = load i32*, i32** %3, align 8
  %428 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %429 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %428, i32 0, i32 3
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load i32, i32* @GOT_ENTRY_SIZE, align 4
  %434 = sext i32 %433 to i64
  %435 = add nsw i64 %432, %434
  %436 = call i32 @bfd_put_64(i32* %427, i64 0, i64 %435)
  %437 = load i32*, i32** %3, align 8
  %438 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %439 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %438, i32 0, i32 3
  %440 = load %struct.TYPE_16__*, %struct.TYPE_16__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i32, i32* @GOT_ENTRY_SIZE, align 4
  %444 = mul nsw i32 %443, 2
  %445 = sext i32 %444 to i64
  %446 = add nsw i64 %442, %445
  %447 = call i32 @bfd_put_64(i32* %437, i64 0, i64 %446)
  br label %448

448:                                              ; preds = %426, %391
  %449 = load i32, i32* @GOT_ENTRY_SIZE, align 4
  %450 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %451 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %450, i32 0, i32 3
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 4
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** %453, align 8
  %455 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_19__* %454)
  %456 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 0
  store i32 %449, i32* %457, align 4
  br label %458

458:                                              ; preds = %448, %386
  %459 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %460 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %459, i32 0, i32 2
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %460, align 8
  %462 = icmp ne %struct.TYPE_16__* %461, null
  br i1 %462, label %463, label %480

463:                                              ; preds = %458
  %464 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %465 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %464, i32 0, i32 2
  %466 = load %struct.TYPE_16__*, %struct.TYPE_16__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = icmp sgt i64 %468, 0
  br i1 %469, label %470, label %480

470:                                              ; preds = %463
  %471 = load i32, i32* @GOT_ENTRY_SIZE, align 4
  %472 = load %struct.elf64_x86_64_link_hash_table*, %struct.elf64_x86_64_link_hash_table** %5, align 8
  %473 = getelementptr inbounds %struct.elf64_x86_64_link_hash_table, %struct.elf64_x86_64_link_hash_table* %472, i32 0, i32 2
  %474 = load %struct.TYPE_16__*, %struct.TYPE_16__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i32 0, i32 4
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %475, align 8
  %477 = call %struct.TYPE_18__* @elf_section_data(%struct.TYPE_19__* %476)
  %478 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 0
  store i32 %471, i32* %479, align 4
  br label %480

480:                                              ; preds = %470, %463, %458
  %481 = load i32, i32* @TRUE, align 4
  ret i32 %481
}

declare dso_local %struct.elf64_x86_64_link_hash_table* @elf64_x86_64_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_16__* @bfd_get_section_by_name(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_elf64_swap_dyn_in(i32*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @bfd_elf64_swap_dyn_out(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i64) #1

declare dso_local %struct.TYPE_18__* @elf_section_data(%struct.TYPE_19__*) #1

declare dso_local i32 @bfd_put_64(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
