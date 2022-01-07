; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_do_get_mempolicy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_do_get_mempolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.mm_struct*, %struct.mempolicy* }
%struct.mm_struct = type { i32 }
%struct.mempolicy = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vm_area_struct = type { %struct.mempolicy*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mempolicy* (%struct.vm_area_struct*, i64)* }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@MPOL_F_NODE = common dso_local global i64 0, align 8
@MPOL_F_ADDR = common dso_local global i64 0, align 8
@MPOL_F_MEMS_ALLOWED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@cpuset_current_mems_allowed = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@default_policy = common dso_local global %struct.mempolicy zeroinitializer, align 4
@MPOL_INTERLEAVE = common dso_local global i32 0, align 4
@MPOL_DEFAULT = common dso_local global i32 0, align 4
@MPOL_MODE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64, i64)* @do_get_mempolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_get_mempolicy(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca %struct.mempolicy*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  store %struct.mm_struct* %16, %struct.mm_struct** %11, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %12, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.mempolicy*, %struct.mempolicy** %18, align 8
  store %struct.mempolicy* %19, %struct.mempolicy** %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @MPOL_F_NODE, align 8
  %22 = load i64, i64* @MPOL_F_ADDR, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @MPOL_F_MEMS_ALLOWED, align 8
  %25 = or i64 %23, %24
  %26 = xor i64 %25, -1
  %27 = and i64 %20, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %223

32:                                               ; preds = %4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @MPOL_F_MEMS_ALLOWED, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @MPOL_F_NODE, align 8
  %40 = load i64, i64* @MPOL_F_ADDR, align 8
  %41 = or i64 %39, %40
  %42 = and i64 %38, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i64, i64* @EINVAL, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %223

47:                                               ; preds = %37
  %48 = load i32*, i32** %6, align 8
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %50 = call i32 @task_lock(%struct.TYPE_8__* %49)
  %51 = load i32, i32* @cpuset_current_mems_allowed, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %54 = call i32 @task_unlock(%struct.TYPE_8__* %53)
  store i64 0, i64* %5, align 8
  br label %223

55:                                               ; preds = %32
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @MPOL_F_ADDR, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %55
  %61 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 0
  %63 = call i32 @down_read(i32* %62)
  %64 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  %68 = call %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* %64, i64 %65, i64 %67)
  store %struct.vm_area_struct* %68, %struct.vm_area_struct** %12, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %70 = icmp ne %struct.vm_area_struct* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %60
  %72 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %73 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %72, i32 0, i32 0
  %74 = call i32 @up_read(i32* %73)
  %75 = load i64, i64* @EFAULT, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %5, align 8
  br label %223

77:                                               ; preds = %60
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.mempolicy* (%struct.vm_area_struct*, i64)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)** %86, align 8
  %88 = icmp ne %struct.mempolicy* (%struct.vm_area_struct*, i64)* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.mempolicy* (%struct.vm_area_struct*, i64)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)** %93, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call %struct.mempolicy* %94(%struct.vm_area_struct* %95, i64 %96)
  store %struct.mempolicy* %97, %struct.mempolicy** %13, align 8
  br label %102

98:                                               ; preds = %82, %77
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 0
  %101 = load %struct.mempolicy*, %struct.mempolicy** %100, align 8
  store %struct.mempolicy* %101, %struct.mempolicy** %13, align 8
  br label %102

102:                                              ; preds = %98, %89
  br label %110

103:                                              ; preds = %55
  %104 = load i64, i64* %8, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i64, i64* @EINVAL, align 8
  %108 = sub nsw i64 0, %107
  store i64 %108, i64* %5, align 8
  br label %223

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %102
  %111 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %112 = icmp ne %struct.mempolicy* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store %struct.mempolicy* @default_policy, %struct.mempolicy** %13, align 8
  br label %114

114:                                              ; preds = %113, %110
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* @MPOL_F_NODE, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %157

119:                                              ; preds = %114
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* @MPOL_F_ADDR, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @lookup_node(%struct.mm_struct* %125, i64 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %209

131:                                              ; preds = %124
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  br label %156

134:                                              ; preds = %119
  %135 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load %struct.mempolicy*, %struct.mempolicy** %137, align 8
  %139 = icmp eq %struct.mempolicy* %135, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %142 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MPOL_INTERLEAVE, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %6, align 8
  store i32 %149, i32* %150, align 4
  br label %155

151:                                              ; preds = %140, %134
  %152 = load i64, i64* @EINVAL, align 8
  %153 = sub nsw i64 0, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %10, align 4
  br label %209

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155, %131
  br label %177

157:                                              ; preds = %114
  %158 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %159 = icmp eq %struct.mempolicy* %158, @default_policy
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @MPOL_DEFAULT, align 4
  br label %166

162:                                              ; preds = %157
  %163 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %164 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  br label %166

166:                                              ; preds = %162, %160
  %167 = phi i32 [ %161, %160 ], [ %165, %162 ]
  %168 = load i32*, i32** %6, align 8
  store i32 %167, i32* %168, align 4
  %169 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %170 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @MPOL_MODE_FLAGS, align 4
  %173 = and i32 %171, %172
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %166, %156
  %178 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %179 = icmp ne %struct.vm_area_struct* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load %struct.mm_struct*, %struct.mm_struct** %182, align 8
  %184 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %183, i32 0, i32 0
  %185 = call i32 @up_read(i32* %184)
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %12, align 8
  br label %186

186:                                              ; preds = %180, %177
  store i32 0, i32* %10, align 4
  %187 = load i32*, i32** %7, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %208

189:                                              ; preds = %186
  %190 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %191 = call i64 @mpol_store_user_nodemask(%struct.mempolicy* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %195 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %7, align 8
  store i32 %197, i32* %198, align 4
  br label %207

199:                                              ; preds = %189
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %201 = call i32 @task_lock(%struct.TYPE_8__* %200)
  %202 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @get_policy_nodemask(%struct.mempolicy* %202, i32* %203)
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %206 = call i32 @task_unlock(%struct.TYPE_8__* %205)
  br label %207

207:                                              ; preds = %199, %193
  br label %208

208:                                              ; preds = %207, %186
  br label %209

209:                                              ; preds = %208, %151, %130
  %210 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %211 = call i32 @mpol_cond_put(%struct.mempolicy* %210)
  %212 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %213 = icmp ne %struct.vm_area_struct* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %217 = load %struct.mm_struct*, %struct.mm_struct** %216, align 8
  %218 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %217, i32 0, i32 0
  %219 = call i32 @up_read(i32* %218)
  br label %220

220:                                              ; preds = %214, %209
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  store i64 %222, i64* %5, align 8
  br label %223

223:                                              ; preds = %220, %106, %71, %47, %44, %29
  %224 = load i64, i64* %5, align 8
  ret i64 %224
}

declare dso_local i32 @task_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @lookup_node(%struct.mm_struct*, i64) #1

declare dso_local i64 @mpol_store_user_nodemask(%struct.mempolicy*) #1

declare dso_local i32 @get_policy_nodemask(%struct.mempolicy*, i32*) #1

declare dso_local i32 @mpol_cond_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
