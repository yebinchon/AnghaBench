; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_create_thumb_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_create_thumb_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bfd_link_info = type { i64 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32, i64, i64, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [85 x i8] c"%B(%s): warning: interworking not enabled.\0A  first occurrence: %B: arm call to thumb\00", align 1
@a2t1p_ldr_insn = common dso_local global i64 0, align 8
@a2t2p_add_pc_insn = common dso_local global i64 0, align 8
@a2t3p_bx_r12_insn = common dso_local global i64 0, align 8
@a2t1v5_ldr_insn = common dso_local global i64 0, align 8
@a2t2v5_func_addr_insn = common dso_local global i32 0, align 4
@a2t1_ldr_insn = common dso_local global i64 0, align 8
@a2t2_bx_r12_insn = common dso_local global i64 0, align 8
@a2t3_func_addr_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf_link_hash_entry* (%struct.bfd_link_info*, i8*, i32*, i32*, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i8**)* @elf32_arm_create_thumb_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf_link_hash_entry* @elf32_arm_create_thumb_stub(%struct.bfd_link_info* %0, i8* %1, i32* %2, i32* %3, %struct.TYPE_14__* %4, i32 %5, %struct.TYPE_14__* %6, i8** %7) #0 {
  %9 = alloca %struct.elf_link_hash_entry*, align 8
  %10 = alloca %struct.bfd_link_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.elf_link_hash_entry*, align 8
  %21 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %16, align 8
  store i8** %7, i8*** %17, align 8
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i8**, i8*** %17, align 8
  %25 = call %struct.elf_link_hash_entry* @find_arm_glue(%struct.bfd_link_info* %22, i8* %23, i8** %24)
  store %struct.elf_link_hash_entry* %25, %struct.elf_link_hash_entry** %20, align 8
  %26 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %27 = icmp eq %struct.elf_link_hash_entry* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %8
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %9, align 8
  br label %236

29:                                               ; preds = %8
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %31 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %30)
  store %struct.elf32_arm_link_hash_table* %31, %struct.elf32_arm_link_hash_table** %21, align 8
  %32 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %33 = icmp ne %struct.elf32_arm_link_hash_table* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @BFD_ASSERT(i32 %34)
  %36 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %37 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @BFD_ASSERT(i32 %40)
  %42 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %43 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %227

51:                                               ; preds = %29
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %53 = icmp ne %struct.TYPE_14__* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @INTERWORK_FLAG(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = call i32 @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @_bfd_error_handler(i32 %66, i32* %69, i32* %70, i8* %71)
  br label %73

73:                                               ; preds = %65, %59, %54, %51
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %78 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %83 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %73
  %87 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %88 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %94 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %160

97:                                               ; preds = %92, %86, %73
  %98 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = load i64, i64* @a2t1p_ldr_insn, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = call i32 @put_arm_insn(%struct.elf32_arm_link_hash_table* %98, i32* %99, i32 %101, i64 %107)
  %109 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i64, i64* @a2t2p_add_pc_insn, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = add nsw i64 %118, 4
  %120 = call i32 @put_arm_insn(%struct.elf32_arm_link_hash_table* %109, i32* %110, i32 %112, i64 %119)
  %121 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i64, i64* @a2t3p_bx_r12_insn, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = add nsw i64 %130, 8
  %132 = call i32 @put_arm_insn(%struct.elf32_arm_link_hash_table* %121, i32* %122, i32 %124, i64 %131)
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %136, %141
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %142, %143
  %145 = add nsw i32 %144, 12
  %146 = sub nsw i32 %133, %145
  %147 = or i32 %146, 1
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %19, align 8
  %149 = load i32*, i32** %13, align 8
  %150 = load i64, i64* %19, align 8
  %151 = trunc i64 %150 to i32
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = add nsw i64 %157, 12
  %159 = call i32 @bfd_put_32(i32* %149, i32 %151, i64 %158)
  br label %226

160:                                              ; preds = %92
  %161 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %162 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %160
  %166 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load i64, i64* @a2t1v5_ldr_insn, align 8
  %169 = trunc i64 %168 to i32
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = call i32 @put_arm_insn(%struct.elf32_arm_link_hash_table* %166, i32* %167, i32 %169, i64 %175)
  %177 = load i32*, i32** %13, align 8
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @a2t2v5_func_addr_insn, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %183, %185
  %187 = add nsw i64 %186, 4
  %188 = call i32 @bfd_put_32(i32* %177, i32 %180, i64 %187)
  br label %225

189:                                              ; preds = %160
  %190 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i64, i64* @a2t1_ldr_insn, align 8
  %193 = trunc i64 %192 to i32
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  %200 = call i32 @put_arm_insn(%struct.elf32_arm_link_hash_table* %190, i32* %191, i32 %193, i64 %199)
  %201 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %202 = load i32*, i32** %13, align 8
  %203 = load i64, i64* @a2t2_bx_r12_insn, align 8
  %204 = trunc i64 %203 to i32
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %18, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %207, %209
  %211 = add nsw i64 %210, 4
  %212 = call i32 @put_arm_insn(%struct.elf32_arm_link_hash_table* %201, i32* %202, i32 %204, i64 %211)
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* @a2t3_func_addr_insn, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* %18, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = add nsw i64 %222, 8
  %224 = call i32 @bfd_put_32(i32* %213, i32 %216, i64 %223)
  br label %225

225:                                              ; preds = %189, %165
  br label %226

226:                                              ; preds = %225, %97
  br label %227

227:                                              ; preds = %226, %29
  %228 = load i32, i32* %18, align 4
  %229 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %21, align 8
  %230 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp sle i32 %228, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @BFD_ASSERT(i32 %233)
  %235 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  store %struct.elf_link_hash_entry* %235, %struct.elf_link_hash_entry** %9, align 8
  br label %236

236:                                              ; preds = %227, %28
  %237 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %9, align 8
  ret %struct.elf_link_hash_entry* %237
}

declare dso_local %struct.elf_link_hash_entry* @find_arm_glue(%struct.bfd_link_info*, i8*, i8**) #1

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @INTERWORK_FLAG(i32*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @put_arm_insn(%struct.elf32_arm_link_hash_table*, i32*, i32, i64) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
