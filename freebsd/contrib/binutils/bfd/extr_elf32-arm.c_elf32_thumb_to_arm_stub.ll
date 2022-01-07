; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_thumb_to_arm_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_thumb_to_arm_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, i32*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@THUMB2ARM_GLUE_SECTION_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"%B(%s): warning: interworking not enabled.\0A  first occurrence: %B: thumb call to arm\00", align 1
@t2a1_bx_pc_insn = common dso_local global i64 0, align 8
@t2a2_noop_insn = common dso_local global i64 0, align 8
@t2a3_b_insn = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, i8*, i32*, i32*, %struct.TYPE_13__*, i32*, %struct.TYPE_13__*, i32, i32, i32, i8**)* @elf32_thumb_to_arm_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_thumb_to_arm_stub(%struct.bfd_link_info* %0, i8* %1, i32* %2, i32* %3, %struct.TYPE_13__* %4, i32* %5, %struct.TYPE_13__* %6, i32 %7, i32 %8, i32 %9, i8** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.bfd_link_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.elf_link_hash_entry*, align 8
  %29 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %17, align 8
  store i32* %5, i32** %18, align 8
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i8** %10, i8*** %23, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %24, align 8
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %13, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load i8**, i8*** %23, align 8
  %33 = call %struct.elf_link_hash_entry* @find_thumb_glue(%struct.bfd_link_info* %30, i8* %31, i8** %32)
  store %struct.elf_link_hash_entry* %33, %struct.elf_link_hash_entry** %28, align 8
  %34 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %35 = icmp eq %struct.elf_link_hash_entry* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %11
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %12, align 4
  br label %228

38:                                               ; preds = %11
  %39 = load %struct.bfd_link_info*, %struct.bfd_link_info** %13, align 8
  %40 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %39)
  store %struct.elf32_arm_link_hash_table* %40, %struct.elf32_arm_link_hash_table** %29, align 8
  %41 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %42 = icmp ne %struct.elf32_arm_link_hash_table* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @BFD_ASSERT(i32 %43)
  %45 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %46 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @BFD_ASSERT(i32 %49)
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %25, align 4
  %57 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %58 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @THUMB2ARM_GLUE_SECTION_NAME, align 4
  %61 = call %struct.TYPE_13__* @bfd_get_section_by_name(i32* %59, i32 %60)
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %24, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @BFD_ASSERT(i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @BFD_ASSERT(i32 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @BFD_ASSERT(i32 %76)
  %78 = load i32, i32* %25, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %170

81:                                               ; preds = %38
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %83 = icmp ne %struct.TYPE_13__* %82, null
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @INTERWORK_FLAG(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %89
  %96 = call i32 @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @_bfd_error_handler(i32 %96, i32* %99, i32* %100, i8* %101)
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %12, align 4
  br label %228

104:                                              ; preds = %89, %84, %81
  %105 = load i32, i32* %25, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %25, align 4
  %107 = load i32, i32* %25, align 4
  %108 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %28, align 8
  %109 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 4
  %113 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load i64, i64* @t2a1_bx_pc_insn, align 8
  %116 = trunc i64 %115 to i32
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %25, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @put_thumb_insn(%struct.elf32_arm_link_hash_table* %113, i32* %114, i32 %116, i32* %122)
  %124 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i64, i64* @t2a2_noop_insn, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = call i32 @put_thumb_insn(%struct.elf32_arm_link_hash_table* %124, i32* %125, i32 %127, i32* %134)
  %136 = load i32, i32* %22, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %25, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %141, %146
  %148 = add nsw i32 %147, 4
  %149 = add nsw i32 %148, 8
  %150 = sub nsw i32 %136, %149
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %27, align 8
  %152 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %153 = load i32*, i32** %16, align 8
  %154 = load i64, i64* @t2a3_b_insn, align 8
  %155 = trunc i64 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %27, align 8
  %158 = ashr i64 %157, 2
  %159 = and i64 %158, 16777215
  %160 = or i64 %156, %159
  %161 = trunc i64 %160 to i32
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %25, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = getelementptr inbounds i32, i32* %167, i64 4
  %169 = call i32 @put_arm_insn(%struct.elf32_arm_link_hash_table* %152, i32* %153, i32 %161, i32* %168)
  br label %170

170:                                              ; preds = %104, %38
  %171 = load i32, i32* %25, align 4
  %172 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %29, align 8
  %173 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sle i32 %171, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @BFD_ASSERT(i32 %176)
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %182, %185
  %187 = load i32, i32* %25, align 4
  %188 = add nsw i32 %186, %187
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %193, %196
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %197, %198
  %200 = sub nsw i32 %188, %199
  %201 = load i32, i32* %21, align 4
  %202 = sub nsw i32 %200, %201
  %203 = sub nsw i32 %202, 8
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %27, align 8
  %205 = load i32*, i32** %15, align 8
  %206 = load i32*, i32** %18, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = sub i64 0, %210
  %212 = getelementptr inbounds i32, i32* %206, i64 %211
  %213 = call i64 @bfd_get_32(i32* %205, i32* %212)
  store i64 %213, i64* %26, align 8
  %214 = load i32*, i32** %16, align 8
  %215 = load i64, i64* %26, align 8
  %216 = load i64, i64* %27, align 8
  %217 = call i64 @insert_thumb_branch(i64 %215, i64 %216)
  %218 = trunc i64 %217 to i32
  %219 = load i32*, i32** %18, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = sub i64 0, %223
  %225 = getelementptr inbounds i32, i32* %219, i64 %224
  %226 = call i32 @bfd_put_32(i32* %214, i32 %218, i32* %225)
  %227 = load i32, i32* @TRUE, align 4
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %170, %95, %36
  %229 = load i32, i32* %12, align 4
  ret i32 %229
}

declare dso_local %struct.elf_link_hash_entry* @find_thumb_glue(%struct.bfd_link_info*, i8*, i8**) #1

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_13__* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i32 @INTERWORK_FLAG(i32*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @put_thumb_insn(%struct.elf32_arm_link_hash_table*, i32*, i32, i32*) #1

declare dso_local i32 @put_arm_insn(%struct.elf32_arm_link_hash_table*, i32*, i32, i32*) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

declare dso_local i64 @insert_thumb_branch(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
