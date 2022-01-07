; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_frob_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_frob_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_hi_fixup = type { %struct.TYPE_6__*, i32, %struct.mips_hi_fixup* }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@mips_hi_fixup_list = common dso_local global %struct.mips_hi_fixup* null, align 8
@BFD_RELOC_MIPS_GOT16 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@BFD_RELOC_LO16 = common dso_local global i64 0, align 8
@BFD_RELOC_MIPS16_LO16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_frob_file() #0 {
  %1 = alloca %struct.mips_hi_fixup*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** @mips_hi_fixup_list, align 8
  store %struct.mips_hi_fixup* %7, %struct.mips_hi_fixup** %1, align 8
  br label %8

8:                                                ; preds = %188, %0
  %9 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %10 = icmp ne %struct.mips_hi_fixup* %9, null
  br i1 %10, label %11, label %192

11:                                               ; preds = %8
  %12 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %13 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @reloc_needs_lo_p(i64 %16)
  %18 = call i32 @assert(i64 %17)
  %19 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %20 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BFD_RELOC_MIPS_GOT16, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %11
  %27 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %28 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %33 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pic_need_relax(i64 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %188

38:                                               ; preds = %26, %11
  %39 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %40 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i64 @fixup_has_matching_lo_p(%struct.TYPE_6__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %188

45:                                               ; preds = %38
  %46 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %47 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_5__* @seg_info(i32 %48)
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %5, align 8
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store %struct.TYPE_6__** %52, %struct.TYPE_6__*** %6, align 8
  br label %53

53:                                               ; preds = %145, %45
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %149

57:                                               ; preds = %53
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %61 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = icmp eq %struct.TYPE_6__* %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %65, %struct.TYPE_6__*** %4, align 8
  br label %66

66:                                               ; preds = %64, %57
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BFD_RELOC_LO16, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BFD_RELOC_MIPS16_LO16, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %130

80:                                               ; preds = %73, %66
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %86 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %84, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %80
  %92 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %97 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %95, %100
  br i1 %101, label %102, label %130

102:                                              ; preds = %91
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %104 = icmp eq %struct.TYPE_6__** %103, null
  br i1 %104, label %128, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %109, %113
  br i1 %114, label %128, label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %122, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118, %105, %102
  %129 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %129, %struct.TYPE_6__*** %5, align 8
  br label %130

130:                                              ; preds = %128, %118, %115, %91, %80, %73
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @reloc_needs_lo_p(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = call i64 @fixup_has_matching_lo_p(%struct.TYPE_6__* %139)
  %141 = icmp ne i64 %140, 0
  br label %142

142:                                              ; preds = %137, %130
  %143 = phi i1 [ false, %130 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  store %struct.TYPE_6__** %148, %struct.TYPE_6__*** %6, align 8
  br label %53

149:                                              ; preds = %53
  %150 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %151 = icmp ne %struct.TYPE_6__** %150, null
  br i1 %151, label %152, label %187

152:                                              ; preds = %149
  %153 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %158 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i64 %156, i64* %160, align 8
  %161 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %162 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = icmp ne %struct.TYPE_6__* %165, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %152
  %170 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %171 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %174, %struct.TYPE_6__** %175, align 8
  %176 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %179 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %178, i32 0, i32 0
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  store %struct.TYPE_6__* %177, %struct.TYPE_6__** %181, align 8
  %182 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %183 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %182, i32 0, i32 0
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %184, %struct.TYPE_6__** %185, align 8
  br label %186

186:                                              ; preds = %169, %152
  br label %187

187:                                              ; preds = %186, %149
  br label %188

188:                                              ; preds = %187, %44, %37
  %189 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %1, align 8
  %190 = getelementptr inbounds %struct.mips_hi_fixup, %struct.mips_hi_fixup* %189, i32 0, i32 2
  %191 = load %struct.mips_hi_fixup*, %struct.mips_hi_fixup** %190, align 8
  store %struct.mips_hi_fixup* %191, %struct.mips_hi_fixup** %1, align 8
  br label %8

192:                                              ; preds = %8
  ret void
}

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @reloc_needs_lo_p(i64) #1

declare dso_local i32 @pic_need_relax(i64, i32) #1

declare dso_local i64 @fixup_has_matching_lo_p(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @seg_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
