; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_frob_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_frob_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mep_hi_fixup = type { %struct.TYPE_6__*, i32, %struct.mep_hi_fixup* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@mep_hi_fixup_list = common dso_local global %struct.mep_hi_fixup* null, align 8
@BFD_RELOC_HI16 = common dso_local global i64 0, align 8
@BFD_RELOC_LO16 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unmatched high relocation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mep_frob_file() #0 {
  %1 = alloca %struct.mep_hi_fixup*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** @mep_hi_fixup_list, align 8
  store %struct.mep_hi_fixup* %7, %struct.mep_hi_fixup** %1, align 8
  br label %8

8:                                                ; preds = %218, %0
  %9 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %10 = icmp ne %struct.mep_hi_fixup* %9, null
  br i1 %10, label %11, label %222

11:                                               ; preds = %8
  %12 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %13 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i64 @FX_OPINFO_R_TYPE(%struct.TYPE_6__* %14)
  %16 = load i64, i64* @BFD_RELOC_HI16, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %20 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i64 @FX_OPINFO_R_TYPE(%struct.TYPE_6__* %21)
  %23 = load i64, i64* @BFD_RELOC_LO16, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %18, %11
  %26 = phi i1 [ true, %11 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %30 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %25
  %36 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %37 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i64 @FX_OPINFO_R_TYPE(%struct.TYPE_6__* %40)
  %42 = load i64, i64* @BFD_RELOC_LO16, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %35
  %45 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %46 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %51 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %49, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %44
  %59 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %60 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %65 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %63, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %218

73:                                               ; preds = %58, %44, %35, %25
  %74 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %75 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.TYPE_5__* @seg_info(i32 %76)
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %214, %73
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %217

81:                                               ; preds = %78
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %4, align 8
  br label %85

85:                                               ; preds = %189, %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %193

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = call i64 @FX_OPINFO_R_TYPE(%struct.TYPE_6__* %89)
  %91 = load i64, i64* @BFD_RELOC_LO16, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %187

93:                                               ; preds = %88
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %98 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %96, %101
  br i1 %102, label %103, label %187

103:                                              ; preds = %93
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %108 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %106, %111
  br i1 %112, label %113, label %187

113:                                              ; preds = %103
  %114 = load i32, i32* %3, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %140, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = icmp eq %struct.TYPE_6__* %117, null
  br i1 %118, label %140, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = call i64 @FX_OPINFO_R_TYPE(%struct.TYPE_6__* %120)
  %122 = load i64, i64* @BFD_RELOC_HI16, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %140, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %124
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %187

140:                                              ; preds = %132, %124, %119, %116, %113
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store %struct.TYPE_6__** %142, %struct.TYPE_6__*** %6, align 8
  br label %143

143:                                              ; preds = %156, %140
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %147 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = icmp ne %struct.TYPE_6__* %145, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %143
  %151 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = icmp ne %struct.TYPE_6__* %152, null
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  br label %156

156:                                              ; preds = %150
  %157 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 4
  store %struct.TYPE_6__** %159, %struct.TYPE_6__*** %6, align 8
  br label %143

160:                                              ; preds = %143
  %161 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %162 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %165, %struct.TYPE_6__** %166, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %169 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %168, i32 0, i32 0
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 4
  store %struct.TYPE_6__* %167, %struct.TYPE_6__** %171, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = icmp eq %struct.TYPE_6__* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %160
  %175 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %176 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  store %struct.TYPE_6__* %177, %struct.TYPE_6__** %179, align 8
  br label %186

180:                                              ; preds = %160
  %181 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %182 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  store %struct.TYPE_6__* %183, %struct.TYPE_6__** %185, align 8
  br label %186

186:                                              ; preds = %180, %174
  br label %193

187:                                              ; preds = %132, %103, %93, %88
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %188, %struct.TYPE_6__** %5, align 8
  br label %189

189:                                              ; preds = %187
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  store %struct.TYPE_6__* %192, %struct.TYPE_6__** %4, align 8
  br label %85

193:                                              ; preds = %186, %85
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = icmp ne %struct.TYPE_6__* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %217

197:                                              ; preds = %193
  %198 = load i32, i32* %3, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %213

200:                                              ; preds = %197
  %201 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %202 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %207 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %206, i32 0, i32 0
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %212 = call i32 @as_warn_where(i32 %205, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %200, %197
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %3, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %3, align 4
  br label %78

217:                                              ; preds = %196, %78
  br label %218

218:                                              ; preds = %217, %72
  %219 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %1, align 8
  %220 = getelementptr inbounds %struct.mep_hi_fixup, %struct.mep_hi_fixup* %219, i32 0, i32 2
  %221 = load %struct.mep_hi_fixup*, %struct.mep_hi_fixup** %220, align 8
  store %struct.mep_hi_fixup* %221, %struct.mep_hi_fixup** %1, align 8
  br label %8

222:                                              ; preds = %8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @FX_OPINFO_R_TYPE(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @seg_info(i32) #1

declare dso_local i32 @as_warn_where(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
