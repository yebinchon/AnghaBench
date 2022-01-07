; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_adjust_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_adjust_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.elf_link_hash_entry = type { i64, i64, i32, %struct.TYPE_19__, i32, %struct.TYPE_27__, %struct.TYPE_22__, i64, i32, i32, i64, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, %struct.TYPE_29__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_30__*, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_22__ = type { i64, i8* }
%struct.TYPE_20__ = type { i32 }
%struct.elf32_arm_link_hash_entry = type { i64 }
%struct.elf32_arm_link_hash_table = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_21__ = type { i32* }

@STT_FUNC = common dso_local global i64 0, align 8
@STT_ARM_TFUNC = common dso_local global i64 0, align 8
@STV_DEFAULT = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"dynamic variable `%s' is zero size\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".dynbss\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, %struct.elf_link_hash_entry*)* @elf32_arm_adjust_dynamic_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_adjust_dynamic_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.elf32_arm_link_hash_entry*, align 8
  %9 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  %11 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %12 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %11)
  store %struct.elf32_arm_link_hash_table* %12, %struct.elf32_arm_link_hash_table** %9, align 8
  %13 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %14 = call %struct.TYPE_21__* @elf_hash_table(%struct.bfd_link_info* %13)
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %19
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %29 = icmp ne %struct.TYPE_26__* %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %24
  %31 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %32 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %37 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %42 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %40, %35, %30
  %47 = phi i1 [ false, %35 ], [ false, %30 ], [ %45, %40 ]
  br label %48

48:                                               ; preds = %46, %24, %19
  %49 = phi i1 [ true, %24 ], [ true, %19 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %48, %2
  %51 = phi i1 [ false, %2 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @BFD_ASSERT(i32 %52)
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %55 = bitcast %struct.elf_link_hash_entry* %54 to %struct.elf32_arm_link_hash_entry*
  store %struct.elf32_arm_link_hash_entry* %55, %struct.elf32_arm_link_hash_entry** %8, align 8
  %56 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %57 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @STT_FUNC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %72, label %61

61:                                               ; preds = %50
  %62 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %63 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STT_ARM_TFUNC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %69 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %67, %61, %50
  %73 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %74 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %72
  %79 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %80 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %81 = call i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info* %79, %struct.elf_link_hash_entry* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %85 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @ELF_ST_VISIBILITY(i32 %86)
  %88 = load i64, i64* @STV_DEFAULT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %92 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %90, %78, %72
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %99 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %100, align 8
  %101 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %102 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %104 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %103, i32 0, i32 7
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %97, %90, %83
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %3, align 4
  br label %247

107:                                              ; preds = %67
  %108 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %109 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %110, align 8
  %111 = load %struct.elf32_arm_link_hash_entry*, %struct.elf32_arm_link_hash_entry** %8, align 8
  %112 = getelementptr inbounds %struct.elf32_arm_link_hash_entry, %struct.elf32_arm_link_hash_entry* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %107
  %114 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %115 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %116, align 8
  %118 = icmp ne %struct.TYPE_26__* %117, null
  br i1 %118, label %119, label %172

119:                                              ; preds = %113
  %120 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %121 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @bfd_link_hash_defined, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %139, label %129

129:                                              ; preds = %119
  %130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %131 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @bfd_link_hash_defweak, align 8
  %138 = icmp eq i64 %136, %137
  br label %139

139:                                              ; preds = %129, %119
  %140 = phi i1 [ true, %119 ], [ %138, %129 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @BFD_ASSERT(i32 %141)
  %143 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %144 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %150, align 8
  %152 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %153 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  store %struct.TYPE_30__* %151, %struct.TYPE_30__** %156, align 8
  %157 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %158 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %167 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  store i32 %165, i32* %170, align 8
  %171 = load i32, i32* @TRUE, align 4
  store i32 %171, i32* %3, align 4
  br label %247

172:                                              ; preds = %113
  %173 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %174 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* @TRUE, align 4
  store i32 %178, i32* %3, align 4
  br label %247

179:                                              ; preds = %172
  %180 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %181 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %179
  %185 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %9, align 8
  %186 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184, %179
  %191 = load i32, i32* @TRUE, align 4
  store i32 %191, i32* %3, align 4
  br label %247

192:                                              ; preds = %184
  %193 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %194 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %199 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %200 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @_bfd_error_handler(i32 %198, i32 %203)
  %205 = load i32, i32* @TRUE, align 4
  store i32 %205, i32* %3, align 4
  br label %247

206:                                              ; preds = %192
  %207 = load i32*, i32** %6, align 8
  %208 = call %struct.TYPE_20__* @bfd_get_section_by_name(i32* %207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_20__* %208, %struct.TYPE_20__** %7, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %210 = icmp ne %struct.TYPE_20__* %209, null
  %211 = zext i1 %210 to i32
  %212 = call i32 @BFD_ASSERT(i32 %211)
  %213 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %214 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @SEC_ALLOC, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %206
  %225 = load i32*, i32** %6, align 8
  %226 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %9, align 8
  %227 = call i8* @RELOC_SECTION(%struct.elf32_arm_link_hash_table* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %228 = call %struct.TYPE_20__* @bfd_get_section_by_name(i32* %225, i8* %227)
  store %struct.TYPE_20__* %228, %struct.TYPE_20__** %10, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %230 = icmp ne %struct.TYPE_20__* %229, null
  %231 = zext i1 %230 to i32
  %232 = call i32 @BFD_ASSERT(i32 %231)
  %233 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %9, align 8
  %234 = call i64 @RELOC_SIZE(%struct.elf32_arm_link_hash_table* %233)
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %234
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 4
  %241 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %242 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %241, i32 0, i32 2
  store i32 1, i32* %242, align 8
  br label %243

243:                                              ; preds = %224, %206
  %244 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %246 = call i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry* %244, %struct.TYPE_20__* %245)
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %243, %197, %190, %177, %139, %105
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_21__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @SYMBOL_CALLS_LOCAL(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @ELF_ST_VISIBILITY(i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_20__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i8* @RELOC_SECTION(%struct.elf32_arm_link_hash_table*, i8*) #1

declare dso_local i64 @RELOC_SIZE(%struct.elf32_arm_link_hash_table*) #1

declare dso_local i32 @_bfd_elf_adjust_dynamic_copy(%struct.elf_link_hash_entry*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
