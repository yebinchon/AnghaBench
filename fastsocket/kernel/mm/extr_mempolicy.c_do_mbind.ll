; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_do_mbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_do_mbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.mempolicy = type opaque

@current = common dso_local global %struct.TYPE_4__* null, align 8
@pagelist = common dso_local global i32 0, align 4
@MPOL_MF_STRICT = common dso_local global i64 0, align 8
@MPOL_MF_MOVE = common dso_local global i64 0, align 8
@MPOL_MF_MOVE_ALL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@MPOL_DEFAULT = common dso_local global i16 0, align 2
@PAGE_SIZE = common dso_local global i64 0, align 8
@MPOL_MF_DISCONTIG_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"mbind %lx-%lx mode:%d flags:%d nodes:%lx\0A\00", align 1
@scratch = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MPOL_MF_INVERT = common dso_local global i64 0, align 8
@new_vma_page = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i16, i16, i32*, i64)* @do_mbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_mbind(i64 %0, i64 %1, i16 zeroext %2, i16 zeroext %3, i32* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca %struct.mm_struct*, align 8
  %16 = alloca %struct.mempolicy*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.mm_struct*, %struct.mm_struct** %21, align 8
  store %struct.mm_struct* %22, %struct.mm_struct** %15, align 8
  %23 = load i32, i32* @pagelist, align 4
  %24 = call i32 @LIST_HEAD(i32 %23)
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @MPOL_MF_STRICT, align 8
  %27 = load i64, i64* @MPOL_MF_MOVE, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %30 = or i64 %28, %29
  %31 = xor i64 %30, -1
  %32 = and i64 %25, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %7, align 8
  br label %233

37:                                               ; preds = %6
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @CAP_SYS_NICE, align 4
  %44 = call i32 @capable(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @EPERM, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %7, align 8
  br label %233

49:                                               ; preds = %42, %37
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @PAGE_MASK, align 8
  %52 = xor i64 %51, -1
  %53 = and i64 %50, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %7, align 8
  br label %233

58:                                               ; preds = %49
  %59 = load i16, i16* %10, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @MPOL_DEFAULT, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i64, i64* @MPOL_MF_STRICT, align 8
  %66 = xor i64 %65, -1
  %67 = load i64, i64* %13, align 8
  %68 = and i64 %67, %66
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %64, %58
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = add i64 %70, %71
  %73 = sub i64 %72, 1
  %74 = load i64, i64* @PAGE_MASK, align 8
  %75 = and i64 %73, %74
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %76, %77
  store i64 %78, i64* %17, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i64, i64* @EINVAL, align 8
  %84 = sub nsw i64 0, %83
  store i64 %84, i64* %7, align 8
  br label %233

85:                                               ; preds = %69
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i64 0, i64* %7, align 8
  br label %233

90:                                               ; preds = %85
  %91 = load i16, i16* %10, align 2
  %92 = load i16, i16* %11, align 2
  %93 = load i32*, i32** %12, align 8
  %94 = call %struct.vm_area_struct* @mpol_new(i16 zeroext %91, i16 zeroext %92, i32* %93)
  %95 = bitcast %struct.vm_area_struct* %94 to %struct.mempolicy*
  store %struct.mempolicy* %95, %struct.mempolicy** %16, align 8
  %96 = load %struct.mempolicy*, %struct.mempolicy** %16, align 8
  %97 = bitcast %struct.mempolicy* %96 to %struct.vm_area_struct*
  %98 = call i64 @IS_ERR(%struct.vm_area_struct* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.mempolicy*, %struct.mempolicy** %16, align 8
  %102 = bitcast %struct.mempolicy* %101 to %struct.vm_area_struct*
  %103 = call i64 @PTR_ERR(%struct.vm_area_struct* %102)
  store i64 %103, i64* %7, align 8
  br label %233

104:                                              ; preds = %90
  %105 = load %struct.mempolicy*, %struct.mempolicy** %16, align 8
  %106 = icmp ne %struct.mempolicy* %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* @MPOL_MF_DISCONTIG_OK, align 8
  %109 = load i64, i64* %13, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %13, align 8
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %113, %114
  %116 = load i16, i16* %10, align 2
  %117 = load i16, i16* %11, align 2
  %118 = load i32*, i32** %12, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32* @nodes_addr(i32 %122)
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  br label %127

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126, %120
  %128 = phi i32 [ %125, %120 ], [ -1, %126 ]
  %129 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %112, i64 %115, i16 zeroext %116, i16 zeroext %117, i32 %128)
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* @MPOL_MF_MOVE, align 8
  %132 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %133 = or i64 %131, %132
  %134 = and i64 %130, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = call i32 (...) @migrate_prep()
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %227

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141, %127
  %143 = load i64, i64* @scratch, align 8
  %144 = call i32 @NODEMASK_SCRATCH(i64 %143)
  %145 = load i64, i64* @scratch, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %142
  %148 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %149 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %148, i32 0, i32 0
  %150 = call i32 @down_write(i32* %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %152 = call i32 @task_lock(%struct.TYPE_4__* %151)
  %153 = load %struct.mempolicy*, %struct.mempolicy** %16, align 8
  %154 = bitcast %struct.mempolicy* %153 to %struct.vm_area_struct*
  %155 = load i32*, i32** %12, align 8
  %156 = load i64, i64* @scratch, align 8
  %157 = call i32 @mpol_set_nodemask(%struct.vm_area_struct* %154, i32* %155, i64 %156)
  store i32 %157, i32* %18, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %159 = call i32 @task_unlock(%struct.TYPE_4__* %158)
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %147
  %163 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %164 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %163, i32 0, i32 0
  %165 = call i32 @up_write(i32* %164)
  br label %166

166:                                              ; preds = %162, %147
  br label %170

167:                                              ; preds = %142
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %18, align 4
  br label %170

170:                                              ; preds = %167, %166
  %171 = load i64, i64* @scratch, align 8
  %172 = call i32 @NODEMASK_SCRATCH_FREE(i64 %171)
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %227

176:                                              ; preds = %170
  %177 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* %17, align 8
  %180 = load i32*, i32** %12, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* @MPOL_MF_INVERT, align 8
  %183 = or i64 %181, %182
  %184 = call %struct.vm_area_struct* @check_range(%struct.mm_struct* %177, i64 %178, i64 %179, i32* %180, i64 %183, i32* @pagelist)
  store %struct.vm_area_struct* %184, %struct.vm_area_struct** %14, align 8
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %186 = call i64 @PTR_ERR(%struct.vm_area_struct* %185)
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %18, align 4
  %188 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %189 = call i64 @IS_ERR(%struct.vm_area_struct* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %221, label %191

191:                                              ; preds = %176
  store i32 0, i32* %19, align 4
  %192 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load i64, i64* %17, align 8
  %195 = load %struct.mempolicy*, %struct.mempolicy** %16, align 8
  %196 = bitcast %struct.mempolicy* %195 to %struct.vm_area_struct*
  %197 = call i32 @mbind_range(%struct.mm_struct* %192, i64 %193, i64 %194, %struct.vm_area_struct* %196)
  store i32 %197, i32* %18, align 4
  %198 = call i32 @list_empty(i32* @pagelist)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %191
  %201 = load i32, i32* @new_vma_page, align 4
  %202 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %203 = ptrtoint %struct.vm_area_struct* %202 to i64
  %204 = load i32, i32* @MIGRATE_SYNC, align 4
  %205 = call i32 @migrate_pages(i32* @pagelist, i32 %201, i64 %203, i32 0, i32 %204)
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %200, %191
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %19, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load i64, i64* %13, align 8
  %214 = load i64, i64* @MPOL_MF_STRICT, align 8
  %215 = and i64 %213, %214
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32, i32* @EIO, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %18, align 4
  br label %220

220:                                              ; preds = %217, %212, %209, %206
  br label %223

221:                                              ; preds = %176
  %222 = call i32 @putback_lru_pages(i32* @pagelist)
  br label %223

223:                                              ; preds = %221, %220
  %224 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %225 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %224, i32 0, i32 0
  %226 = call i32 @up_write(i32* %225)
  br label %227

227:                                              ; preds = %223, %175, %140
  %228 = load %struct.mempolicy*, %struct.mempolicy** %16, align 8
  %229 = bitcast %struct.mempolicy* %228 to %struct.vm_area_struct*
  %230 = call i32 @mpol_put(%struct.vm_area_struct* %229)
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %7, align 8
  br label %233

233:                                              ; preds = %227, %100, %89, %82, %55, %46, %34
  %234 = load i64, i64* %7, align 8
  ret i64 %234
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.vm_area_struct* @mpol_new(i16 zeroext, i16 zeroext, i32*) #1

declare dso_local i64 @IS_ERR(%struct.vm_area_struct*) #1

declare dso_local i64 @PTR_ERR(%struct.vm_area_struct*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32* @nodes_addr(i32) #1

declare dso_local i32 @migrate_prep(...) #1

declare dso_local i32 @NODEMASK_SCRATCH(i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @task_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @mpol_set_nodemask(%struct.vm_area_struct*, i32*, i64) #1

declare dso_local i32 @task_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @NODEMASK_SCRATCH_FREE(i64) #1

declare dso_local %struct.vm_area_struct* @check_range(%struct.mm_struct*, i64, i64, i32*, i64, i32*) #1

declare dso_local i32 @mbind_range(%struct.mm_struct*, i64, i64, %struct.vm_area_struct*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @migrate_pages(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @putback_lru_pages(i32*) #1

declare dso_local i32 @mpol_put(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
