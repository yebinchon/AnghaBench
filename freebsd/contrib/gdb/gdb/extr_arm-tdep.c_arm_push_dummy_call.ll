; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_push_dummy_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.value = type { i32 }
%struct.stack_item = type { i64, i32 }
%struct.type = type { i32 }

@ARM_LR_REGNUM = common dso_local global i32 0, align 4
@ARM_A1_REGNUM = common dso_local global i32 0, align 4
@DEPRECATED_REGISTER_SIZE = common dso_local global i32 0, align 4
@arm_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"struct return in %s = 0x%s\0A\00", align 1
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@TYPE_CODE_FUNC = common dso_local global i64 0, align 8
@ARM_LAST_ARG_REGNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"arg %d in %s = 0x%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"arg %d @ sp + %d\0A\00", align 1
@ARM_SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.regcache*, i32, i32, %struct.value**, i32, i32, i32)* @arm_push_dummy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regcache*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.stack_item*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.type*, align 8
  %25 = alloca %struct.type*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.regcache* %2, %struct.regcache** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.value** %5, %struct.value*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store %struct.stack_item* null, %struct.stack_item** %22, align 8
  %31 = load %struct.regcache*, %struct.regcache** %12, align 8
  %32 = load i32, i32* @ARM_LR_REGNUM, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %31, i32 %32, i32 %33)
  store i32 0, i32* %21, align 4
  %35 = load i32, i32* @ARM_A1_REGNUM, align 4
  store i32 %35, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %36 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %37 = mul nsw i32 2, %36
  %38 = sub nsw i32 %37, 1
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %16, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %9
  %45 = load i64, i64* @arm_debug, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @gdb_stdlog, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call i32 @REGISTER_NAME(i32 %49)
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @paddr(i32 %51)
  %53 = call i32 (i32, i8*, i32, i32, ...) @fprintf_unfiltered(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %47, %44
  %55 = load %struct.regcache*, %struct.regcache** %12, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  br label %61

61:                                               ; preds = %54, %9
  store i32 0, i32* %19, align 4
  br label %62

62:                                               ; preds = %178, %61
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %181

66:                                               ; preds = %62
  %67 = load %struct.value**, %struct.value*** %15, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.value*, %struct.value** %67, i64 %69
  %71 = load %struct.value*, %struct.value** %70, align 8
  %72 = call i32 @VALUE_TYPE(%struct.value* %71)
  %73 = call %struct.type* @check_typedef(i32 %72)
  store %struct.type* %73, %struct.type** %24, align 8
  %74 = load %struct.type*, %struct.type** %24, align 8
  %75 = call i32 @TYPE_LENGTH(%struct.type* %74)
  store i32 %75, i32* %23, align 4
  %76 = load %struct.type*, %struct.type** %24, align 8
  %77 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %76)
  store %struct.type* %77, %struct.type** %25, align 8
  %78 = load %struct.type*, %struct.type** %24, align 8
  %79 = call i64 @TYPE_CODE(%struct.type* %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %26, align 4
  %81 = load %struct.value**, %struct.value*** %15, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.value*, %struct.value** %81, i64 %83
  %85 = load %struct.value*, %struct.value** %84, align 8
  %86 = call i8* @VALUE_CONTENTS(%struct.value* %85)
  store i8* %86, i8** %27, align 8
  %87 = load i32, i32* @TYPE_CODE_PTR, align 4
  %88 = load i32, i32* %26, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %66
  %91 = load %struct.type*, %struct.type** %25, align 8
  %92 = icmp ne %struct.type* %91, null
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  %94 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %95 = load %struct.type*, %struct.type** %25, align 8
  %96 = call i64 @TYPE_CODE(%struct.type* %95)
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = load i8*, i8** %27, align 8
  %100 = load i32, i32* %23, align 4
  %101 = call i32 @extract_unsigned_integer(i8* %99, i32 %100)
  store i32 %101, i32* %28, align 4
  %102 = load i32, i32* %28, align 4
  %103 = call i64 @arm_pc_is_thumb(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load i32, i32* %23, align 4
  %107 = call i8* @alloca(i32 %106)
  store i8* %107, i8** %27, align 8
  %108 = load i8*, i8** %27, align 8
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %28, align 4
  %111 = call i32 @MAKE_THUMB_ADDR(i32 %110)
  %112 = call i32 @store_unsigned_integer(i8* %108, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %105, %98
  br label %114

114:                                              ; preds = %113, %93, %90, %66
  br label %115

115:                                              ; preds = %169, %114
  %116 = load i32, i32* %23, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %177

118:                                              ; preds = %115
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %23, align 4
  br label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  store i32 %127, i32* %29, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* @ARM_LAST_ARG_REGNUM, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load i8*, i8** %27, align 8
  %133 = load i32, i32* %29, align 4
  %134 = call i32 @extract_unsigned_integer(i8* %132, i32 %133)
  store i32 %134, i32* %30, align 4
  %135 = load i64, i64* @arm_debug, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i32, i32* @gdb_stdlog, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = call i32 @REGISTER_NAME(i32 %140)
  %142 = load i32, i32* %30, align 4
  %143 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %144 = call i32 @phex(i32 %142, i32 %143)
  %145 = call i32 (i32, i8*, i32, i32, ...) @fprintf_unfiltered(i32 %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %137, %131
  %147 = load %struct.regcache*, %struct.regcache** %12, align 8
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %30, align 4
  %150 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %147, i32 %148, i32 %149)
  %151 = load i32, i32* %20, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %20, align 4
  br label %169

153:                                              ; preds = %126
  %154 = load i64, i64* @arm_debug, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* @gdb_stdlog, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %21, align 4
  %160 = call i32 (i32, i8*, i32, i32, ...) @fprintf_unfiltered(i32 %157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %153
  %162 = load %struct.stack_item*, %struct.stack_item** %22, align 8
  %163 = load i8*, i8** %27, align 8
  %164 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %165 = call %struct.stack_item* @push_stack_item(%struct.stack_item* %162, i8* %163, i32 %164)
  store %struct.stack_item* %165, %struct.stack_item** %22, align 8
  %166 = load i32, i32* @DEPRECATED_REGISTER_SIZE, align 4
  %167 = load i32, i32* %21, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %21, align 4
  br label %169

169:                                              ; preds = %161, %146
  %170 = load i32, i32* %29, align 4
  %171 = load i32, i32* %23, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %23, align 4
  %173 = load i32, i32* %29, align 4
  %174 = load i8*, i8** %27, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %27, align 8
  br label %115

177:                                              ; preds = %115
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %19, align 4
  br label %62

181:                                              ; preds = %62
  %182 = load i32, i32* %21, align 4
  %183 = and i32 %182, 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %16, align 4
  %187 = sub nsw i32 %186, 4
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %185, %181
  br label %189

189:                                              ; preds = %192, %188
  %190 = load %struct.stack_item*, %struct.stack_item** %22, align 8
  %191 = icmp ne %struct.stack_item* %190, null
  br i1 %191, label %192, label %210

192:                                              ; preds = %189
  %193 = load %struct.stack_item*, %struct.stack_item** %22, align 8
  %194 = getelementptr inbounds %struct.stack_item, %struct.stack_item* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 %197, %195
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %16, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.stack_item*, %struct.stack_item** %22, align 8
  %202 = getelementptr inbounds %struct.stack_item, %struct.stack_item* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.stack_item*, %struct.stack_item** %22, align 8
  %205 = getelementptr inbounds %struct.stack_item, %struct.stack_item* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @write_memory(i32 %200, i32 %203, i64 %206)
  %208 = load %struct.stack_item*, %struct.stack_item** %22, align 8
  %209 = call %struct.stack_item* @pop_stack_item(%struct.stack_item* %208)
  store %struct.stack_item* %209, %struct.stack_item** %22, align 8
  br label %189

210:                                              ; preds = %189
  %211 = load %struct.regcache*, %struct.regcache** %12, align 8
  %212 = load i32, i32* @ARM_SP_REGNUM, align 4
  %213 = load i32, i32* %16, align 4
  %214 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %211, i32 %212, i32 %213)
  %215 = load i32, i32* %16, align 4
  ret i32 %215
}

declare dso_local i32 @regcache_cooked_write_unsigned(%struct.regcache*, i32, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @REGISTER_NAME(i32) #1

declare dso_local i32 @paddr(i32) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i64 @arm_pc_is_thumb(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @MAKE_THUMB_ADDR(i32) #1

declare dso_local i32 @phex(i32, i32) #1

declare dso_local %struct.stack_item* @push_stack_item(%struct.stack_item*, i8*, i32) #1

declare dso_local i32 @write_memory(i32, i32, i64) #1

declare dso_local %struct.stack_item* @pop_stack_item(%struct.stack_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
