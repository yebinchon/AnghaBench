; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_bfd_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_bfd_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.external_PEI_IMAGE_hdr = type { %struct.external_PEI_IMAGE_hdr*, %struct.external_PEI_IMAGE_hdr*, i32 }
%struct.external_PEI_DOS_hdr = type { %struct.external_PEI_DOS_hdr*, %struct.external_PEI_DOS_hdr*, i32 }
%struct.TYPE_21__ = type { %struct.internal_extra_pe_aouthdr }
%struct.internal_extra_pe_aouthdr = type { i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i64 0, align 8
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i64 0, align 8
@IMAGE_SUBSYSTEM_EFI_APPLICATION = common dso_local global i64 0, align 8
@bfd_target_vector = common dso_local global %struct.TYPE_22__** null, align 8
@bfd_target_coff_flavour = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_23__*)* @pe_bfd_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @pe_bfd_object_p(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca [4 x %struct.external_PEI_IMAGE_hdr], align 16
  %5 = alloca %struct.external_PEI_DOS_hdr, align 8
  %6 = alloca %struct.external_PEI_IMAGE_hdr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.internal_extra_pe_aouthdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__**, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i64 @bfd_seek(%struct.TYPE_23__* %14, i32 0, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds [4 x %struct.external_PEI_IMAGE_hdr], [4 x %struct.external_PEI_IMAGE_hdr]* %4, i64 0, i64 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = call i32 @bfd_bread(%struct.external_PEI_IMAGE_hdr* %19, i32 4, %struct.TYPE_23__* %20)
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %18, %1
  %24 = call i64 (...) @bfd_get_error()
  %25 = load i64, i64* @bfd_error_system_call, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @bfd_error_wrong_format, align 4
  %29 = call i32 @bfd_set_error(i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %218

31:                                               ; preds = %18
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds [4 x %struct.external_PEI_IMAGE_hdr], [4 x %struct.external_PEI_IMAGE_hdr]* %4, i64 0, i64 0
  %34 = call i32 @H_GET_32(%struct.TYPE_23__* %32, %struct.external_PEI_IMAGE_hdr* %33)
  %35 = icmp eq i32 %34, -65536
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %38 = call %struct.TYPE_22__* @pe_ILF_object_p(%struct.TYPE_23__* %37)
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %2, align 8
  br label %218

39:                                               ; preds = %31
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = load i32, i32* @SEEK_SET, align 4
  %42 = call i64 @bfd_seek(%struct.TYPE_23__* %40, i32 0, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = bitcast %struct.external_PEI_DOS_hdr* %5 to %struct.external_PEI_IMAGE_hdr*
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %47 = call i32 @bfd_bread(%struct.external_PEI_IMAGE_hdr* %45, i32 24, %struct.TYPE_23__* %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 24
  br i1 %49, label %50, label %58

50:                                               ; preds = %44, %39
  %51 = call i64 (...) @bfd_get_error()
  %52 = load i64, i64* @bfd_error_system_call, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @bfd_error_wrong_format, align 4
  %56 = call i32 @bfd_set_error(i32 %55)
  br label %57

57:                                               ; preds = %54, %50
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %218

58:                                               ; preds = %44
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = getelementptr inbounds %struct.external_PEI_DOS_hdr, %struct.external_PEI_DOS_hdr* %5, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @H_GET_16(%struct.TYPE_23__* %59, i32 %61)
  %63 = load i64, i64* @DOSMAGIC, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @bfd_error_wrong_format, align 4
  %67 = call i32 @bfd_set_error(i32 %66)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %218

68:                                               ; preds = %58
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %70 = getelementptr inbounds %struct.external_PEI_DOS_hdr, %struct.external_PEI_DOS_hdr* %5, i32 0, i32 1
  %71 = load %struct.external_PEI_DOS_hdr*, %struct.external_PEI_DOS_hdr** %70, align 8
  %72 = bitcast %struct.external_PEI_DOS_hdr* %71 to %struct.external_PEI_IMAGE_hdr*
  %73 = call i32 @H_GET_32(%struct.TYPE_23__* %69, %struct.external_PEI_IMAGE_hdr* %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @SEEK_SET, align 4
  %77 = call i64 @bfd_seek(%struct.TYPE_23__* %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %68
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = call i32 @bfd_bread(%struct.external_PEI_IMAGE_hdr* %6, i32 24, %struct.TYPE_23__* %80)
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %82, 24
  br i1 %83, label %84, label %92

84:                                               ; preds = %79, %68
  %85 = call i64 (...) @bfd_get_error()
  %86 = load i64, i64* @bfd_error_system_call, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @bfd_error_wrong_format, align 4
  %90 = call i32 @bfd_set_error(i32 %89)
  br label %91

91:                                               ; preds = %88, %84
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %218

92:                                               ; preds = %79
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %94 = getelementptr inbounds %struct.external_PEI_IMAGE_hdr, %struct.external_PEI_IMAGE_hdr* %6, i32 0, i32 0
  %95 = load %struct.external_PEI_IMAGE_hdr*, %struct.external_PEI_IMAGE_hdr** %94, align 8
  %96 = call i32 @H_GET_32(%struct.TYPE_23__* %93, %struct.external_PEI_IMAGE_hdr* %95)
  %97 = icmp ne i32 %96, 17744
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @bfd_error_wrong_format, align 4
  %100 = call i32 @bfd_set_error(i32 %99)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %218

101:                                              ; preds = %92
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %104, 24
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @SEEK_SET, align 4
  %108 = call i64 @bfd_seek(%struct.TYPE_23__* %102, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = call i64 (...) @bfd_get_error()
  %112 = load i64, i64* @bfd_error_system_call, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @bfd_error_wrong_format, align 4
  %116 = call i32 @bfd_set_error(i32 %115)
  br label %117

117:                                              ; preds = %114, %110
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %218

118:                                              ; preds = %101
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %120 = call %struct.TYPE_22__* @coff_object_p(%struct.TYPE_23__* %119)
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %8, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %122 = icmp ne %struct.TYPE_22__* %121, null
  br i1 %122, label %123, label %216

123:                                              ; preds = %118
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %125 = call %struct.TYPE_21__* @pe_data(%struct.TYPE_23__* %124)
  store %struct.TYPE_21__* %125, %struct.TYPE_21__** %9, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  store %struct.internal_extra_pe_aouthdr* %127, %struct.internal_extra_pe_aouthdr** %10, align 8
  %128 = load %struct.internal_extra_pe_aouthdr*, %struct.internal_extra_pe_aouthdr** %10, align 8
  %129 = getelementptr inbounds %struct.internal_extra_pe_aouthdr, %struct.internal_extra_pe_aouthdr* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IMAGE_SUBSYSTEM_EFI_APPLICATION, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %11, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %135, align 8
  %137 = call i64 @bfd_target_efi_p(%struct.TYPE_22__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %123
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = call i32 @bfd_target_efi_arch(%struct.TYPE_22__* %142)
  %144 = call i32 @pe_arch(i32 %143)
  store i32 %144, i32* %12, align 4
  br label %151

145:                                              ; preds = %123
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = call i32 @bfd_target_pei_arch(%struct.TYPE_22__* %148)
  %150 = call i32 @pe_arch(i32 %149)
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @bfd_target_vector, align 8
  store %struct.TYPE_22__** %152, %struct.TYPE_22__*** %13, align 8
  br label %153

153:                                              ; preds = %212, %151
  %154 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %13, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %154, align 8
  %156 = icmp ne %struct.TYPE_22__* %155, null
  br i1 %156, label %157, label %215

157:                                              ; preds = %153
  %158 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %13, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %161 = icmp eq %struct.TYPE_22__* %159, %160
  br i1 %161, label %169, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %13, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @bfd_target_coff_flavour, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %162, %157
  br label %212

170:                                              ; preds = %162
  %171 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %13, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %171, align 8
  %173 = call i64 @bfd_target_efi_p(%struct.TYPE_22__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %13, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = call i32 @bfd_target_efi_arch(%struct.TYPE_22__* %177)
  %179 = call i32 @pe_arch(i32 %178)
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %212

183:                                              ; preds = %175
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* @bfd_error_wrong_format, align 4
  %188 = call i32 @bfd_set_error(i32 %187)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %218

189:                                              ; preds = %183
  br label %211

190:                                              ; preds = %170
  %191 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %13, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %191, align 8
  %193 = call i64 @bfd_target_pei_p(%struct.TYPE_22__* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %13, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %196, align 8
  %198 = call i32 @bfd_target_pei_arch(%struct.TYPE_22__* %197)
  %199 = call i32 @pe_arch(i32 %198)
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %212

203:                                              ; preds = %195
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* @bfd_error_wrong_format, align 4
  %208 = call i32 @bfd_set_error(i32 %207)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %218

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %190
  br label %211

211:                                              ; preds = %210, %189
  br label %212

212:                                              ; preds = %211, %202, %182, %169
  %213 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %213, i32 1
  store %struct.TYPE_22__** %214, %struct.TYPE_22__*** %13, align 8
  br label %153

215:                                              ; preds = %153
  br label %216

216:                                              ; preds = %215, %118
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %217, %struct.TYPE_22__** %2, align 8
  br label %218

218:                                              ; preds = %216, %206, %186, %117, %98, %91, %65, %57, %36, %30
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  ret %struct.TYPE_22__* %219
}

declare dso_local i64 @bfd_seek(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @bfd_bread(%struct.external_PEI_IMAGE_hdr*, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @H_GET_32(%struct.TYPE_23__*, %struct.external_PEI_IMAGE_hdr*) #1

declare dso_local %struct.TYPE_22__* @pe_ILF_object_p(%struct.TYPE_23__*) #1

declare dso_local i64 @H_GET_16(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @coff_object_p(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @pe_data(%struct.TYPE_23__*) #1

declare dso_local i64 @bfd_target_efi_p(%struct.TYPE_22__*) #1

declare dso_local i32 @pe_arch(i32) #1

declare dso_local i32 @bfd_target_efi_arch(%struct.TYPE_22__*) #1

declare dso_local i32 @bfd_target_pei_arch(%struct.TYPE_22__*) #1

declare dso_local i64 @bfd_target_pei_p(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
